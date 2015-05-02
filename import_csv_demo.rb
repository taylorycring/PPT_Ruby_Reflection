require_relative  'ImportCSV_V1/import_csv_v1'
require_relative  'ImportCSV_V2/import_csv_v2'
require_relative 'customer_v1'
require_relative 'customer_v2'


#-----------------------------------------------------
# 思考    API使用範例  一個匯入CSV檔案的功能
#-----------------------------------------------------

# importCsv=ImportCSV_V1.new
#
# result=importCsv.import("./customer.txt")
#
# result.each do|customer|
#   print customer.name
#   print customer.tel
#   print customer.address
#   print "-------------"
# end


#-----------------------------------------------------
# 第一個版本  -- 利用 method_missing
#-----------------------------------------------------

# importCsv=ImportCSV_V1.new
#
# setting=File.read("./customer_importSetting.txt")
#
# #方式一
# # result=importCsv.import(setting,"./customer.txt","CustomerV1")
#
# #方式二
# # customerV1=CustomerV1.new;
# # result=importCsv.import(setting,"./customer.txt",customerV1.class)
#
# result.each do|customer|
#   puts customer.name
#   puts customer.tel
#   puts customer.address
#   puts "\n-------------"
# end




#-----------------------------------------------------
# 第二個版本  -- 動態產生Class, 動態設定Property
#-----------------------------------------------------
# importCsv=ImportCSV_V2.new
#
# setting=File.read("./customer_importSetting.txt")
#
# result=importCsv.import(setting,"./customer.txt","CustomerV2")
#
# result.each do|customer|
#   puts customer.name
#   puts customer.tel
#   puts customer.address
#   puts "\n-------------"
# end




#-----------------------------------------------------
# 第三個版本  -- Annotation
#-----------------------------------------------------
