(:
generar codigo html de obras superiores a 1800, lista no numerada
:)
<ul>{
  for $a in doc("cpr1/cpr1.xml")//obra
  where $a/@anyo>1800
    return <li>{data($a)}</li>
}
</ul>
