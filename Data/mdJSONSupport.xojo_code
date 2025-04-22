#tag Module
Protected Module mdJSONSupport
	#tag Method, Flags = &h0
		Sub genericInitFromJSON(c as object, j as JSONItem)
		  
		  
		  var t as Introspection.TypeInfo = Introspection.GetType(c)
		  var defaultV as variant
		  
		  for each p as Introspection.PropertyInfo in t.GetProperties
		    if p.CanWrite then
		      var n as String = p.Name
		      
		      p.Value(c) = j.Lookup(n,defaultV)
		      
		    end if
		    
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GenericSerializeToJSON(c as object) As JSONItem
		  
		  var t as Introspection.TypeInfo = Introspection.GetType(c)
		  
		  var j as new JSONItem
		  
		  for each p as Introspection.PropertyInfo in t.GetProperties
		    if p.CanRead then
		      var n as String = p.Name
		      
		      j.Value(n) = p.Value(c)
		      
		      
		    end if
		    
		  next
		  
		  return j
		End Function
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
