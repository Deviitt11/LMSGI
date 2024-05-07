(:
Generar tabla html, q registre títulos y autores de todas
las obras que tenemos
:)
<table>{
  for $a in doc("cpr1/cpr1.xml")//obra
  order by $a/autor
  return <tr>
  <td>{ $a/titulo/text()} </td>
  <td>{ $a/autor/text()} </td>
  </tr>
}
</table>