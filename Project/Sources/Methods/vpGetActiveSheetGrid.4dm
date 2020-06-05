//%attributes = {}
C_OBJECT:C1216($0;$grid_o)
C_TEXT:C284($1;$vpArea_t;$sheet_t)

$grid_o:=New object:C1471("row";0;"column";0)

If (Count parameters:C259>=1)
	$vpArea_t:=$1
	
	$sheet_t:=vpGetActiveSheetName ($vpArea_t)
	$grid_o:=vpGetSheetGrid ($vpArea_t;$sheet_t)
	
End if 

$0:=$grid_o