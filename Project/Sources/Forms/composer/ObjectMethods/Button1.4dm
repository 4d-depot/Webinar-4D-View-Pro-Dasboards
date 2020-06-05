$file_t:=Get 4D folder:C485(Current resources folder:K5:16)+"templates"+Folder separator:K24:12+"viewpro.json"
$docJson_t:=Document to text:C1236($file_t;"UTF-8")
$vp_o:=JSON Parse:C1218($docJson_t)
VP IMPORT FROM OBJECT ("ViewProArea";$vp_o)

$grid_o:=vpGetActiveSheetGrid ("ViewProArea")
Form:C1466.rowCount:=$grid_o.rowCount
Form:C1466.columnCount:=$grid_o.columnCount

$grid_o:=vpGetActiveSheetHeaderVisible ("ViewProArea")
Form:C1466.rowHeader:=$grid_o.rowHeaderVisible
Form:C1466.columnHeader:=$grid_o.colHeaderVisible

$grid_o:=vpGetActiveSheetGridLines ("ViewProArea")
Form:C1466.horGridlines:=$grid_o.hor
Form:C1466.verGridlines:=$grid_o.ver

$grid_o:=vpGetScrollbar ("ViewProArea")
Form:C1466.horScrollbar:=$grid_o.hor
Form:C1466.verScrollbar:=$grid_o.ver

Form:C1466.tabStrip:=vpGetTabStripVisible ("ViewProArea")

$zoomFactor_t:=String:C10(vpGetActiveSheetZoomLevel ("ViewProArea")*100;"###")+"%"
$foundat_l:=Find in array:C230(zoom_at;$zoomFactor_t)
If ($foundat_l#-1)
	zoom_at:=$foundat_l
End if 



  //get the lock status Only works after 18R2
C_OBJECT:C1216($options)
$options:=VP Get sheet options ("ViewProArea")
Form:C1466.lockState:=$options.isProtected


Form:C1466.activeSheetIndex:=vpGetActiveSheetIndex ("ViewProArea")
