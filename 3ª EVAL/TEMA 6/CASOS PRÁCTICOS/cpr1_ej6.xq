(:
Obras > 1800 ordenadas en lista, por países,
mostrar título, autor y museo por registros
:)
  for $a in doc("cpr1/cpr1.xml")//obra
  where $a/@anyo>1800
    return data($a)