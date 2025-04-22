#tag Class
Protected Class clVehicle
	#tag Method, Flags = &h0
		Function CommonDescription() As String
		  if self.Description.Trim.Length > 0 then return self.Description.trim
		  
		  
		  var tmp as string  = self.Brand.trim
		  
		  if self.NumberPlate.Length > 0 then
		    tmp = tmp + if(tmp.Length>0," " , "") + self.NumberPlate
		    
		  elseif self.Model.Length > 0 then
		    tmp = tmp + if(tmp.Length>0," " , "") + self.NumberPlate
		    
		  else
		    
		  end if
		  
		  return tmp
		  
		  
		  
		End Function
	#tag EndMethod

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
		Function ID() As integer
		  Return self.internalID
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


	#tag Property, Flags = &h0
		Brand As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Description As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Engine As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FirstUse As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private internalID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Model As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NumberPlate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SubModel As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VehicleLabel As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VIN As String
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
			Name="Brand"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Engine"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Model"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberPlate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SubModel"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="VIN"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
