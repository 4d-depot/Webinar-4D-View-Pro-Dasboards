//%attributes = {}
C_LONGINT:C283($0)
C_TEXT:C284($1;$vpArea_t;$sheet_t)

If (Count parameters:C259>=1)
	$vpArea_t:=$1
	
	$sheet_t:=vpGetActiveSheetName ($vpArea_t)
	$0:=vpGetZoomLevel ($vpArea_t;$sheet_t)
	
End if 
