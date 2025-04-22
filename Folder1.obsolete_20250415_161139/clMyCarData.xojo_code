#tag Class
Protected Class clMyCarData
	#tag Method, Flags = &h0
		Shared Function CompareDates(v1 as clEvent, v2 as clEvent) As integer
		  //
		  // This assumes the array is populated with non-Nil dates
		  //
		  
		  If v1.eventDate > v2.eventDate Then Return 1
		  If v1.eventDate < v2.eventDate Then Return -1
		  Return 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ComparesIDs(v1 as clEvent, v2 as clEvent) As integer
		  //
		  // This assumes the array is populated with non-Nil dates
		  //
		  
		  If v1.ID > v2.ID Then Return 1
		  If v1.ID < v2.ID Then Return -1
		  Return 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  
		  self.CommonCurrency = "EUR"
		  self.DistanceUnit = "Km"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FactoryFromJSON(j as JSONItem) As clMyCarData
		  
		  var c as new clMyCarData
		  
		  var jevents  as JSONItem = j.Lookup("events", nil)
		  
		  var jvehicles as JSONItem = j.Lookup("vehicles", nil)
		  
		  var defaultV as variant
		  
		  for i as integer = 0 to  jevents.LastRowIndex
		    var jm as JSONItem = jevents.ValueAt(i)
		    
		    if jm <> nil then c.events.Add(  clEvent.FactoryFromJSON(jm))
		    
		  next
		  
		  for i as integer = 0 to  jvehicles.LastRowIndex
		    var jm as JSONItem = jvehicles.ValueAt(i)
		    if jm <> nil then c.vehicles.Add(  clVehicle.FactoryFromJSON(jm))
		    
		  next
		  
		  return c
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function SerializeToJSON(c as clMyCarData) As JSONItem
		  
		  var jmaster as new JSONItem
		  
		  var jevents as new JSONItem
		  var jvehicles as new JSONItem
		  
		  
		  
		  for each cm as clEvent in c.events
		    jevents.Add( clEvent.SerializeToJSON(cm))
		    
		  next
		  
		  if c.events.Count = 0 then
		    jevents.add(nil)
		    
		  end if
		  
		  for each vm as clVehicle in c.vehicles
		    jvehicles.add(clVehicle.SerializeToJSON(vm))
		    
		  next
		  
		  if c.vehicles.Count = 0 then
		    jvehicles.add(nil)
		    
		  end if
		  
		  jmaster.Value("events") = jevents
		  jmaster.value("vehicles") = jvehicles
		  
		  return jmaster
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SortOnDate()
		  events.Sort(AddressOf clMyCarData.CompareDates)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SortOnID()
		  events.Sort(AddressOf clMyCarData.ComparesIDs)
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CommonCurrency As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DistanceUnit As string
	#tag EndProperty

	#tag Property, Flags = &h0
		events() As clEvent
	#tag EndProperty

	#tag Property, Flags = &h0
		vehicles() As clVehicle
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
