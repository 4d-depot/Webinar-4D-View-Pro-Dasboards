//%attributes = {}
C_OBJECT:C1216($0;$grid_o)
C_TEXT:C284($1;$vpArea_t)

$grid_o:=New object:C1471("hor";True:C214;"ver";True:C214)

If (Count parameters:C259>=1)
	$vpArea_t:=$1
	
	C_OBJECT:C1216($vp_o)
	$vp_o:=VP Export to object ($vpArea_t)
	If ($vp_o.spreadJS.showHorizontalScrollbar#Null:C1517)
		$grid_o.hor:=$vp_o.spreadJS.showHorizontalScrollbar
	End if 
	If ($vp_o.spreadJS.showVerticalScrollbar#Null:C1517)
		$grid_o.ver:=$vp_o.spreadJS.showVerticalScrollbar
	End if 
	
End if 

$0:=$grid_o