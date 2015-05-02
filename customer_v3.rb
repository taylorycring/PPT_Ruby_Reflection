class CustomerV3
  [ImportSetting(Order=1, Validator = typeof(StringValidator(1,10)))]
  attr_accessor :name
  [ImportSetting(Order=2, Validator = typeof(TelValidator()))]
  attr_accessor :tel
  [ImportSetting(Order=3, Validator = typeof(StringValidator(1,50)))]
  attr_accessor :address
end