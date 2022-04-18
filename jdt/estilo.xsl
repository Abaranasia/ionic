<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<title>Casas de Poniente </title>
<meta charset="utf-8" /> 
<link rel="stylesheet" type="text/css" href="style.css" />
<link href="https://fonts.googleapis.com/css?family=Italianno" rel="stylesheet" />
</head>
<body>
<div id="cuerpo">
<h1>Casas de Poniente</h1>

	<xsl:for-each select="casas/casa">
<xsl:sort select="nombrec" order="descending"/> 	
	<div class="casa">
	
		<div class="blason">
			<img width="207" height="320">
				<xsl:attribute name="src">
					<xsl:value-of select="blason" />
				</xsl:attribute>
			</img>
		</div>
		
		<div class="datos">
			<div class="nombreylema" style="color: {estilo/colorLema}; background-color:{estilo/fondo}; background-image: {estilo/fotoFondo}">
				<h2 style="color: {estilo/colorNombreC}"><xsl:value-of select="nombrec"/></h2>
				<p><b>Lema: </b><xsl:value-of select="lema"/></p>
			</div>
			<p><b>Asentamiento: </b><xsl:value-of select="asentamiento"/></p>
			<p><b>Region: </b><xsl:value-of select="region"/></p>
			<p><b>Fundación: </b><xsl:value-of select="fundacion"/></p>
		</div>
		
		<div class="descripcion">
			<h3>Descripción</h3>
			<p><xsl:value-of select="descripcion"/></p>	
		</div>
		
		
		<div class="integrantes">
			<div class="miembros">
				<h3>Progenitores</h3>
				<p><b>Padre: </b><xsl:value-of select="miembros/padre"/>
					  <xsl:if test="miembros/padre/@estado">
					<b class="muerto"><xsl:value-of select="miembros/padre/@estado"/></b>
					  </xsl:if>
				</p>
				<p><b>Madre: </b><xsl:value-of select="miembros/madre"/>
					<xsl:if test="miembros/madre/@estado">
					<b class="muerto"><xsl:value-of select="miembros/madre/@estado"/></b>
					  </xsl:if>
				</p>
			</div>
			
			<div class="miembros">
				<h3>Descendientes</h3>
				<ul>
				<xsl:for-each select="miembros/descendientes/hijo">
					<li>
					<xsl:choose>
						<xsl:when test="sexo='hombre'">
						<b>hijo: </b>
						</xsl:when>
						  <xsl:otherwise>
						<b>hija: </b>
						  </xsl:otherwise>
						</xsl:choose>
					<xsl:value-of select="nombre"/>
					 (<xsl:value-of select="legitimidad/@tipo"/>)
					<xsl:if test="@estado">
						<b class="muerto"><xsl:value-of select="@estado"/></b>
					</xsl:if>
					 </li>
				</xsl:for-each>
				</ul>
			</div>
			
			<div class="miembros">
				<h3>Vasallos</h3>
				<ul>
				<xsl:for-each select="miembros/vasallos/vasallo">
					<li>
					<xsl:value-of select="nombre"/> (<xsl:value-of select="titulo"/>)
					<xsl:if test="@estado">
						<b class="muerto"><xsl:value-of select="@estado"/></b>
					</xsl:if>
					</li>
				</xsl:for-each>
				</ul>
			</div>
			
		</div>
	</div>
	</xsl:for-each>
</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>