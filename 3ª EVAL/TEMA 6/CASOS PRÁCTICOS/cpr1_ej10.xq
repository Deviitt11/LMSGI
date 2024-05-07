(:
museos q se pueden visitar 
:)
for $a in //museo
  where $a/@visible='true'
  return $a/text()