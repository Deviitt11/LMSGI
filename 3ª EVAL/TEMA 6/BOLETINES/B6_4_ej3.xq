let $libros := //book
let $precios := $libros/price

return
<resultado>
  {
    for $precio in $precios
    return
      <precio>{$precio/text()}</precio>
  }
  <sumaTotal>
    {sum($precios)}
  </sumaTotal>
</resultado>
