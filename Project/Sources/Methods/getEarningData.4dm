//%attributes = {}
C_BOOLEAN:C305(started_b)
C_COLLECTION:C1488(company_c;$data_c)
C_OBJECT:C1216($company_o)
C_LONGINT:C283($inc)
If (started_b)
	For each ($company_o;company_c)
		$inc:=(Random:C100%(10))
		$company_o.total:=$company_o.total+($inc*10)
	End for each 
Else 
	company_c:=New collection:C1472
	company_c.push(New object:C1471("name";"ABC, Inc.";"account";"Platinum";"total";6800))
	company_c.push(New object:C1471("name";"Smith's Electro";"account";"Silver";"total";1200))
	company_c.push(New object:C1471("name";"Pine Industries";"account";"Silver";"total";900))
	company_c.push(New object:C1471("name";"Wisker and Amber";"account";"Silver";"total";1520))
	company_c.push(New object:C1471("name";"Fireworks Systems";"account";"Gold";"total";3100))
	company_c.push(New object:C1471("name";"JJ Caranvan Motors";"account";"Bronze";"total";250))
	company_c.push(New object:C1471("name";"Simmerson's Engine";"account";"Gold";"total";2500))
	company_c.push(New object:C1471("name";"IDK Trades";"account";"Silver";"total";1150))
	company_c.push(New object:C1471("name";"Onway Technology";"account";"Gold";"total";2750))
	company_c.push(New object:C1471("name";"Ray's Engineering";"account";"Platinum";"total";5300))
	started_b:=True:C214
	account_c:=New collection:C1472
End if 

ARRAY TEXT:C222($acc_at;0)
ARRAY REAL:C219($amt_ar;0)
For each ($company_o;company_c)
	$foundat_l:=Find in array:C230($acc_at;$company_o.account)
	If ($foundat_l=-1)
		APPEND TO ARRAY:C911($acc_at;$company_o.account)
		APPEND TO ARRAY:C911($amt_ar;$company_o.total)
	Else 
		$amt_ar{$foundat_l}:=$amt_ar{$foundat_l}+$company_o.total
	End if 
End for each 

company_c:=company_c.orderBy("total desc")

$data_c:=New collection:C1472
For each ($company_o;company_c)
	$data_c.push(New collection:C1472($company_o.name;$company_o.account;$company_o.total))
End for each 

VP SET VALUES (VP Cell ("ViewProArea";2;10);$data_c)

$sum_t:=String:C10(company_c.sum("total");"$#,###,##0.00;-$#,###,##0.00")
VP SET VALUE (VP Cell ("ViewProArea";2;3);New object:C1471("value";$sum_t))

$data_c:=New collection:C1472
For ($i;1;Size of array:C274($acc_at))
	$data_c.push(New collection:C1472($acc_at{$i};$amt_ar{$i}))
End for 
VP SET VALUES (VP Cell ("ViewProArea";8;6);$data_c)

$value_o:=VP Get value (VP Cell ("ViewProArea";8;16))
If ($value_o.value#Null:C1517)
	$val_r:=$value_o.value
	If (Mod:C98(Tickcount:C458;2)=0)
		$val_r:=$val_r+1
	Else 
		$val_r:=$val_r-1
	End if 
	VP SET VALUE (VP Cell ("ViewProArea";8;16);New object:C1471("value";$val_r))
End if 

