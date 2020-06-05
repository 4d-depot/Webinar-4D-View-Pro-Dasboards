//%attributes = {}
C_TEXT:C284($1;$2;$vpArea_t;$sheet_t)
C_BOOLEAN:C305($3;$4;$visibleHor_b;$visibleVer_b)
If (Count parameters:C259>=4)
	$vpArea_t:=$1
	$sheet_t:=$2
	$visibleHor_b:=$3
	$visibleVer_b:=$4
	
	C_OBJECT:C1216($vp_o)
	$vp_o:=VP Export to object ($vpArea_t)
	If ($vp_o.spreadJS.sheets[$sheet_t]#Null:C1517)
		$vp_o.spreadJS.sheets[$sheet_t].gridline:=New object:C1471
		If ($visibleHor_b=False:C215)
			$vp_o.spreadJS.sheets[$sheet_t].gridline.showHorizontalGridline:=$visibleHor_b
		End if 
		If ($visibleVer_b=False:C215)
			$vp_o.spreadJS.sheets[$sheet_t].gridline.showVerticalGridline:=$visibleVer_b
		End if 
		VP IMPORT FROM OBJECT ($vpArea_t;$vp_o)
	End if 
End if 
