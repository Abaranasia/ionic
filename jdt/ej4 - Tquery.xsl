<html>
	<head></head>
	<body> 
	
	{ for $casa in doc("juego de tronos.xml")//casas/casa
	let $vasallos := distinct-values($casa//miembros/vasallos) 
	return         
		<span> 
			<h1>{ $casa/nombrec/text() }</h1> 
			<ul> { for $vasallo in $vasallos return 
			   <li>{ $vasallo/nombre/text() }</li> } 
			</ul> 
		</span> } 

	</body>
</html> 

<!-- alternativa -->

for $casa in doc("juego de tronos.xml")/casas/casa

let $nombre := distinct-values($casa/nombrec)
return 
<div>
  <h2> Vasallos de la casa {data($nombre)} </h2>
  <ul> { for $vasallos in $casa/miembros/vasallos/vasallo return
    <li>{ $vasallos/nombre/text() }</li> }
</ul>
</div>