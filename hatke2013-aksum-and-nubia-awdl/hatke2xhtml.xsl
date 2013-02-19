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
 <saxon:output method="xml" encoding="utf-8" href="preface.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//h:div[@id='preface']"/></xsl:call-template>
</saxon:output>
 <saxon:output method="xml" encoding="utf-8" href="editorial.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//h:div[@id='section0']"/></xsl:call-template>
</saxon:output>
 <saxon:output method="xml" encoding="utf-8" href="introduction.xhtml">
<xsl:call-template name="chunk" >
 <xsl:with-param name="node" select="//h:div[@id='section1']"/>
 <xsl:with-param name="node2" select="//h:div[@id='plates']"/>
</xsl:call-template>
</saxon:output>
<saxon:output method="xml" encoding="utf-8" href="texts.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//h:div[@id='section2']"/></xsl:call-template>
</saxon:output>
 <saxon:output method="xml" encoding="utf-8" href="indices.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//h:div[@id='section3']"/></xsl:call-template>
</saxon:output>
 <saxon:output method="xml" encoding="utf-8" href="notes.xhtml">
<xsl:call-template name="chunk" ><xsl:with-param name="node" select="//h:div[@id='section4']"/></xsl:call-template>
</saxon:output>
</xsl:template>

<xsl:template name="chunk">
<xsl:param name="node"/>
<xsl:param name="node2"/>
 <html xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.w3.org/1999/xhtml http://www.w3.org/MarkUp/SCHEMA/xhtml-rdfa-1.xsd"
  xml:lang="en"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:bibo="http://purl.org/ontology/bibo/"
  xmlns:cc="http://creativecommons.org/ns#"
  xmlns:dcterms="http://purl.org/dc/terms/"
  xmlns:dcmitype="http://purl.org/dc/dcmitype/"
  xmlns:foaf="http://xmlns.com/foaf/0.1"
  xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
  >
  
  <xsl:apply-templates select="//h:head"/>
  <body>
  
   <div style="text-align:center;background:#aaa;margin:1em;padding:2em">
    <p>This work is available at the URI <b>http://dlib.nyu.edu/awdl/isaw/amheida-i-otrim-1</b> as part of the NYU Library's <a href="http://dlib.nyu.edu/awdl">Ancient World Digital Library</a> and in partnership with the <a href="http://isaw.nyu.edu/" >Institute for the Study of the Ancient World</a> (ISAW).  Further information about ISAW's publication program is available on the <a href="http://isaw.nyu.edu/publications">ISAW</a> website. Please note that while the base URI of this document is stable, the exact content available is still undergoing development. Additionally, the Greek and Demotic characters will look best with the "New Athena Unicode" and "Umschrift_TTn" fonts installed. </p>
    <a href="http://creativecommons.org/licenses/by-nc/3.0/"> 
     <img alt="Creative Commons License" style="border-width:0;margin-top:1em" src="http://i.creativecommons.org/l/by-nc/3.0/88x31.png" /> 
    </a>
   </div>

<div class="section titlepage" id="titlepage">
<div><b>AMHEIDA I:</b></div>
<div><b>OSTRAKA FROM TRIMITHIS</b></div>
<div><b>VOLUME 1</b></div>
<div>Texts from the 2004–2007 Seasons</div>
<div><i>by</i></div>
<div>Roger S. Bagnall and Giovanni R. Ruffini</div>
<div><i>with contributions by</i></div>
<div>Raffaella Cribiore and Günter Vittmann</div>
<br/>
<div>© Roger S. Bagnall and Giovanni Ruffini 2012</div>
<br/>
<div><a href="index.xhtml">Table of Contents</a></div>
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
  </xsl:element>
  </xsl:template>

 <xsl:template name="old">
  <xsl:element name="body">
   <center style="background:#aaa;margin:1em;padding:.3em">
    <p style="width:80%">This work is available at the URI <b>http://dlib.nyu.edu/awdl/isaw/amheida-i-otrim-1</b> as part of the NYU Library's <a href="http://dlib.nyu.edu/awdl" style="text-decoration:underline">Ancient World Digital Library</a> in partnership with the <a href="http://isaw.nyu.edu/publications/isaw-papers" style="text-decoration:underline">Institute for the Study of the Ancient World</a> (ISAW).  More information about <i>ISAW Papers</i> is available on the <a href="http://isaw.nyu.edu/publications/isaw-papers" style="text-decoration:underline">ISAW</a> website.</p>
    <a href="http://creativecommons.org/licenses/by/3.0/"> 
  <img alt="Creative Commons License" style="border-width:0;margin-top:1em" src="http://i.creativecommons.org/l/by/3.0/88x31.png" /> 
    </a>
    <p onclick="show_id_links();">Click here to show/hide internal links to individual paragraphs, tables, etc.</p>
 </center>
 <xsl:apply-templates/>
 </xsl:element>
   
 </xsl:template>

 <xsl:template match="@*|node()">
  <xsl:copy>
   <xsl:apply-templates select="@*|node()"/>
  </xsl:copy>
 </xsl:template>
 
 <xsl:template match="@href[parent::h:a[@class='noteref']]">
 <xsl:attribute name="href">notes.xhtml<xsl:value-of select="."/></xsl:attribute>
 </xsl:template>

 <xsl:template match="@xml:lang">
 <xsl:attribute name="xml:lang"><xsl:value-of select="."/></xsl:attribute>
 <xsl:attribute name="lang"><xsl:value-of select="."/></xsl:attribute>
 </xsl:template>

<xsl:template match="*[@class='trismegistos_number']">
 <a target="_new" class="trismegistos_number" href="http://www.trismegistos.org/text/{substring(.,5)}"><xsl:apply-templates/></a>
</xsl:template>

<xsl:template match="h:a[@class='noteref']">
 <xsl:element name="a">
  <xsl:apply-templates select="@*"/>
  <xsl:attribute name="target" >_new</xsl:attribute>
  <xsl:apply-templates/>
 </xsl:element>
</xsl:template>
 
 <xsl:template match="h:a[@class='noteref_link']">
  <sup>
   <xsl:apply-templates/>
  </sup>
 </xsl:template>

<xsl:template match="h:a[@class='subject']">
 <xsl:element name="a">
  <xsl:apply-templates select="@*"/>
  <xsl:attribute name="target" >_new</xsl:attribute>
  <xsl:apply-templates/>
 </xsl:element>
</xsl:template>
 
 <xsl:template match="h:p[@id]">
  
  <xsl:element name="p">
   <xsl:apply-templates select="@*"/>
   <a class="id_link" style="color:aaa;display:none" href="#{@id}">[☞<xsl:text> </xsl:text> <xsl:value-of select="@id"/>]</a><xsl:text> </xsl:text><xsl:apply-templates/>
   </xsl:element>
 </xsl:template>

 <xsl:template match="h:b[@class='catalogref']">
 <b><a target="_new" href="texts.xhtml#catalog{.}"><xsl:apply-templates/></a></b>
 </xsl:template>
 
 <xsl:template match="@style[parent::h:img[(@class='block') or (@class='page')]]"/>

</xsl:stylesheet>
 
