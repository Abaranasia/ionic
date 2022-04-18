for $casa in doc("juego de tronos.xml")/casas/casa

let $nombre := distinct-values($casa/nombrec)
return 
<div>
  <h2> Vasallos de la casa {data($nombre)} </h2>
  <ul> { for $vasallo in $casa/miembros/vasallos/vasallo return
    <li>{ $vasallo/nombre/text() } - ({ $vasallo/titulo/text() })</li> }
</ul>
</div>