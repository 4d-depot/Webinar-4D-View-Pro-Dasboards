//%attributes = {}
C_OBJECT:C1216($0;$grid_o)
C_TEXT:C284($1;$2;$vpArea_t;$sheet_t)
C_LONGINT:C283($row_l;$col_l)

$grid_o:=New object:C1471("rowHeaderVisible";0;"rowHeaderVisible";0)

If (Count parameters:C259>=2)
	$vpArea_t:=$1
	$sheet_t:=$2
	
	C_OBJECT:C1216($vp_o)
	$vp_o:=VP Export to object ($vpArea_t)
	If ($vp_o.spreadJS.sheets[$sheet_t]#Null:C1517)
		If ($vp_o.spreadJS.sheets[$sheet_t].rowHeaderVisible#Null:C1517)
			$grid_o.rowHeaderVisible:=$vp_o.spreadJS.sheets[$sheet_t].rowHeaderVisible
		Else 
			$grid_o.rowHeaderVisible:=True:C214
		End if 
		If ($vp_o.spreadJS.sheets[$sheet_t].colHeaderVisible#Null:C1517)
			$grid_o.colHeaderVisible:=$vp_o.spreadJS.sheets[$sheet_t].colHeaderVisible
		Else 
			$grid_o.colHeaderVisible:=True:C214
		End if 
	End if 
	
End if 

$0:=$grid_o