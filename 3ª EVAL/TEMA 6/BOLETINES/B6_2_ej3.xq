for $a in doc("B6_2.xml")//book
where $a/price<=30
return $a/title
