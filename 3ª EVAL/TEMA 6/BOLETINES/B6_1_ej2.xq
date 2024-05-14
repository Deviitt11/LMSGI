for $a in doc ("B6_1.xml")//vehiculo
where $a/@velocidad>1000
return $a/modelo