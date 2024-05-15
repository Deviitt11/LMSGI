for $libro in //book
let $precioIva := ($libro/price*1.21)
order by $precioIva
return
<libro>
  <titulo>{$libro/title/text()}</titulo>
  <precio>{$libro/price/text()}</precio>
  <precioIva>{$precioIva}</titulo>
</libro>