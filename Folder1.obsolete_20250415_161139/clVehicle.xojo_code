#tag Class
Protected Class clVehicle
	#tag Method, Flags = &h0
		Shared Function FactoryFromJSON(j as JSONItem) As clVehicle
		  
		  
		  //var t as Introspection.TypeInfo = GetTypeInfo(clVehicle)
		  
		  var c as new clVehicle()
		  
		  genericInitFromJSON(c, j)
		  // 
		  // var t as Introspection.TypeInfo = Introspection.GetType(c)
		  // var defaultV as variant
		  // 
		  // for each p as Introspection.PropertyInfo in t.GetProperties
		  // if p.CanWrite then
		  // var n as String = p.Name
		  //  
		  // p.Value(c) = j.Lookup(n,defaultV)
		  // 
		  // end if
		  // 
		  // next
		  
		  return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function id() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function SerializeToJSON(c as clVehicle) As JSONItem
		  //  
		  // var t as Introspection.TypeInfo = GetTypeInfo(clEvent)
		  // 
		  // var j as new JSONItem
		  // 
		  // for each p as Introspection.PropertyInfo in t.GetProperties
		  // if p.CanRead then
		  // var n as String = p.Name
		  // 
		  // j.Value(n) = p.Value(c)
		  // 
		  // 
		  // end if
		  // 
		  // next
		  // 
		  // return j
		  
		  Return GenericSerializeToJSON(c)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private internal_id As Integer
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
