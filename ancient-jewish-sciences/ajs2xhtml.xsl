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
 <saxon:output method="xml" encoding="utf-8" href="chapter1.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='section1']"/></xsl:call-template>
</saxon:output>
 <saxon:output method="xml" encoding="utf-8" href="chapter2.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='section2']"/></xsl:call-template>
</saxon:output>
 <saxon:output method="xml" encoding="utf-8" href="chapter3.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='section3']"/></xsl:call-template>
</saxon:output>
 <saxon:output method="xml" encoding="utf-8" href="chapter4.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='section4']"/></xsl:call-template>
</saxon:output>
 <saxon:output method="xml" encoding="utf-8" href="chapter5.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='section5']"/></xsl:call-template>
</saxon:output>
 <saxon:output method="xml" encoding="utf-8" href="chapter6.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='section6']"/></xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="chapter7.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='section7']"/></xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="chapter8.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='section8']"/></xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="bibliography.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//*[@id='bibliography']"/></xsl:call-template>
</saxon:output>
</xsl:template>

<xsl:template name="chunk">
<xsl:param name="node"/>
<xsl:param name="node2"/>
<html xmlns="http://www.w3.org/1999/xhtml" 
>
  
  <xsl:apply-templates select="//h:head"/>
  <body>
  
   <div style="text-align:center;background:#aaa;margin:1em;padding:2em">
    <p>This document is part of the book <i>Ancient Jewish Sciences and the History of Knowledge in Second Temple Literature</i> available at the URI <b><a href="http://dlib.nyu.edu/awdl/isaw/ancient-jewish-sciences/">http://dlib.nyu.edu/awdl/isaw/ancient-jewish-sciences/</a></b>.  It is published as part of the NYU Library's <a href="http://dlib.nyu.edu/awdl">Ancient World Digital Library</a> and in partnership with the <a href="http://isaw.nyu.edu/" >Institute for the Study of the Ancient World</a> (ISAW).  Further information about ISAW's publication program is available on the <a href="http://isaw.nyu.edu/publications">ISAW</a> website. Please note that while the base URI of this document is stable, the exact content available is still undergoing development. Additionally, there are Hebrew characters in this publication. ISAW has used HTML5 markup to encode all Hebrew and has tested the pages in Safari on OS X. Feedback on the appearance of Hebrew characters is welcome, though ISAW cannot ensure that it will be correct in all combinations of browser and operating system.</p>
    <a href="http://creativecommons.org/licenses/by-nc/3.0/"> 
     <img alt="Creative Commons License" style="border-width:0;margin-top:1em" src="http://i.creativecommons.org/l/by-nc/3.0/88x31.png" /> 
    </a>
   </div>

<div class="section titlepage" id="titlepage">
<h1>Ancient Jewish Sciences</h1>
<div style="text-align:center"><i>Editors</i></div>
<h2 style="text-align:center">Jonathan Ben-Dov and Seth L. Sanders</h2>
<br/>
<div style="text-align:center">©2013 The Authors</div>
<br/>
</div>
  
  <xsl:apply-templates  select="$node"/>
  
  <xsl:if test="$node2"><xsl:apply-templates  select="$node2"/></xsl:if>
  </body>
 </html>
</xsl:template>


 <xsl:template match="h:head">
  <xsl:element name="head">
   <xsl:apply-templates />
   <script src="http://isawnyu.github.com/awld-js/lib/requirejs/require.min.js" type="text/javascript"></script>
   <script src="http://isawnyu.github.com/awld-js/awld.js" type="text/javascript"></script>
    <style type="text/css">

        body {max-width:8.5in; margin-top:.5in; margin-bottom:1in; margin-left:1in; margin-right:1in; writing-mode:lr-tb;}
        p { font-size:12pt; line-height:1.4em; margin-bottom:0.139in; margin-top:0in;  text-indent:.5em;text-align:justify  }
     p.no_indent {text-indent:0}
     sup {
    line-height:0;
    color:black;
    }
        .work_cited { margin-left:.5in;text-indent:-.5in }
        h1 {text-align: center}
        
 

 
 </style>
  </xsl:element>
  </xsl:template>

 
 <xsl:template match="@*|node()">
  <xsl:copy>
   <xsl:apply-templates select="@*|node()"/>
  </xsl:copy>
 </xsl:template>
 
 
 <xsl:template match="h:p[@id]">
  
  <xsl:element name="p">
   <xsl:apply-templates select="@*"/>
   <a class="id_link" style="color:aaa;display:none" href="#{@id}">[☞<xsl:text> </xsl:text> <xsl:value-of select="@id"/>]</a><xsl:text> </xsl:text><xsl:apply-templates/>
   </xsl:element>
 </xsl:template>


</xsl:stylesheet>
 
