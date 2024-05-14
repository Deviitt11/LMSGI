for $a in doc("B6_2.xml")//book[price<=30]
return <title>{$a/title/text()}</title>
