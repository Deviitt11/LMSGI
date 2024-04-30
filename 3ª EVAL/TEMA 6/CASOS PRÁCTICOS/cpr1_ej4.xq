for $a in doc("cpr1/cpr1.xml")//obra
where $a/@anyo>1800
order by $a/@pais
  return data ($a)