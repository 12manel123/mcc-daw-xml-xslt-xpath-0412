<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
	<html>

		<body>
		  
			<h2>LLISTA DE LLIBRES</h2>

			<table border="0">

				<xsl:for-each select="library/book">
				
					<tr>
						<td><xsl:value-of select="title"/></td>
					</tr>
					
				</xsl:for-each>
<hr/>
			</table>

		</body>

	</html>
	</xsl:template>

</xsl:stylesheet> 
