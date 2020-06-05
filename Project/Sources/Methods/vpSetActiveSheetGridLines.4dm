//%attributes = {}
C_TEXT:C284($1;$vpArea_t;$sheet_t)
C_BOOLEAN:C305($2;$3;$visibleHor_b;$visibleVer_b)
If (Count parameters:C259>=3)
	$vpArea_t:=$1
	$visibleHor_b:=$2
	$visibleVer_b:=$3
	
	C_OBJECT:C1216($vp_o)
	$vp_o:=VP Export to object ($vpArea_t)
	$sheet_t:=vpGetActiveSheetName ($vpArea_t)
	vpSetSheetGridLines ($vpArea_t;$sheet_t;$visibleHor_b;$visibleVer_b)
	
End if 