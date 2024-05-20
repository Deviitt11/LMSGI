let $libros := //book

return
<resultados>
  {
    for $libro in $libros
    let $titulo := $libro/title
    let $numAutores := count($libro/author)
    return
      <libro>
        {concat($titulo, " (", $numAutores, " autores)")}
      </libro>
  }
</resultados>
