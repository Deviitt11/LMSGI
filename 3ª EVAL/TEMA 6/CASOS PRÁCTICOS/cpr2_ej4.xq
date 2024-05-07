(: Mostrar titulos con más de 2 autores :)
for $a in //book
where count ($a/author) >1
return <titulo>$a/title/text()</titulo>