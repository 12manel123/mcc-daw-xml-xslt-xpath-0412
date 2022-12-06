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
		  <!--https://opendata-ajuntament.barcelona.cat/data/ca/dataset/entitats-->
		  <h2>Entitats Culturals en Barcelona</h2>
		  <hr/>
			
			<xsl:for-each select="ENTITIES/ENTITY">
				<p><b>Nom Institució: </b>
			<xsl:value-of select="@INSTITUTIONNAME"/></p>
				<p><b>Secció: </b>
			<xsl:value-of select="@SECTIONNAME"/></p>
			
			<ol>
			<xsl:for-each select="PHONES/PHONE">
			<li><p><b>Telefon: </b>
			<xsl:value-of select="PHONENUMBER"/>: <xsl:value-of select="DESCRIPTION"/></p></li>
			</xsl:for-each>
			</ol>
			
			<p><b>Adreça: </b>C/<xsl:value-of select="ADDRESS/@STREET"/>, <xsl:value-of select="ADDRESS/@STREETNUM_S"/>, Pis: <xsl:value-of select="ADDRESS/@FLOOR"/>, Barri: <xsl:value-of select="ADDRESS/@BARRI"/> Districte: <xsl:value-of select="ADDRESS/@DISTRICT"/>, <xsl:value-of select="ADDRESS/@CITY"/>: <xsl:value-of select="ADDRESS/@POSTALCODE"/>, <xsl:value-of select="ADDRESS/@TIPUS_VIA"/>, Carrer codi: <xsl:value-of select="ADDRESS/@CODI_CARRER"/></p>
			<p><b>Adreça resum: </b><xsl:value-of select="ADDRESS/ADDRESS_TEXT"/></p>
			
			<p><b>Coordenades:</b> X:<xsl:value-of select="COORDINATES/COORDADDRESSX"/> Y: <xsl:value-of select="COORDINATES/COORDADDRESSX"/></p>
			
			<p><b>Tema del sector 1:</b><xsl:value-of select="SECTORTEMATIC1/DESCRIPTION"/>, <xsl:value-of select="SECTORTEMATIC1/@ID"/></p>
			<p><b>Tema del sector 2:</b><xsl:value-of select="SECTORTEMATIC2/DESCRIPTION"/>, <xsl:value-of select="SECTORTEMATIC2/@ID"/></p>
			<p><b>Tema del sector 3:</b><xsl:value-of select="SECTORTEMATIC3/DESCRIPTION"/>, <xsl:value-of select="SECTORTEMATIC3/@ID"/></p>
			<p><b>Gau: </b><xsl:value-of select="GRAU/DESCRIPTION"/>, <xsl:value-of select="GRAU/@CODI"/></p>
			<p><b>Juridica: </b><xsl:value-of select="JURIDICA/DESCRIPTION"/>, <xsl:value-of select="JURIDICA/@CODI"/></p>
			<p><b>Ambit: </b><xsl:value-of select="AMBIT/DESCRIPTION"/>, <xsl:value-of select="AMBIT/@ID"/></p>
			
			<ul>
			<xsl:for-each select="INTERESTS/INTEREST">
			<li><p><b>Interes: </b>
			<xsl:value-of select="II_DESCRIPTION"/>: <xsl:value-of select="VALUE"/></p></li>
			</xsl:for-each>
			</ul>
			<hr/>
			
			</xsl:for-each>
		
			
		</body>

	</html>
	</xsl:template>

</xsl:stylesheet>
