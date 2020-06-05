//%attributes = {}
C_LONGINT:C283($0)
C_TEXT:C284($1;$2;$vpArea_t;$sheet_t)
C_REAL:C285($3;$factorOf_r)

If (Count parameters:C259>=3)
	$vpArea_t:=$1
	$sheet_t:=$2
	$factorOf_r:=$3
	
	C_OBJECT:C1216($vp_o)
	$vp_o:=VP Export to object ($vpArea_t)
	If ($vp_o.spreadJS.sheets[$sheet_t]#Null:C1517)
		$vp_o.spreadJS.sheets[$sheet_t].zoomFactor:=$factorOf_r
		VP IMPORT FROM OBJECT ($vpArea_t;$vp_o)
	End if 
End if 
