//%attributes = {}
C_TEXT:C284($1;$2;$vpArea_t;$sheet_t)
C_BOOLEAN:C305($3;$4;$visibleRow_b;$visibleCol_b)
If (Count parameters:C259>=3)
	$vpArea_t:=$1
	$sheet_t:=$2
	$visibleRow_b:=$3
	$visibleCol_b:=$4
	
	C_OBJECT:C1216($vp_o)
	$vp_o:=VP Export to object ($vpArea_t)
	If ($vp_o.spreadJS.sheets[$sheet_t]#Null:C1517)
		$vp_o.spreadJS.sheets[$sheet_t].rowHeaderVisible:=$visibleRow_b
		$vp_o.spreadJS.sheets[$sheet_t].colHeaderVisible:=$visibleCol_b
		VP IMPORT FROM OBJECT ($vpArea_t;$vp_o)
	End if 
	
End if 