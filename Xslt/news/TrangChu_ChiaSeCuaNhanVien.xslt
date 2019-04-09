<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt'
    exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <section class="canhcam-home-4" bg-img="/Data/Sites/1/media/default/img/recruitment/home/home_share_bg.png">
            <div class="container">
                <div class="klb-title">
                    <h2 class="title">
                        <xsl:value-of disable-output-escaping='yes' select='/NewsList/ModuleTitle'></xsl:value-of>
                    </h2>
                </div>
                <div class="slide owl-carousel owl-theme">
                    <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match='News'>
        <div class="item">
            <figure>
                <div class="img">
                    <img class='lazyload blur-up img-fluid'>
                    <xsl:attribute name='data-src'>
                        <xsl:value-of select='ImageUrl'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name='alt'>
                        <xsl:value-of select='Title'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name='title'>
                        <xsl:value-of select='Title'></xsl:value-of>
                    </xsl:attribute>
                    </img>
                </div>
                <figcaption>
                    <h5 class="name">
                        <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                        <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
                    </h5>
                    <p class="position">
                        <xsl:value-of disable-output-escaping='yes' select='SubTitle'></xsl:value-of>
                    </p>
                    <p class="text">
                        <xsl:value-of disable-output-escaping='yes' select='BriefContent'></xsl:value-of>
                    </p>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>