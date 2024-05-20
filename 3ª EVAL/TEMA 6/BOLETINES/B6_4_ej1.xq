for $libro in //book
let $precioIVA := ($libro/price*1.21)
order by $precioIVA
return
  <libro>
    <titulo>{$libro/title/text()}</titulo>
    <price>{$libro/price/text()}</price>
    <precioIVA>{$precioIVA}</precioIVA>
  </libro>