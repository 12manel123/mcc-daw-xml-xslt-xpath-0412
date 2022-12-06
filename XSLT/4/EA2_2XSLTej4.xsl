<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
	<html>
<head>
<style>

</style>

</head>
		<body>
		  
			<h2>Editats el segle XXI</h2>
			<p>Els meus llibres aparti del 2001:</p>
			<ol>
			<xsl:for-each select="library/book">
				<xsl:if test="edition/year>2001">
			
				<li><b><xsl:value-of select="title"/></b></li>	
			
				</xsl:if>
				</xsl:for-each>
				</ol>
		
			
		</body>

	</html>
	</xsl:template>

</xsl:stylesheet>
