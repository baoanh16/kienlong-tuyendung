<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <div class="tieudiem-ct">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <h1>
                            <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of>
                            <xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </h1>
                        <div class="created-date">
                            <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/CreatedDD"></xsl:value-of>
                            <xsl:text>.</xsl:text>
                            <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/CreatedMM"></xsl:value-of>
                            <xsl:text>.</xsl:text>
                            <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/CreatedYYYY"></xsl:value-of>
                        </div>
                        <div class="brief-content">
                            <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/BriefContent"></xsl:value-of>
                        </div>
                        <div class="full-content">
                            <xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="other-news">
                            <h5 class="other-title">
                                <xsl:value-of disable-output-escaping='yes' select='/NewsDetail/OtherNewsText'></xsl:value-of>
                            </h5>
                            <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="NewsOther">
        <div class="item">
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
                <figure>
                    <div class="img">
                        <img class="lazyload blur-up">
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
                    </div>
                    <figcaption>
                        <h2 class="news-title">
                            <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                        </h2>
                        <time>
                            <xsl:value-of disable-output-escaping='yes' select='CreatedDate'></xsl:value-of>
                        </time>
                    </figcaption>
                </figure>
            </a>
            <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
        </div>
    </xsl:template>
</xsl:stylesheet>