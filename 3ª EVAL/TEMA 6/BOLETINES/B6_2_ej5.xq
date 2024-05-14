for $a in doc("B6_2.xml")//book[price<=30]
where $a/year=2005
return <lib2005>{$a/title/text(), ' de ', $a/author/text()}</lib2005>
