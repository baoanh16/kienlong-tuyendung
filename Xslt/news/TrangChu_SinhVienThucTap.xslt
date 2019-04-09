<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <div class="row">
            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-12 col-lg-4 col-md-6">
            <figure>
                <img class="lazyload blur-up img-fluid w-100">
                    <xsl:attribute name="data-src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
                <h4>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </a>
                </h4>
                <xsl:if test="floor(ShowOption div 1) mod 2 = 1">
                    <p class="hot">HOT</p>
                </xsl:if>
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <figcaption>
                        <h5>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h5>
                        <p>
                            <i class="material-icons">place</i>
                            <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
                        </p>
                        <p>
                            <i class="material-icons">access_time</i>
                            <xsl:value-of disable-output-escaping="yes" select="LastModifiedDateText"></xsl:value-of>
                            <xsl:value-of disable-output-escaping="yes" select="LastModifiedDate"></xsl:value-of>
                        </p>
                    </figcaption>
                </a>
            </figure>
            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
        </div>
    </xsl:template>
</xsl:stylesheet>