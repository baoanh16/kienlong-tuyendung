<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt'
    exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <xsl:apply-templates select='/ZoneList/Zone'></xsl:apply-templates>
    </xsl:template>

    <xsl:template match='Zone'>
        <xsl:choose>
            <xsl:when test="position() = 1">
                <section class="canhcam-rr-1">
                    <div class="article">
                        <div class="row canhcam-card-wrapper">
                            <div class="col-12 px-lg-0">
                                <xsl:apply-templates select='News' mode="ZoneNews1"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </section>
            </xsl:when>
            <xsl:when test="position() = 2">
                <section class="canhcam-rr-2">
                    <xsl:attribute name='bg-img'>
                        <xsl:value-of disable-output-escaping='yes' select='ImageUrl'></xsl:value-of>
                    </xsl:attribute>
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <h2 class="head-title text-center">
                                    <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                                </h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 px-lg-0">
                                <div class="block-rule">
                                    <xsl:apply-templates select='News' mode="ZoneNews2"></xsl:apply-templates>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </xsl:when>
            <xsl:when test="position() = 3">
                <section class="canhcam-rr-3">
                    <div class="container">
                        <h2 class="title">
                            <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                        </h2>
                        <div class="description">
                            <xsl:value-of disable-output-escaping='yes' select='Description'></xsl:value-of>
                        </div>
                        <div class="content">
                            <xsl:apply-templates select='News' mode="ZoneNews3"></xsl:apply-templates>
                        </div>
                    </div>
                </section>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template match='News' mode="ZoneNews1">
        <div class="canhcam-card">
            <div class="canhcam-card-content">
                <div class="canhcam-card-content-wrapper">
                    <h3>
                        <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                        <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
                    </h3>
                    <xsl:value-of disable-output-escaping='yes' select='BriefContent'></xsl:value-of>
                </div>
            </div>
            <div class="canhcam-card-image" bg-img="./img/recruitment/rules/rules_banner_1.png">
                <xsl:attribute name='bg-img'>
                    <xsl:value-of disable-output-escaping='yes' select='ImageUrl'></xsl:value-of>
                </xsl:attribute>
                <figure>
                    <img class="w-100 d-lg-none">
                    <xsl:attribute name='src'>
                        <xsl:value-of select='ImageUrl'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name='alt'>
                        <xsl:value-of select='Title'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name='title'>
                        <xsl:value-of select='Title'></xsl:value-of>
                    </xsl:attribute>
                    </img>
                </figure>
            </div>
        </div>
    </xsl:template>

    <xsl:template match='News' mode="ZoneNews2">
        <div class="block-quote-wrapper">
            <div class="block-quote">
                <h3>
                    <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                </h3>
                <xsl:value-of disable-output-escaping='yes' select='BriefContent'></xsl:value-of>
            </div>
        </div>
    </xsl:template>

    <xsl:template match='News' mode="ZoneNews3">
        <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
        <xsl:value-of disable-output-escaping='yes' select='BriefContent'></xsl:value-of>
    </xsl:template>
</xsl:stylesheet>