<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt'
    exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <xsl:apply-templates select='/BannerList/Banner'></xsl:apply-templates>
    </xsl:template>

    <xsl:template match='Banner'>
        <section class="canhcam-rh-2" id="play-button">
            <xsl:attribute name='bg-img'>
                <xsl:value-of disable-output-escaping='yes' select='ImageUrl'></xsl:value-of>
            </xsl:attribute>
            <div class="block">
                <div class="embed-responsive embed-responsive-16by9 video">
                    <iframe id="video" frameborder="0" allowfullscreen="">
                        <xsl:attribute name='src'>
                            <xsl:text>//</xsl:text>
                            <xsl:value-of disable-output-escaping='yes' select='Description'></xsl:value-of>
                        </xsl:attribute>
                    </iframe>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col"></div>
                </div>
            </div>
        </section>
    </xsl:template>
</xsl:stylesheet>