#tag Class
Protected Class App
Inherits DesktopApplication
	#tag Event
		Sub Opening()
		  if isdarkmode() then
		    app.cdefault = &c2b2b2b
		  else
		    app.cdefault = &cdbdbdb
		  end
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CloneInto(a As Object, b As Object)
		  Dim aTi As Introspection.TypeInfo = Introspection.GetType(a)
		  Dim bTi As Introspection.TypeInfo = Introspection.GetType(b)
		  
		  If aTi.FullName <> bTi.FullName Then
		    Dim ex As New RuntimeException
		    ex.Message = "a and b are of different types"
		    Raise ex
		  End If
		  
		  For Each p As Introspection.PropertyInfo In aTi.GetProperties
		    p.Value(b) = p.Value(a)
		  Next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		cDefault As Color = &cffff00
	#tag EndProperty

	#tag Property, Flags = &h0
		cSelected As Color = &cff0000
	#tag EndProperty


	#tag Constant, Name = cProgCopyright, Type = String, Dynamic = False, Default = \"2024 David Gadberry", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cProgName, Type = String, Dynamic = False, Default = \"LED Bitmask Tool", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cProgRelDate, Type = String, Dynamic = False, Default = \"8 May 2024", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cProgVersion, Type = String, Dynamic = False, Default = \"1.20", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cSupportEmail, Type = String, Dynamic = False, Default = \"", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cSupportWebsite, Type = String, Dynamic = False, Default = \"www.dfgtec.com", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoQuit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowHiDPI"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BugVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Copyright"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastWindowIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MajorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NonReleaseVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RegionCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Version"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_CurrentEventTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cDefault"
			Visible=false
			Group="Behavior"
			InitialValue="&cffff00"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cSelected"
			Visible=false
			Group="Behavior"
			InitialValue="&cff0000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
