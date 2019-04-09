<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt'
    exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <section class="canhcam-boxes-1">
            <div class="row no-gutters">
                <xsl:apply-templates select='/ZoneList/Zone' mode="Zone1"></xsl:apply-templates>
            </div>
        </section>
    </xsl:template>

    <xsl:template match='Zone' mode="Zone1">
        <xsl:if test="IsActive='true'">
            <xsl:apply-templates select='Zone' mode="Zone2"></xsl:apply-templates>
        </xsl:if>
    </xsl:template>

    <xsl:template match='Zone' mode="Zone2">
        <div class="col-lg-6 item">
            <xsl:if test="IsActive='true'">
                <xsl:attribute name='class'>
                    <xsl:text>col-lg-6 item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a>
                <xsl:attribute name='href'>
                    <xsl:value-of select='Url'></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name='target'>
                    <xsl:value-of select='Target'></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name='title'>
                    <xsl:value-of select='Title'></xsl:value-of>
                </xsl:attribute>
                <figure>
                    <div class="img">
                        <img class='lazyload blur-up w-100'>
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
                        <h2>
                            <xsl:value-of disable-output-escaping='yes' select='Description'></xsl:value-of>
                        </h2>
                    </figcaption>
                </figure>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>