for $a in //book
order by $a/@category, $a/title
return $a