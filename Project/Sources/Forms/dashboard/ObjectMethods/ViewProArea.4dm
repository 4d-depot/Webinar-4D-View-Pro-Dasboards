Case of 
	: (Form event code:C388=On VP Ready:K2:59)
		$file_t:=Get 4D folder:C485(Current resources folder:K5:16)+"templates"+Folder separator:K24:12+"dash.json"
		$docJson_t:=Document to text:C1236($file_t;"UTF-8")
		$vp_o:=JSON Parse:C1218($docJson_t)
		
		
		VP IMPORT FROM OBJECT ("ViewProArea";$vp_o)
		
		C_OBJECT:C1216($pane_o)
		$pane_o:=New object:C1471
		$pane_o.columnCount:=18
		$pane_o.rowCount:=22
		$pane_o.trailingColumnCount:=0
		$pane_o.trailingRowCount:=0
		
		C_OBJECT:C1216($o)
		$o:=New object:C1471
		$o.isProtected:=True:C214
		VP SET SHEET OPTIONS ("ViewProArea";$o)
		VP SET FROZEN PANES ("ViewProArea";$pane_o)
	: (Form event code:C388=On After Edit:K2:43)
		
End case 