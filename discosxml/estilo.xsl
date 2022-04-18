<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>

<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<h1>Discografias selectas</h1>
<div id="cuerpo">

<xsl:for-each select="grupos/grupo">
<xsl:sort select="nombreG"/> 
<div class="grupos">
	<div class="grupo">
	<h2><xsl:value-of select="nombreG"/></h2>
	</div>
	<div class="datosgrupo">
	<h3>Datos generales</h3>
	<ul>
	<li><b>Nacionalidad: </b><xsl:value-of select="nacionalidad"/></li>
	<li><b>Idioma: </b><xsl:value-of select="idioma"/></li>
	<li><b>Estilo: </b><xsl:value-of select="estilo"/></li>
	<li><b>Periodo de actividad: </b><xsl:value-of select="actividad"/></li>
	</ul>
	<div class="bandera">
		<xsl:choose>
			<xsl:when test="nacionalidad='EEUU'">
				<img src="banderas/us.png" width="62" height="42"/>
			</xsl:when>
			<xsl:when test="nacionalidad='UK'">
				<img src="banderas/uk.png" width="62" height="42"/>
			</xsl:when>
			<xsl:otherwise>
				<img src="banderas/jp.png" width="62" height="42"/>
			</xsl:otherwise>
		</xsl:choose>
	</div>
	</div>
	
	<div class="componentes">
	<h3>Componentes</h3>
	<ul>
	<xsl:for-each select="componentes/componente">
		<li><b><xsl:value-of select="nombre"/></b>
		      <xsl:if test="nombre/@estado!='Vivo'">
			<b class="muerto"><xsl:value-of select="nombre/@estado"/></b>
		      </xsl:if>
		      - <xsl:value-of select="rol"/>
		</li>
	</xsl:for-each>
	</ul>
	</div>
	
	<div class="discografia">
	<h3>Discografia</h3>
	<xsl:for-each select="discografia/disco">
	<div class="album">
	<p><b><xsl:value-of select="titulo"/></b>
	<img width="125" height="125" align="right" >
	    <xsl:attribute name="src">
		<xsl:value-of select="fotoCubierta" />
	    </xsl:attribute>
	</img></p>
	<ul>
		<li>Fecha de publicacion: <xsl:value-of select="fechaPublicacion"/></li>
		<li>Canciones: <xsl:value-of select="numCanciones"/></li>
		<li>Ventas: <xsl:value-of select="ventas"/></li>
		<li><a target="_blank">
		<xsl:attribute name="href">
			<xsl:value-of select="link"/>
		</xsl:attribute>
		Enlance Wikipedia</a></li>
	</ul>
	</div>
	</xsl:for-each>
	</div>

</div>
</xsl:for-each>
</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>