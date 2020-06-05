//%attributes = {}
C_TEXT:C284($1;$vpArea_t;$sheet_t)
C_LONGINT:C283($2;$3;$row_l;$col_l)
If (Count parameters:C259>=3)
	$vpArea_t:=$1
	$row_l:=$2
	$col_l:=$3
	
	$sheet_t:=vpGetActiveSheetName ($vpArea_t)
	vpSetSheetGrid ($vpArea_t;$sheet_t;$row_l;$col_l)
	
End if 