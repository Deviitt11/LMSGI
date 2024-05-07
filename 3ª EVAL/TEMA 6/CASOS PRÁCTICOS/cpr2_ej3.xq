(: Mostrar titulos cuyo id sea 2:)
for $a in //book
where $a/@id=2
return $a/title