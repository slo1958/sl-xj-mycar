#tag Class
Protected Class clPreferenceGeneric
	#tag Method, Flags = &h0
		Sub Constructor(PreferenceFIleName as String)
		  self.prefFileName = PreferenceFIleName
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getDetailsDict() As Dictionary
		  return new Dictionary
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getJSON() As JSONItem
		  var parent as new JSONItem
		  
		  parent.Value("Preferences") = getDetailsDict
		  
		  Return Parent
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadFrom(SourceFolder as FolderItem)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveTo(DestinationFolder as FolderItem)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		prefFileName As String
	#tag EndProperty


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
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
