<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0"
  
    xmlns:h="http://www.w3.org/1999/xhtml"
    xmlns:s="https://trac.frantovo.cz"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    exclude-result-prefixes="fn h s">
  
    <xsl:output method="html" indent="yes" encoding="UTF-8" />


   <xsl:param name="lang" select="$lang" />
	<xsl:param name="vstup" select="concat('W:\P\i18n\', $lang, '\vstup\')"/>
	<xsl:param name="vstupníPřípona" select="'.xml'"/>
	<xsl:param name="výstupníPřípona" select="'.xhtml'"/>
	<xsl:param name="vsuvkováPřípona" select="'.inc'"/>
	
	<xsl:param name="my_url"><xsl:apply-templates select="base_uri()"/></xsl:param>
	
	
	

  <!-- (1) -->
    <xsl:template match="/">
      <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html></xsl:text>
      <xsl:message>
        <xsl:value-of select="$vstup"/>
      </xsl:message>
      <xsl:message>
        <xsl:value-of select="$lang"/>
      </xsl:message>
        <html>
		<xsl:attribute name="lang"><xsl:value-of select="$lang"/></xsl:attribute>
            <head>
                <title><xsl:value-of select="s:html/s:title"/>
                  <xsl:apply-templates select="html/head/title/node()"/>
                </title>
				
                <link rel="canonical" href="{$my_url}" />
				
				
              <link href="/css/out.css" type="text/css" rel="stylesheet" />
              
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="async" src="https://www.googletagmanager.com/gtag/js?id=G-GKJB1DEX0S"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'G-GKJB1DEX0S');
</script>


                <!-- JS -->
                <script type="text/javascript">
                
   let slideUp = (target, duration = 200) => {
      target.style.transitionProperty = 'height, margin, padding';
      target.style.transitionDuration = duration + 'ms';
      target.style.boxSizing = 'border-box';
      target.style.height = target.offsetHeight + 'px';
      target.offsetHeight;
      target.style.overflow = 'hidden';
      target.style.height = 0;
      target.style.paddingTop = 0;
      target.style.paddingBottom = 0;
      target.style.marginTop = 0;
      target.style.marginBottom = 0;
      window.setTimeout(() => {
        target.style.display = 'none';
        target.style.removeProperty('height');
        target.style.removeProperty('padding-top');
        target.style.removeProperty('padding-bottom');
        target.style.removeProperty('margin-top');
        target.style.removeProperty('margin-bottom');
        target.style.removeProperty('overflow');
        target.style.removeProperty('transition-duration');
        target.style.removeProperty('transition-property');
        //alert("!");
      }, duration);
    }

    let slideDown = (target, duration = 200) => {
      target.style.removeProperty('display');
      let display = window.getComputedStyle(target).display;

      if (display === 'none')
        display = 'block';

      target.style.display = display;
      let height = target.offsetHeight;
      target.style.overflow = 'hidden';
      target.style.height = 0;
      target.style.paddingTop = 0;
      target.style.paddingBottom = 0;
      target.style.marginTop = 0;
      target.style.marginBottom = 0;
      target.offsetHeight;
      target.style.boxSizing = 'border-box';
      target.style.transitionProperty = "height, margin, padding";
      target.style.transitionDuration = duration + 'ms';
      target.style.height = height + 'px';
      target.style.removeProperty('padding-top');
      target.style.removeProperty('padding-bottom');
      target.style.removeProperty('margin-top');
      target.style.removeProperty('margin-bottom');
      window.setTimeout(() => {
        target.style.removeProperty('height');
        target.style.removeProperty('overflow');
        target.style.removeProperty('transition-duration');
        target.style.removeProperty('transition-property');
      }, duration);
    }



    var slideToggle = (target, duration = 200) => {
      if (window.getComputedStyle(target).display === 'none') {
        return slideDown(target, duration);
      } else {
        return slideUp(target, duration);
      }
    }



    var ready = (callback) => {
      if (document.readyState != "loading") callback();
      else document.addEventListener("DOMContentLoaded", callback);
    }



    ready(() => {

      document.querySelectorAll(".accordion-toggle").forEach(el => {
        el.addEventListener('click', function (e) {

          document.querySelectorAll(".accordion-toggle").forEach(box => {
            if (box != e.target) {
              slideUp(box.nextElementSibling);
            }
          });


          slideToggle(e.target.nextElementSibling, 200);

        });
      });


      var ls_url = location.href;
      ls_url = ls_url.replace(/https?:\/\/.*?\//, '/');
      ls_last_char = ls_url[ls_url.length - 1];
      if (ls_last_char == "/") {
        return;
      }

	//najdi aktuální položku a rozbal jí
      slideDown(document.querySelector(('.accordion-content a[href$="' + ls_url + '"]')).parentElement, 1);


      //$('.accordion-content a[href$="' + ls_url + '"]').addClass('accordion-content-active').parent().slideToggle(5);
      //$('.accordion-toggle a[href$="' + ls_url + '"]').addClass('accordion-content-active').parent().next().slideDown(5);

    });

                </script>


              
              <style>
                .red{color:red;}
                #leftcolumn{display:block;}
                #contentwrapper{order:1;}
                #leftcolumn{order:2;}
                
                @media (min-width: 48em) {
                  #leftcolumn{order:0;}
                }
              </style>
              
                <xsl:apply-templates select="document(concat($vstup, 'keywords', $vsuvkováPřípona))/node()"/>
                <link href="https://plus.google.com/108948344208539006234?prsrc=3" rel="publisher" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
              </head>

            <body>
        
     



              
                <xsl:apply-templates select="document(concat($vstup, 'solidblockmenu', $vsuvkováPřípona))/node()"/>
              
              <div style="clear:both;"></div>



              <div id="pagecontainer">

                <xsl:apply-templates select="document(concat($vstup, 'hamburger_menu', $vsuvkováPřípona))/node()"/>

                <div id="topsection">
		

                </div>

                <div id="mainContainer">

                  
                  <div id="contentwrapper">
                    <div id="main" class="manual">
                      <xsl:apply-templates select="html/body/node()"/>
                    </div>
                  </div>

                  <div id="leftcolumn">
                    <xsl:apply-templates select="document(concat($vstup, 'leftMenu', $vsuvkováPřípona))/node()"/>
                  </div>
                  
                  
                </div>

                <xsl:apply-templates select="document(concat($vstup, 'footer', $vsuvkováPřípona))/node()"/>
              
              </div>


              <xsl:apply-templates select="document(concat($vstup, 'addsearch_script', $vsuvkováPřípona))/node()"/>

              <xsl:apply-templates select="document(concat($vstup, 'LiveChat_script', $vsuvkováPřípona))/node()"/>




              <script>
                (function (window, document) {

                var layout = document.getElementById('pagecontainer'),
                menu = document.getElementById('menu'),
                menuLink = document.getElementById('menuLink'),
                content = document.getElementById('main');

                function toggleClass(element, className) {
                var classes = element.className.split(/\s+/),
                length = classes.length,
                i = 0;

                for (; i &lt; length; i++) {
                if (classes[i] === className) {
                classes.splice(i, 1);
                break;
                }
                }
                // The className is not found
                if (length === classes.length) {
                classes.push(className);
                }

                element.className = classes.join(' ');
                }

                function toggleAll(e) {
                var active = 'active';

                e.preventDefault();
                toggleClass(layout, active);
                toggleClass(menu, active);
                toggleClass(menuLink, active);
                }

                menuLink.onclick = function (e) {
                toggleAll(e);
                };

                content.onclick = function (e) {
                if (menu.className.indexOf('active') !== -1) {
                toggleAll(e);
                }
                };

                }(this, this.document));

              </script>              
              
            </body>
        </html>
    </xsl:template>

    <!-- (2) -->
    <xsl:template match="*">

        <xsl:element name="{name()}">
            <xsl:copy-of select="@*"/>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>



  <xsl:template match="faq_script">
    <xsl:apply-templates select="document(concat($vstup, 'faq_script', $vsuvkováPřípona))/node()"/>
  </xsl:template>


  <!-- (3) -->
    <xsl:template match="h:b">
        <strong><xsl:apply-templates/></strong>
    </xsl:template>


</xsl:stylesheet>
