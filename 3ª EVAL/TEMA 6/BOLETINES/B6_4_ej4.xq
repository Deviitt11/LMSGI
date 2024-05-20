let $libros := //book

return
<resultado>
  {
    for $libro in $libros
    let $titulo := $libro/title
    let $numAutores := count($libro/author)
    return
      <libro>
        <titulo>{$titulo/text()}</titulo>
        <numAutores>{$numAutores}</numAutores>
      </libro>
  }
</resultado>
