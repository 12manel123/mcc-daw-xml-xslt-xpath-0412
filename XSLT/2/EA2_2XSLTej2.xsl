<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
	<html>
<head>
<style>
	body {background-color: #ffe7a1}
</style>

</head>
		<body>
		  
			<h2>LLISTA DE LLIBRES</h2>
			
			<table>
			
				<xsl:for-each select="library/book">
				
					<tr>
						<td>
						<span style="color:blue"><xsl:value-of select="title"/></span> (<span style="color:red"> <xsl:value-of select="author"/></span>)
						</td>
					</tr>
					
				</xsl:for-each>
				
			</table>
			
		</body>

	</html>
	</xsl:template>

</xsl:stylesheet>
