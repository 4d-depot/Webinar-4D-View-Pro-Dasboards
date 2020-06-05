//%attributes = {}
C_OBJECT:C1216($0;$grid_o)
C_TEXT:C284($1;$2;$vpArea_t;$sheet_t)
C_LONGINT:C283($row_l;$col_l)

$grid_o:=New object:C1471("hor";True:C214;"ver";True:C214)

If (Count parameters:C259>=2)
	$vpArea_t:=$1
	$sheet_t:=$2
	
	C_OBJECT:C1216($vp_o)
	$vp_o:=VP Export to object ($vpArea_t)
	If ($vp_o.spreadJS.sheets[$sheet_t].gridline#Null:C1517)
		If ($vp_o.spreadJS.sheets[$sheet_t].gridline.showHorizontalGridline#Null:C1517)
			$grid_o.hor:=$vp_o.spreadJS.sheets[$sheet_t].gridline.showHorizontalGridline
		End if 
		If ($vp_o.spreadJS.sheets[$sheet_t].gridline.showVerticalGridline#Null:C1517)
			$grid_o.ver:=$vp_o.spreadJS.sheets[$sheet_t].gridline.showVerticalGridline
		End if 
		
	End if 
	
End if 

$0:=$grid_o