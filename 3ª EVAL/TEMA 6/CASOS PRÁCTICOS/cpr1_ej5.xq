<ul>{
  for $a in doc("cpr1/cpr1.xml")//obra
  where $a/@anyo>1800
    return <li>{data($a)}</li>
}
</ul>
