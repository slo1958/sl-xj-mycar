#tag Class
Protected Class App
Inherits DesktopApplication
	#tag Constant, Name = kAppDataFolderName, Type = String, Dynamic = False, Default = \"KverzuMyCarFolder", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDataFile, Type = String, Dynamic = False, Default = \"KverzuMyCarData", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant

	#tag Constant, Name = kPreferenceFileName, Type = String, Dynamic = False, Default = \"kverzuMyCarPreferences", Scope = Public
	#tag EndConstant


End Class
#tag EndClass
