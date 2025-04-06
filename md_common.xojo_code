#tag Module
Protected Module md_common
	#tag Method, Flags = &h0
		Sub TestPref()
		  
		  var c1 as new clApplicationDataGeneric(app.kAppDataFolderName, app.kPreferenceFileName)
		  
		  
		  c1.SetPrefParam("mytest","is done" )
		  
		  
		  c1.SavePreferences(nil)
		  
		  c1 = nil
		  
		  var c2 as new clApplicationDataGeneric(app.kAppDataFolderName, app.kPreferenceFileName)
		  
		  c2.LoadPreferences(nil)
		  
		  return
		  
		End Sub
	#tag EndMethod


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
	#tag EndViewBehavior
End Module
#tag EndModule
