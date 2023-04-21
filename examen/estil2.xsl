<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>Ejemplo XSLT</title>
			</head>
			<body>
				<h1> :-) LISTA DE Animales  </h1>
                <h2>De color verde</h2>
		 		<xsl:apply-templates select="//animal[color='Verd']">
          			<xsl:sort select="nom" order="descending" />
				</xsl:apply-templates>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="animal">
		 <h3> <xsl:value-of select="nom"/> </h3>
	</xsl:template>
</xsl:stylesheet>