#tag Module
Protected Module md_Events
	#tag Method, Flags = &h0
		Function AllEvents() As pair()
		  var tmp() as CarEventTypes
		  
		  var ret() as pair
		  
		  
		  tmp.add(CarEventTypes.Refuelling)
		  tmp.Add(CarEventTypes.PayToll)
		  tmp.Add(CarEventTypes.Maintenance)
		  
		  tmp.Add(CarEventTypes.Insurance)
		  tmp.Add(CarEventTypes.Repair)
		  tmp.Add(CarEventTypes.Taxes)
		  
		  tmp.Add(CarEventTypes.ObserveIssue)
		  
		  tmp.Add(CarEventTypes.Buying)
		  tmp.Add(CarEventTypes.Selling)
		  tmp.Add(CarEventTypes.TransfertToMe)
		  tmp.Add(CarEventTypes.TransfertToOther)
		  
		  tmp.Add(CarEventTypes.Other)
		  
		  // tmp.Add(CarEventTypes.DummyEntry)
		  
		  
		  for i as integer = 0 to tmp.LastIndex
		    var e as CarEventTypes = tmp(i)
		    
		    ret.Add(e:e.StringValue)
		    
		  next
		  
		  Return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShouldDisplayReminderDateFor(e as CarEventTypes) As Boolean
		  
		  return e = CarEventTypes.ObserveIssue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShouldDisplayVolumeFor(e as CarEventTypes) As Boolean
		  
		  return e = CarEventTypes.Refuelling
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StringValue(Extends e as CarEventTypes) As String
		  
		  Select Case e
		    
		  Case CarEventTypes.Buying
		    return kBuyingEvent
		    
		  case CarEventTypes.Insurance
		    return kInsuranceEvent
		    
		  case  CarEventTypes.Maintenance
		    return kMaintenaceEvent
		    
		  case  CarEventTypes.ObserveIssue
		    return kObvserveIssueEvent
		    
		  case CarEventTypes.PayToll
		    return kPayTollEvent
		    
		  case CarEventTypes.Refuelling
		    return kRefuellingEvent
		    
		  case CarEventTypes.Repair
		    return kRepairEvent
		    
		  case  CarEventTypes.Selling
		    Return kSellingEvent
		    
		  case CarEventTypes.StartCirculation
		    return kStartCiriculationEvent
		    
		  case CarEventTypes.TransfertToMe
		    return kTransferToMeEvent
		    
		  case  CarEventTypes.TransfertToOther
		    return kTransfertToOtherEvent
		    
		  case CarEventTypes.Other
		    return kOtherEvent
		    
		  case else
		    return kOtherEvent
		    
		  end select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StringValue(Extends  ByRef e As CarEventTypes, Assigns value As String)
		  
		  Select Case value
		    
		  Case kBuyingEvent
		    e = CarEventTypes.Buying
		    
		  case kInsuranceEvent
		    e= CarEventTypes.Insurance
		    
		  case  kMaintenaceEvent
		    e= CarEventTypes.Maintenance
		    
		  case  kObvserveIssueEvent
		    e= CarEventTypes.ObserveIssue
		    
		  case kPayTollEvent
		    e=  CarEventTypes.PayToll
		    
		  case kRefuellingEvent
		    e=  CarEventTypes.Refuelling
		    
		  case kRepairEvent
		    e=  CarEventTypes.Repair
		    
		  case  kSellingEvent
		    e= CarEventTypes.Selling
		    
		  case kStartCiriculationEvent
		    e=  CarEventTypes.StartCirculation
		    
		  case kTransferToMeEvent
		    e=  CarEventTypes.TransfertToMe
		    
		  case  kTransfertToOtherEvent
		    e= CarEventTypes.TransfertToOther
		    
		  case else
		    e= CarEventTypes.Other
		    
		  end select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function stt(e as CarEventTypes) As string
		  select case integer(e)
		    
		  case 1
		    
		  case else
		    
		  end Select 
		End Function
	#tag EndMethod


	#tag Constant, Name = kBuyingEvent, Type = String, Dynamic = True, Default = \"Buying", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Buying"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Achat"
	#tag EndConstant

	#tag Constant, Name = kInsuranceEvent, Type = String, Dynamic = False, Default = \"Insurance", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kMaintenaceEvent, Type = String, Dynamic = False, Default = \"Maintenace", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kObvserveIssueEvent, Type = String, Dynamic = False, Default = \"ObvserveIssue", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOtherEvent, Type = String, Dynamic = False, Default = \"Other", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPayTollEvent, Type = String, Dynamic = False, Default = \"PayToll", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRefuellingEvent, Type = String, Dynamic = False, Default = \"Refuelling", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRepairEvent, Type = String, Dynamic = False, Default = \"Repair", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSellingEvent, Type = String, Dynamic = False, Default = \"Selling", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kStartCiriculationEvent, Type = String, Dynamic = False, Default = \"StartCiriculation", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTransferToMeEvent, Type = String, Dynamic = False, Default = \"TransferToMe", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTransfertToOtherEvent, Type = String, Dynamic = False, Default = \"TransfertToOther", Scope = Public
	#tag EndConstant


	#tag Enum, Name = CarEventTypes, Flags = &h0
		Buying
		  StartCirculation
		  TransfertToMe
		  TransfertToOther
		  Selling
		  Refuelling
		  PayToll
		  Repair
		  Insurance
		  Maintenance
		  ObserveIssue
		  Other
		  DummyEntry
		Taxes
	#tag EndEnum


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
