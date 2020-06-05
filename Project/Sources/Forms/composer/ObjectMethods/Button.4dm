$vp_o:=VP Export to object ("ViewProArea")

$file_t:=Get 4D folder:C485(Current resources folder:K5:16)+"templates"+Folder separator:K24:12+"viewpro.json"
TEXT TO DOCUMENT:C1237($file_t;JSON Stringify:C1217($vp_o;*);"UTF-8")
