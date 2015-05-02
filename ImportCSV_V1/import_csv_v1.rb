class ImportCSV_V1

  def import(settingString,csvFileNamePath,csvRecordObjString)
    result=[]

    setting=settingString.split("\n");

    file=open(csvFileNamePath)
    text=file.readlines

    text.each do |line|

      lineData=line.split(",")

      #-----------------------------------------------------
      csvRecordObj = Object.const_get(csvRecordObjString).new
      # csvRecordObj = Object.const_get(csvRecordObjString.to_s).new
      # csvRecordObj = csvRecordObjString.new

      i=0
      for field in setting
        csvRecordObj.setValue(field,lineData[i])
        i=i+1
      end

      result.push(csvRecordObj)
      #-----------------------------------------------------
    end

    file.close


    return result
  end

end