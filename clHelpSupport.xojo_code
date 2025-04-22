#tag Class
Protected Class clHelpSupport
	#tag Method, Flags = &h0
		Shared Sub defineHelpSource(source as string)
		   
		  try
		    fullJSON =  new JSONItem(source)
		    
		  catch e as JSONException
		    
		    MessageBox(e.Message+ " at " + str(e.Offset) + " " + mid(source, e.Offset - 10, 20))
		    fullJSON = nil
		    
		  end try
		  
		  if fullJSON = nil then Return
		  
		  languages = new Dictionary
		  for i as integer = 0 to fullJSON.LastRowIndex
		    var subJSON as JSONItem = fullJSON.ValueAt(i)
		    
		    var lang as string = subJSON.Value("language")
		    var items as Variant = subJSON.value("texts")
		    
		    languages.Value(lang) = items
		    
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function getHelpInfo(helpKey as string) As string()
		  
		  var js1 as JSONItem = languages.value("")
		  
		  var v as variant = js1.Lookup(helpKey, "No help support for " + helpKey)
		  
		  var r() as string
		  
		  if v isa JSONItem then
		    r.Add JSONItem(v).ToString
		    
		  else
		    r.add( v.StringValue)
		    
		  end if
		  
		  return r
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Shared fullJSON As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Shared languages As Dictionary
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
	#tag EndViewBehavior
End Class
#tag EndClass
