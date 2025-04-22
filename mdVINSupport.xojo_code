#tag Module
Protected Module mdVINSupport
	#tag Method, Flags = &h0
		Function QuickCheckVIN(VIN as string) As integer
		  
		  if VIN.Length = 0 then return cVINMissing
		  
		  if VIN.Length <> 17 then Return cVINErrorLength
		  
		  var InvalidChar as string 
		  
		  
		  InvalidChar = "IiOoQq"
		  
		  For Each char As String In InvalidChar.Characters
		    if VIN.IndexOf(char) > -1 then return cVINErrorInvalidCharacter
		    
		  next
		  // 
		  // Split into WMI, VDS and VIS
		  var tmp() as string = splitVIN(VIN)
		  
		  var WMI as string = tmp(cIndexVINSplit_WMI)
		  var VDS as String = tmp(cIndexVINSplit_VDS)
		  var VIS as string =  tmp(cIndexVINSplit_VIS)
		  
		  var VISYear as string = VIS.left(1)
		  
		  // Quick check on VISYear
		  InvalidChar = "IiOoQqUuZz0"
		  
		  For Each char As String In InvalidChar.Characters
		    if VISYear.IndexOf(char) > -1 then return cVINErrorInvalidCharacterVIS
		    
		  next
		  
		  return 0
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function splitVIN(VIN as string) As string()
		  
		  var ret() as String
		  
		  if VIN.Length = 0 then return ret
		  
		  if VIN.Length <> 17 then Return ret
		   
		  // Split into WMI, VDS and VIS
		  
		  var WMI as string = VIN.left(3)
		  var VDS as String = VIN.Middle(3, 6)
		  var VIS as string = VIN.Right(8)
		  
		  ret.Add(WMI)
		  ret.Add(VDS)
		  ret.Add(VIS)
		  
		  return ret
		  
		End Function
	#tag EndMethod


	#tag Note, Name = About VIN
		
		ISO 3779:2009 "Véhicules routiers - Numéro d'identification des véhicules (vin) - Contenu et structure."
		
		ISO 3780:2009[3] "Véhicules routiers - Code d'identification mondiale des constructeurs (WMI)"
	#tag EndNote


	#tag Constant, Name = cIndexVINSplit_VDS, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cIndexVINSplit_VIS, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cIndexVINSplit_WMI, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cVINErrorInvalidCharacter, Type = Double, Dynamic = False, Default = \"-3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cVINErrorInvalidCharacterVIS, Type = Double, Dynamic = False, Default = \"-4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cVINErrorLength, Type = Double, Dynamic = False, Default = \"-1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cVINMissing, Type = Double, Dynamic = False, Default = \"-2", Scope = Public
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
	#tag EndViewBehavior
End Module
#tag EndModule
