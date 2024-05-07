(:
Mostrar que me diga para cada museo
cuantas obras hay :)
for $museos in distinct-values(//museo)
  let $c := count(/museo[.= $museos])
  return concat('actualmente hay ' , $c,
' obras en el ', $museos)