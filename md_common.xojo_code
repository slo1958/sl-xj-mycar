#tag Module
Protected Module md_common
	#tag Method, Flags = &h0
		Function GetAppDataFolder(createIfMissing as Boolean) As FolderItem
		  var tmp as FolderItem = SpecialFolder.ApplicationData.Child(kAppDataFolderName)
		  
		  if not tmp.Exists and createIfMissing then
		    try
		      tmp.CreateFolder
		      
		    Catch
		      tmp = nil
		      
		    end try
		    
		    return tmp
		    
		  else
		    return tmp
		    
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getDBFile() As FolderItem
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getPreferenceFile(createIfMissing as Boolean) As FolderItem
		  
		  var tmpFolder as FolderItem = GetAppDataFolder(createIfMissing)
		  
		  if tmpFolder = nil then return nil
		  
		  if not tmpFolder.Exists then return nil
		  
		  var tmpFile as FolderItem = tmpFolder.Child(kConfigFile)
		  
		  if tmpFile.Exists then
		    Return tmpFile
		    
		  else
		    
		    if createIfMissing then
		      
		    else
		      return nil
		      
		    end if
		    
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getPreferenceJSON(c as clPreferenceGeneric) As String
		  
		  Return c.getJSON.ToString
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TestPreferenceAccess()
		  
		  //
		  var cp as new clPreferenceGeneric(kPreferenceFileName)
		  
		  var tmp1 as string  = 
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Untitled As Integer
	#tag EndProperty


	#tag Constant, Name = kAppDataFolderName, Type = String, Dynamic = False, Default = \"KverzuMyCarFolder", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDataFile, Type = String, Dynamic = False, Default = \"KverzuMyCarData", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPreferenceFileName, Type = String, Dynamic = False, Default = \"kverzuMyCarPreferences", Scope = Public
	#tag EndConstant


End Module
#tag EndModule
