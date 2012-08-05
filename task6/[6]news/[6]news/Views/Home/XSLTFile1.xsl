<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <xsl:for-each select="News/New">


          <h5 style=" font-size: 8pt; text-align: right;"> <xsl:value-of select="Date"/></h5>
          <h5 style="font-size: 16pt; text-align: center;"> <xsl:value-of select="Title"/> </h5>
          <img>
            <xsl:attribute name="src">
              <xsl:value-of select="Image"/>
            </xsl:attribute>
          </img>
           <xsl:value-of select="Text"/>
          <h3 style="font-size: 10pt; text-align: left;"> <xsl:value-of select="Author"/>  </h3>
          <h3 style="font-size: 8pt; text-align: right;"> <xsl:value-of select="Teg"/>  </h3>
          <HR></HR>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
