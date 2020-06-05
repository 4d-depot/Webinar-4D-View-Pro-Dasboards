//%attributes = {}
C_LONGINT:C283($0)
C_TEXT:C284($1;$vpArea_t;$sheet_t)
C_REAL:C285($2;$factorOf_r)

If (Count parameters:C259>=2)
	$vpArea_t:=$1
	$factorOf_r:=$2
	
	$sheet_t:=vpGetActiveSheetName ($vpArea_t)
	vpSetZoomLevel ($vpArea_t;$sheet_t;$factorOf_r)
	
End if 
