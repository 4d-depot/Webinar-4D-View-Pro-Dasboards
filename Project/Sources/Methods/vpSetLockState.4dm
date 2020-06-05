//%attributes = {}
C_TEXT:C284($1;$vpArea_t)
C_BOOLEAN:C305($2;$lock_b)

If (Count parameters:C259>=2)
	
	$lock_b:=$2
	
	C_OBJECT:C1216($vb_o)
	$vb_o:=New object:C1471
	
	$vb_o.isProtected:=$lock_b
	VP SET SHEET OPTIONS ("ViewProArea";$vb_o)
	
End if 