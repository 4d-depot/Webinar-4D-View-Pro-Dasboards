//%attributes = {}
C_TEXT:C284($1;$2;$vpArea_t;$sheet_t)
C_LONGINT:C283($3;$4;$row_l;$col_l)
If (Count parameters:C259>=4)
	$vpArea_t:=$1
	$sheet_t:=$2
	$row_l:=$3
	$col_l:=$4
	
	If (True:C214)  // v18R2 only
		VP SET ROW COUNT ($vpArea_t;$row_l)
		VP SET COLUMN COUNT ($vpArea_t;$col_l)
	Else 
		C_OBJECT:C1216($vp_o)
		$vp_o:=VP Export to object ($vpArea_t)
		If ($vp_o.spreadJS.sheets[$sheet_t]#Null:C1517)
			$vp_o.spreadJS.sheets[$sheet_t].rowCount:=$row_l
			$vp_o.spreadJS.sheets[$sheet_t].columnCount:=$col_l
			VP IMPORT FROM OBJECT ($vpArea_t;$vp_o)
		End if 
	End if 
	
End if 

/**
This method can be rewritten using the following commands after 18R2. ALWAYS REVIEW GENERIC CODE!
*/
  //VP SET ROW COUNT 
  //VP SET COLUMN COUNT
