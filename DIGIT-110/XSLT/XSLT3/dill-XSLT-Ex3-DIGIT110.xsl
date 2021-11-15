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
            <title>Poems from the Montage of a Dream Deferred </title>
            <link rel="stylesheet" type="text/css" href="dill-XSLT-Ex3.css" />
        </head>
        <body>
            <h1 class="startTitle">Poems from the Montage of a Dream Deferred</h1>
            <h2 class="startTitle">by Langston Hughes</h2>
            <section> 
                <div><xsl:apply-templates select="descendant::poem"/></div>
            </section>
            
                <ul><li><xsl:apply-templates select="descendant::stanza"/></li></ul>
            
        </body>   
    </html>
    </xsl:template>
    <xsl:template match="poem">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="poemTitle">
        <h3 id="poemTitles"><xsl:apply-templates/></h3>
    </xsl:template>
    <xsl:template match="stanza">
        <section class="stanza"><xsl:apply-templates/></section>
    </xsl:template>
    <xsl:template match="line">
        <div class = "line"><span class="lineNum"><xsl:value-of select="@n"/>: </span>
            <xsl:apply-templates/></div>
    </xsl:template>
    
</xsl:stylesheet>
