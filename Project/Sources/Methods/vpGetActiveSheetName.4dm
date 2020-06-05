//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Add Komoncharoensiri
  // Date and time: 04-16-20, 09:06:59
  // ----------------------------------------------------
  // Method: vpGetActiveSheetName
  // Description
  //      Return the name of the active sheet
  //
  // Parameters
  //     $1    -    4D View Pro Area name
  // ----------------------------------------------------

C_TEXT:C284($0;$1;$vpArea_t)
C_OBJECT:C1216($vp_o)
C_LONGINT:C283($index_l;$i)

If (Count parameters:C259>=1)
	$vpArea_t:=$1
	$index_l:=vpGetActiveSheetIndex ($vpArea_t)
	$vp_o:=VP Export to object ($vpArea_t)
	ARRAY TEXT:C222($sheetName_at;0)
	OB GET PROPERTY NAMES:C1232($vp_o.spreadJS.sheets;$sheetName_at)
	For ($i;1;Size of array:C274($sheetName_at))
		If ($vp_o.spreadJS.sheets[$sheetName_at{$i}].index=$index_l)
			$0:=$vp_o.spreadJS.sheets[$sheetName_at{$i}].name
			$i:=Size of array:C274($sheetName_at)+1
		End if 
	End for 
End if 
