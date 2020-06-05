//%attributes = {}
C_LONGINT:C283($0)
C_TEXT:C284($1;$2;$vpArea_t;$sheet_t)

If (Count parameters:C259>=2)
	$vpArea_t:=$1
	$sheet_t:=$2
	
	C_OBJECT:C1216($vp_o)
	$vp_o:=VP Export to object ($vpArea_t)
	If ($vp_o.spreadJS.sheets[$sheet_t]#Null:C1517)
		If ($vp_o.spreadJS.sheets[$sheet_t].zoomFactor#Null:C1517)
			$0:=$vp_o.spreadJS.sheets[$sheet_t].zoomFactor
		Else 
			$0:=1
		End if 
	End if 
	
End if 
