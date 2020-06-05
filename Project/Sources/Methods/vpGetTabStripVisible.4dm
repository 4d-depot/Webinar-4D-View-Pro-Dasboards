//%attributes = {}
C_TEXT:C284($1;$vpArea_t)
C_BOOLEAN:C305($0;$visible_b)
If (Count parameters:C259>=1)
	$vpArea_t:=$1
	
	C_OBJECT:C1216($vp_o)
	$vp_o:=VP Export to object ($vpArea_t)
	If ($vp_o.spreadJS.tabStripVisible#Null:C1517)
		$visible_b:=$vp_o.spreadJS.tabStripVisible
	Else 
		$visible_b:=True:C214
	End if 
	
End if 
$0:=$visible_b