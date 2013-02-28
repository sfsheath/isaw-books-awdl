<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
       xmlns="http://www.w3.org/1999/xhtml"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dyn="http://exslt.org/dynamic"
    xmlns:exsl="http://exslt.org/common"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:saxon="http://icl.com/saxon"
    extension-element-prefixes="exsl dyn fn saxon"
	   version="1.0"
	   exclude-result-prefixes="h dyn fn"
	   xmlns:h="http://www.w3.org/1999/xhtml">
 <xsl:output encoding="UTF-8" indent="yes" method="xml" omit-xml-declaration="no" cdata-section-elements=""/>
 <xsl:preserve-space elements="h:script"/>
<xsl:template match="/">
 <xsl:apply-templates/>
</xsl:template>

<xsl:template match="h:body">
  <body>
  
   <div style="text-align:center;background:#aaa;margin:1em;padding:2em">
    <p>This work is available at the URI <b>http://dlib.nyu.edu/awdl/isaw/hatke2013-aksum-and-nubia/</b> as part of the NYU Library's <a href="http://dlib.nyu.edu/awdl">Ancient World Digital Library</a> and in partnership with the <a href="http://isaw.nyu.edu/" >Institute for the Study of the Ancient World</a> (ISAW).  Further information about ISAW's publication program is available on the <a href="http://isaw.nyu.edu/publications">ISAW</a> website. Please note that while the base URI of this document is stable, the exact content available is still undergoing development. Please note that the text contains Syriac and Ge'ez characters which render properly when the appropriate fonts are installed. Readers may want to try the fonts available from <a href="http://www.bethmardutho.org/index.php/resources/fonts.html">Beth Mardutho</a>, as well as the Gentium Plus font from <a href="http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&amp;id=Gentium_download">SIL</a></p>
    <p>©2013 George Hatke. Distributed under the terms of the Creative Commons Attribution No-derivatives License.</p>
    <a rel="cc:license" href="http://creativecommons.org/licenses/by-nc/3.0/"> 
     <img alt="Creative Commons License" style="border-width:0;margin-top:1em" src="http://i.creativecommons.org/l/by-nc/3.0/88x31.png" /> 
    </a>
    <p>Maps 1, 2 and 3 were produced and are copyright of the <a href="http://awmc.unc.edu/">Ancient World Mapping Center</a>.</p>
    <br/>
    <p>The printed version of this work is available for purchase from <a href="http://nyupress.org/books/book-details.aspx?bookid=11595#.US4bdaWT59k">NYU Press</a>.</p>
   </div>
  
   <xsl:apply-templates/>
  </body>

</xsl:template>


 <xsl:template match="h:head">
  <xsl:element name="head">
   <xsl:apply-templates />
   <script src="http://isawnyu.github.com/awld-js/lib/requirejs/require.min.js" type="text/javascript"></script>
   <script src="http://isawnyu.github.com/awld-js/awld.js" type="text/javascript"></script>
  </xsl:element>
  </xsl:template>


 <xsl:template match="@*|node()">
  <xsl:copy>
   <xsl:apply-templates select="@*|node()"/>
  </xsl:copy>
 </xsl:template>
 

<xsl:template match="h:a[@class='subject']">
 <xsl:element name="a">
  <xsl:apply-templates select="@*"/>
  <xsl:attribute name="target" >_blank</xsl:attribute>
  <xsl:apply-templates/>
 </xsl:element>
</xsl:template>
 
 <xsl:template match="h:p[@id]">
  
  <xsl:element name="p">
   <xsl:apply-templates select="@*"/>
   <a class="id_link" style="color:aaa;display:none" href="#{@id}">[☞<xsl:text> </xsl:text> <xsl:value-of select="@id"/>]</a><xsl:text> </xsl:text><xsl:apply-templates/>
   </xsl:element>
 </xsl:template>


 <xsl:template match="h:li[h:a[@href='#index']]"/>
 <xsl:template match="h:div[@id='index']"/>
 
 <xsl:template match="h:a[@class='index_entry_reference']"><xsl:apply-templates/></xsl:template>
 <xsl:template match="h:a[@class='index_entry_reference_ff']"><xsl:apply-templates/></xsl:template>
 

</xsl:stylesheet>


 
