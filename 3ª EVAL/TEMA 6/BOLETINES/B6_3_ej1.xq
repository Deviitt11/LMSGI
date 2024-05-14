for $a in doc("B6_2.xml")//year
return <publicacion>{$a}</publicacion>

let $a:= //year/text()
return <publicacion>{$a}</publicacion>