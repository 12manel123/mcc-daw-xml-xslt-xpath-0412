<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
	<html>
<head>
<style>
h2 {text-align: center;}
</style>

</head>
		<body>
		  
			<h2>Informe detallat</h2>
			
			<table border="1">
			<tr style="background-color:#a8f0ff">
						<th>Titulo</th>
						<th>Autor</th>
						<th>Edicions</th>
					</tr>
				<xsl:for-each select="library/book">
				<xsl:sort select="title"/>
					
					<tr>
						<td>
						<b><xsl:value-of select="title"/><br/></b>(<xsl:value-of select="title"/>)
						</td>
						
						<td>
						<xsl:value-of select="author"/>
						</td>
						<td>
							<ul style="list-style-type:circle"> <!--Estil ha de ser amb - -->
								<li><xsl:value-of select="edition/publisher"/>, <xsl:value-of select="edition/year"/> (<xsl:value-of select="edition/pages"/> páginas)</li>
							</ul>
						
						</td>
					</tr>
					
				</xsl:for-each>
				
			</table>
			
		</body>

	</html>
	</xsl:template>

</xsl:stylesheet>
