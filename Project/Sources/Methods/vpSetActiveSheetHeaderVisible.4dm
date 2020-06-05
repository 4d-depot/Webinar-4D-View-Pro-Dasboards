//%attributes = {}
C_TEXT:C284($1;$vpArea_t;$sheet_t)
C_BOOLEAN:C305($2;$3;$visibleRow_b;$visibleCol_b)
If (Count parameters:C259>=3)
	$vpArea_t:=$1
	$visibleRow_b:=$2
	$visibleCol_b:=$3
	
	C_OBJECT:C1216($vp_o)
	$vp_o:=VP Export to object ($vpArea_t)
	$sheet_t:=vpGetActiveSheetName ($vpArea_t)
	vpSetHeaderVisible ($vpArea_t;$sheet_t;$visibleRow_b;$visibleCol_b)
	
End if 