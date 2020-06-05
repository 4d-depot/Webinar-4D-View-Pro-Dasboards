//%attributes = {}
  //Method: vpGetWorkbook
C_TEXT:C284($0)
C_TEXT:C284($1)

C_TEXT:C284($vpArea_t)
C_OBJECT:C1216($res_o)

If (Count parameters:C259=1)
	$vpArea_t:=$1
	$res_o:=WA Evaluate JavaScript:C1029(*;$vpArea_t;"Utils.spread;";Is object:K8:27)
	If ($res_o=Null:C1517)
		$0:="spread"
	Else 
		$0:="Utils.spread"
	End if 
End if 