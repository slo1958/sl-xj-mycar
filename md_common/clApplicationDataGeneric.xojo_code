#tag Class
Protected Class clApplicationDataGeneric
	#tag Method, Flags = &h0
		Sub Constructor(ApplicationDattaFolderName as string, preferenceFIleName as String)
		  self.prefFileName = PreferenceFIleName
		  self.appDataFolderName = ApplicationDattaFolderName
		  
		  self.MainPrefDIctionary = new Dictionary
		  
		  self.MainPrefDIctionary.value("Update") = DateTime.Now.SQLDateTime
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetAppDataFolder(createIfMissing as Boolean) As FolderItem
		  
		  var tmp as FolderItem = SpecialFolder.ApplicationData.Child(self.appDataFolderName)
		  
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
		Function getPreferenceFile(createIfMissing as Boolean) As FolderItem
		  
		  var tmpFolder as FolderItem = GetAppDataFolder(createIfMissing)
		  
		  if tmpFolder = nil then return nil
		  
		  if not tmpFolder.Exists then return nil
		  
		  var tmpFile as FolderItem = tmpFolder.Child(prefFileName)
		  
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
		Function getPreferencesJSON() As JSONItem
		  var parent as new JSONItem
		  
		  parent.Value(kPreferencesJSONTag) = MainPrefDIctionary
		  
		  Return Parent
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadPreferences(SourceFolder as FolderItem)
		  var tmp as FolderItem = SourceFolder
		  
		  self.MainPrefDIctionary = new Dictionary
		  
		  if tmp = nil then tmp = GetAppDataFolder(True)
		  
		  if tmp =  nil then Return
		  
		  if not tmp.Exists then return
		  
		  tmp = tmp.Child(prefFileName)
		  
		  if not tmp.Exists then return
		  
		  var tin as TextInputStream = TextInputStream.Open(tmp)
		  
		  var json1 as JSONItem
		  
		  json1 = new JSONItem(tIn.ReadAll)
		  
		  tin.close
		  
		  var json2 as JSONItem = json1.Value(kPreferencesJSONTag)
		  
		  for each k as string in json2.Keys
		    var v as variant = json2.Value(k)
		    self.MainPrefDIctionary.value(k) = v
		    
		  next
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SavePreferences(DestinationFolder as FolderItem)
		  var tmp as FolderItem = DestinationFolder
		   
		  if tmp = nil then tmp = GetAppDataFolder(True)
		  
		  if tmp =  nil then
		    
		    Return
		  end if
		  
		  tmp = tmp.Child(prefFileName)
		  
		  var tout as TextOutputStream = TextOutputStream.Create(tmp)
		  
		  var json as JSONItem = self.getPreferencesJSON
		  
		  tout.Write(json.ToString)
		  
		  tout.Close
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPrefParam(prefParamreterName as String, prefParemeterValue as String)
		  
		  self.MainPrefDIctionary.Value(prefParamreterName) = prefParemeterValue
		  
		  return 
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected appDataFolderName As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected MainPrefDIctionary As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected prefFileName As String
	#tag EndProperty


	#tag Constant, Name = kPreferencesJSONTag, Type = String, Dynamic = False, Default = \"Preferences", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="prefFileName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
