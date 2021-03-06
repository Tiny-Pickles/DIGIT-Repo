<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
  <xsl:template match="/">
      <html>
          <head>
              <title>Behrend Travel Letter from France, July 19, 1955</title>
              <link rel="stylesheet" type="text/css" href="style.css"/>
          </head>
          <body>
              <h1>Behrend Travel Letter from France, July 19, 1955</h1>
              <section id ="letter">
                  <xsl:apply-templates select="descendant::letter"/>
              </section>
          </body>

      </html>
  </xsl:template>  
  
  <xsl:template match ="letter">
      <div class="dateline"><xsl:apply-templates select="child::dateLine"/></div>
      <xsl:apply-templates select="child::p"/>
  </xsl:template>
    <xsl:template match="p">
       <p>
           <span class="parNum"><xsl:value-of select="@n"/></span>
           <xsl:text>:  </xsl:text>
           <xsl:apply-templates/>
       </p>
    </xsl:template>
    <xsl:template match="placeName">
        <span class="place"><xsl:apply-templates/></span>
        
    </xsl:template>
</xsl:stylesheet>