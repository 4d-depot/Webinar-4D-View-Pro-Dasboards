//%attributes = {}
C_TEXT:C284($1;$vpArea_t)
C_BOOLEAN:C305($2;$3;$hor_b;$ver_b)

If (Count parameters:C259>=3)
	$vpArea_t:=$1
	$hor_b:=$2
	$ver_b:=$3
	
	C_OBJECT:C1216($vp_o)
	$vp_o:=VP Export to object ($vpArea_t)
	$vp_o.spreadJS.showHorizontalScrollbar:=$hor_b
	$vp_o.spreadJS.showVerticalScrollbar:=$ver_b
	VP IMPORT FROM OBJECT ($vpArea_t;$vp_o)
	
End if 
