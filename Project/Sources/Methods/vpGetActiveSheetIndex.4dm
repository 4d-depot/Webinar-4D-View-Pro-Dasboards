//%attributes = {}
C_LONGINT:C283($0)
C_TEXT:C284($1;$vpArea_t)

If (Count parameters:C259>=1)
	$vpArea_t:=$1
	
	C_OBJECT:C1216($vp_o)
	$vp_o:=VP Export to object ($vpArea_t)
	If ($vp_o.spreadJS.activeSheetIndex#Null:C1517)
		$0:=$vp_o.spreadJS.activeSheetIndex
	End if 
End if 