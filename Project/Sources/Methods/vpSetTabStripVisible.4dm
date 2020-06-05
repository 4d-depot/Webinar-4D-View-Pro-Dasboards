//%attributes = {}
C_TEXT:C284($1;$vpArea_t)
C_BOOLEAN:C305($2;$visible_b)
If (Count parameters:C259>=2)
	$vpArea_t:=$1
	$visible_b:=$2
	
	C_OBJECT:C1216($vp_o)
	$vp_o:=VP Export to object ($vpArea_t)
	$vp_o.spreadJS.tabStripVisible:=$visible_b
	VP IMPORT FROM OBJECT ($vpArea_t;$vp_o)
	
End if 