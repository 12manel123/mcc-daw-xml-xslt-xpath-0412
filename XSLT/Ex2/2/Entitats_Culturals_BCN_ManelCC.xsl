<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
	<html>
<head>
<style>



a:link {
  color: #9036ad;
}

a:visited {
  color: #702987;
}

a:hover {
  color: #c100ff;
}

a:active {
  color: #46005d;
}
h1 {text-align: center;
color: #46005d;}
ul {
	text-align: left;
	list-style-type: square;
	color: #46005d;}

body {
font: 16px "Comic Sans MS", cursive;
background-color: #eaccff;
	
}
</style>
</head>
		<body>
			
		  <!--https://opendata-ajuntament.barcelona.cat/data/ca/dataset/entitats-->
		  <h1 id="index">ManelCC Exercicis XSLT</h1>
		  <ul>
		  <li><a href="#ex1">Ex1: Mostrar en tabla els noms de les institucions organitzades amb el tipus de numero (if)</a></li>
		  <li><a href="#ex2">Ex2: Mostrar tots els noms de les institucions, i després mostrar totes les coordenades (for-each)</a></li>
		  <li><a href="#ex3">Ex3: Mostrar les institucions que no siguin en barcelona amb negreta (chose)</a></li>
		  <li><a href="#ex4">Ex4: Mostrar l'adreça de cada institució ordenada per el nom de la institució (sort)</a></li>
		  <li><a href="#ex5">Ex5: Mostrar les coordenades X en vermell i les Y en blau (applytemplate)</a></li>
		  </ul>
		  <br/>
		  
		  
		  <h2 id="ex1"><a href="#index">Ex1: Mostrar en tabla els noms de les institucions organitzades amb el tipus de número: (if)</a></h2>
		  			 <table border="1">
				<tr>
					 <th>Entitats amb telefon</th>
					 <th>Entitats amb fax</th>
					 <th>No poseeix</th>
				</tr>
				<xsl:for-each select="ENTITIES/ENTITY">
				<tr>
					<td>
					<xsl:if test="PHONES/PHONE/DESCRIPTION='#'">
						<p><xsl:value-of select="@INSTITUTIONNAME"/></p>
						</xsl:if>
					</td>
					<td>
					<xsl:if test="PHONES/PHONE/DESCRIPTION='Fax'">
						<p><xsl:value-of select="@INSTITUTIONNAME"/></p>
						</xsl:if>
						</td>
						
					<td>
					<xsl:if test="PHONES/PHONE/DESCRIPTION!='#' mod PHONES/PHONE/DESCRIPTION!='Fax'">
						
						<p><xsl:value-of select="@INSTITUTIONNAME"/></p>
						</xsl:if>
					
					</td>
				</tr>	 
				</xsl:for-each>
				 </table>

	  
			  
		  <br/>
		  <h2 id="ex2"><a href="#index">Ex2: Mostrar tots els noms de les institucions, i després mostrar totes les coordenades: (for-each)</a></h2>
		  <h3>Noms institucions:</h3>
		<xsl:for-each select="ENTITIES/ENTITY">
				<p>Nombre: <xsl:value-of select="@INSTITUTIONNAME"/></p>
			</xsl:for-each>
			
			<h3>Coordenades: </h3>
			<xsl:for-each select="ENTITIES/ENTITY/COORDINATES">
			  <p>X: <xsl:value-of select="COORDADDRESSX"/></p>
			  <p>Y: <xsl:value-of select="COORDADDRESSY"/></p>
			  <br/>
			</xsl:for-each>
			
			
			
		  
		  <br/>
		  <h2 id="ex3"><a href="#index">Ex3: Mostrar les institucions que no siguin en barcelona amb negreta (chose)</a></h2>
		  <xsl:for-each select="ENTITIES/ENTITY">
			  
			  
			  <xsl:choose>
					<xsl:when test="ADDRESS/@CITY!='BARCELONA' and ADDRESS/@CITY!='Barcelona' and ADDRESS/@CITY!='barcelona'"> <!--Intentar que no hi hagi distincio entre mayus i minus-->
						<p background-color="red"><b>Institució <xsl:value-of select="@INSTITUTIONNAME"/> esta locada en la Ciutat <xsl:value-of select="ADDRESS/@CITY"/></b></p>
					</xsl:when>
					
					<xsl:otherwise>
						<p>Institució <xsl:value-of select="@INSTITUTIONNAME"/> en Barcelona</p>
					</xsl:otherwise>
			</xsl:choose>
			</xsl:for-each>

		  <br/>
		  <h2 id="ex4"><a href="#index">Ex4: Mostrar l'adreça de cada institució ordenada per el nom de la institució:(sort)</a></h2>
		  <xsl:for-each select="ENTITIES/ENTITY">
			  <xsl:sort select="@INSTITUTIONNAME"/>
			 <p>Institució <xsl:value-of select="@INSTITUTIONNAME"/> esta locada en <xsl:value-of select="ADDRESS/ADDRESS_TEXT"/></p>
			</xsl:for-each>

		  <br/>
		  <h2 id="ex5"><a href="#index">Ex5:Mostrar les coordenades X en vermell i les Y en blau: (applytemplate):</a></h2> <!--Implementar apply-->
	
		<xsl:apply-templates select="ENTITIES/ENTITY/COORDINATES"/>
	  		 
		  <br/>	
		</body>
	</html>
	</xsl:template>
	
	

	
<xsl:template match="ENTITIES/ENTITY/COORDINATES">
	<p>
		<xsl:apply-templates select="COORDADDRESSX"/>  
		<xsl:apply-templates select="COORDADDRESSY"/>
	</p>
</xsl:template>



<xsl:template match="COORDADDRESSX">
	CalleX: <span style="color:red">
	<xsl:value-of select="."/></span>
	<br />
</xsl:template>

<xsl:template match="COORDADDRESSY">
	CalleY: <span style="color:blue">
	<xsl:value-of select="."/></span>
	<br />
</xsl:template>
	
	


</xsl:stylesheet>
