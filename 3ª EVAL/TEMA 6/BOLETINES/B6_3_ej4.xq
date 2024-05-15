let 
$total := count(//book),
$titulos := 
  (for $libro in //title/text()
  return <titulo>{$libro}</titulo>
)
return <resultado>{$titulos}
<totalLibros>{$total}</totalLibros>
</resultado>