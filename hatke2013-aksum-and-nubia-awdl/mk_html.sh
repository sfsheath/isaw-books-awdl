# cp ../../isaw/hatke2013-aksum-and-nubia/hatke2013-aksum-and-nubia.html index.xhtml
cp ../../isaw/hatke2013-aksum-and-nubia/hatke_map*.png .
xsltproc --nonet hatke2xhtml.xsl ../../isaw/hatke2013-aksum-and-nubia/hatke2013-aksum-and-nubia.xhtml > index.xhtml
