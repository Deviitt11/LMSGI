(:
Tabla q las filas solo se generen si el pais es Francia y
q muestre título y autor
:)
<table>{
  for $a in doc("cpr1/cpr1.xml")//obra
  order by $a/autor
  return 
  if ($a/@pais = "Francia") then
  <tr>
  <td>{ $a/titulo/text()} </td>
  <td>{ $a/autor/text()} </td>
  </tr>
else()
}
</table>