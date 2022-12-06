<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
	<html>
<head>
<style>
	body {background-color: #d5d5d5
</style>

</head>
		<body>
		  
			
			
	
			<h2>Informe detallat</h2>
				<xsl:for-each select="library/book">
					<hr/>

						<p><b>Titulo: </b>
						<xsl:value-of select="title"/></p>

						<p><b>Autor: </b>
						<xsl:value-of select="author"/></p>
						
						<!--<p><b>Editorial: </b>
						<xsl:value-of select="edition/publisher"/></p>
					
						<p><b>Año: </b>
						<xsl:value-of select="edition/year"/></p>
						
						<p><b>ISBN: </b>
						<xsl:value-of select="edition/isbn"/></p>
						
						<p><b>Num Pag: </b>
						<xsl:value-of select="edition/pages"/></p>-->
						
							<xsl:for-each select="edition">
				
			
							<p><b>Editorial: </b>
							<xsl:value-of select="publisher"/></p>
					
							<p><b>Año: </b>
							<xsl:value-of select="year"/></p>
						
							<p><b>ISBN: </b>
							<xsl:value-of select="isbn"/></p>
						
							<p><b>Num Pag: </b>
							<xsl:value-of select="pages"/></p>
						
				</xsl:for-each>
						
				</xsl:for-each>
				
				
				

		
		</body>

	</html>
	</xsl:template>

</xsl:stylesheet>
