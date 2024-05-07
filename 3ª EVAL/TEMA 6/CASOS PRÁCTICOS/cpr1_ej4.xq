(: Mostrar que países de las obras cuyo año> 1800y
ordenadas alfabéticamente por el país sin etiquetas :)
for $a in doc("cpr1/cpr1.xml")//obra
where $a/@anyo>1800
order by $a/@pais
  return data ($a/@pais)