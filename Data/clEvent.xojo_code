#tag Class
Protected Class clEvent
	#tag Method, Flags = &h0
		Sub Constructor(eventID as integer)
		  self.internalID = eventID
		  
		  Return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FactoryFromJSON(j as JSONItem) As clEvent
		  
		  var c as new clEvent(-1)
		  
		  
		  genericInitFromJSON(c, j)
		  
		  
		  return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ID() As integer
		  Return self.internalID
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsNewEvent() As Boolean
		  
		  return self.DateEventCreated.Length = 0
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PrepareToSave(UseID as integer)
		  
		  var d as DateTime = DateTime.Now
		  
		  if self.DateEventCreated.Length = 0 then
		    self.DateEventCreated = d.SQLDateTime
		    self.internalID = useID
		    
		  end if
		  
		  self.DateEventLastUpdate = d.SQLDateTime
		  
		  return
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function SerializeToJSON(c as clEvent) As JSONItem
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


	#tag Note, Name = Untitled
		
		Get the Integer value of an element by casting it to an Integer:
		
		Var levelInt As Integer
		levelInt = Integer(SecurityLevel.Minimal) ' levelInt = 1
		
		Cast an Integer to an Enum.
		
		Var level As SecurityLevel
		level = SecurityLevel(1) ' No compile or runtime error even if the Integer is not valid
		
		
		To pass an Enumeration to a method, use its type name:
		
		Sub SetSecurityLevel(level As SecurityLevel)
		  If level = SecurityLevel.Minimal Then
		    ' Do something
		  End If
		End Sub
		
		//
		
		Var s As String
		s = kHello("fr") ' s = "Bonjour"
		s = kHello("en") ' s = "Hello"
		s = kHello("en_UK") ' s = "Welcome"
		
		And you could grab the default value like this, although you're better off getting the specific language value you want:
		
		s = kHello("default")
	#tag EndNote


	#tag Property, Flags = &h0
		Amount As double
	#tag EndProperty

	#tag Property, Flags = &h0
		AmountInOriginalCurrency As double
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrencyConversionCode As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrencyConversionInfo As string
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrencyExchangeRate As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		currentMileage As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Updated when the event is saved
		#tag EndNote
		DateEventCreated As string
	#tag EndProperty

	#tag Property, Flags = &h0
		DateEventLastUpdate As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Description As string
	#tag EndProperty

	#tag Property, Flags = &h0
		eventDate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Used when event type is set to 'other'
		#tag EndNote
		EventInfo As string
	#tag EndProperty

	#tag Property, Flags = &h0
		eventType As CarEventTypes
	#tag EndProperty

	#tag Property, Flags = &h21
		Private internalID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		OriginalCurrencyCode As string
	#tag EndProperty

	#tag Property, Flags = &h0
		PercentFullCosts As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		PercentTripCosts As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		reminderDate As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ThirdPartyInfo0 As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ThirdPartyInfo1 As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ThirdPartyInfo2 As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TripLabel As string
	#tag EndProperty

	#tag Property, Flags = &h0
		vehicleID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Volume As Double
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
			Name="eventType"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CarEventTypes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Buying"
				"1 - StartCirculation"
				"2 - TransfertToMe"
				"3 - TransfertToOther"
				"4 - Selling"
				"5 - Refuelling"
				"6 - PayToll"
				"7 - Repair"
				"8 - Insurance"
				"9 - Maintenance"
				"10 - ObserveIssue"
				"11 - Other"
				"12 - DummyEntry"
				"13 - Taxes"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="vehicleID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Amount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="currentMileage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="eventDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TripLabel"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PercentFullCosts"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AmountInOriginalCurrency"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="OriginalCurrencyCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrencyConversionCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrencyConversionInfo"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DateEventCreated"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DateEventLastUpdate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EventInfo"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="reminderDate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThirdPartyInfo0"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThirdPartyInfo1"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThirdPartyInfo2"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Volume"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrencyExchangeRate"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PercentTripCosts"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
