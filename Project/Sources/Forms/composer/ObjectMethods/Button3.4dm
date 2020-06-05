C_TEXT:C284($jsScript_t)
$wb_t:=vpGetWorkbook ("ViewProArea")
$jsScript_t:=$jsScript_t+"sheet = "+$wb_t+".getActiveSheet();"
$jsScript_t:=$jsScript_t+"sheet.suspendPaint();"
$jsScript_t:=$jsScript_t+"chart = sheet.charts.add('PieChart', GC.Spread.Sheets.Charts.ChartType.pie, 630, 20, 415, 370, 'I7:J10');"
$jsScript_t:=$jsScript_t+"var dataLabels=chart.dataLabels();"
$jsScript_t:=$jsScript_t+"dataLabels.showValue='True';"
$jsScript_t:=$jsScript_t+"dataLabels.fontFamily='Arial';"
$jsScript_t:=$jsScript_t+"var dataLabelPosition=GC.Spread.Sheets.Charts.DataLabelPosition;"
$jsScript_t:=$jsScript_t+"dataLabels.position=dataLabelPosition.bestFit;"
$jsScript_t:=$jsScript_t+"chart.dataLabels(dataLabels);"
$jsScript_t:=$jsScript_t+"var title=chart.title();"
$jsScript_t:=$jsScript_t+"title.text='EARNING BY ACCOUNT TYPE';"
$jsScript_t:=$jsScript_t+"title.fontSize=18;"
$jsScript_t:=$jsScript_t+"title.fontFamily='Arial';"
$jsScript_t:=$jsScript_t+"chart.title(title);"
$jsScript_t:=$jsScript_t+"sheet.resumePaint();"
$res:=WA Evaluate JavaScript:C1029(*;"ViewProArea";$jsScript_t;Is text:K8:3)