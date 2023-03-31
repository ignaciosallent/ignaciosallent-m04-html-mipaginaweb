<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="<css/estilo.css>" />
				<title>XSLT de Lista de Recetas</title>
			</head>
			<body>
				<h1> :-) LISTA DE RECETAS  </h1>
                <h2>De comidas</h2>
		 		<xsl:apply-templates select="//receta]">
          			<xsl:sort select="nombre" order="descending" />
				</xsl:apply-templates>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="receta">
		 <h3> <xsl:value-of select="nombre"/> </h3>
	</xsl:template>
</xsl:stylesheet>