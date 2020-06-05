//%attributes = {}
C_OBJECT:C1216($0;$grid_o)
C_TEXT:C284($1;$vpArea_t;$sheet_t)

$grid_o:=New object:C1471("hor";True:C214;"ver";True:C214)

If (Count parameters:C259>=1)
	$vpArea_t:=$1
	
	$sheet_t:=vpGetActiveSheetName ($vpArea_t)
	$grid_o:=vpGetSheetGridLines ($vpArea_t;$sheet_t)
	
End if 

$0:=$grid_o