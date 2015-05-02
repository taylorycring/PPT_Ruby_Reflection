class ImportCSV_V2

  def import(settingString,csvFileNamePath,csvRecordObjString)
    result=[]

    setting=settingString.split("\n");

    file=open(csvFileNamePath)
    text=file.readlines

    text.each do |line|

      lineData=line.split(",")

      #-----------------------------------------------------
      csvRecordObj = Object.const_get(csvRecordObjString).new

      i=0
      for field in setting
        csvRecordObj.send("#{field}=",lineData[i])
        i=i+1
      end

      result.push(csvRecordObj)
      #-----------------------------------------------------
    end

    file.close


    return result
  end

end