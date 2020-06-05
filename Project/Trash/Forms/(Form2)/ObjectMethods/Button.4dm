C_TEXT:C284($jsScript_t)

$wb_t:=vpGetWorkbook ("ViewProArea")
$jsScript_t:=$jsScript_t+"sheet = "+$wb_t+".getActiveSheet();"
$jsScript_t:=$jsScript_t+"sheet.suspendPaint();"
$jsScript_t:=$jsScript_t+"sheet.setValue(0, 1, 'Q1');"
$jsScript_t:=$jsScript_t+"sheet.setValue(0, 2, 'Q2');"
$jsScript_t:=$jsScript_t+"sheet.setValue(0, 3, 'Q3');"
$jsScript_t:=$jsScript_t+"sheet.setValue(1, 0, 'Mobile Phones');"
$jsScript_t:=$jsScript_t+"sheet.setValue(2, 0, 'Laptops');"
$jsScript_t:=$jsScript_t+"sheet.setValue(3, 0, 'Tablets');"
  //$jsScript_t:=$jsScript_t+"For (var r=1;r<=3;r++){"
  //$jsScript_t:=$jsScript_t+"For (var c=1;c<=3;c++){"
  //$jsScript_t:=$jsScript_t+"sheet.setValue(r, c, parseInt(Math.random()*100));"
  //$jsScript_t:=$jsScript_t+"}"
  //$jsScript_t:=$jsScript_t+"}"
$jsScript_t:=$jsScript_t+"chart_line = sheet.charts.add('chart_line', GC.Spread.Sheets.Charts.ChartType.line, 10, 100, 300, 200, 'A1:D4');"
  //$jsScript_t:=$jsScript_t+"chart_lineStacked = sheet.charts.add('chart_lineStacked', GC.Spread.Sheets.Charts.ChartType.lineStacked, 250, 480, 600, 400, 'A1:D4');"
$jsScript_t:=$jsScript_t+"sheet.resumePaint();"
$res:=WA Evaluate JavaScript:C1029(*;"ViewProArea";$jsScript_t;Is text:K8:3)