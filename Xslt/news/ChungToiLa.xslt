<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt'
    exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <section class="canhcam-rw-1">
            <div class="article">
                <div class="row">
                    <div class="col">
                        <h1 class="head-title text-center">
                            <xsl:value-of disable-output-escaping='yes' select='/ZoneList/ZoneTitle'></xsl:value-of>
                        </h1>
                    </div>
                </div>
                <div class="row canhcam-card-wrapper">
                    <div class="col-12 px-lg-0">
                        <xsl:apply-templates select='/ZoneList/Zone' mode="Zone1_1"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </section>
        <section class="canhcam-rw-2">
            <div class="container">
                <xsl:apply-templates select='/ZoneList/Zone' mode="Zone1_2"></xsl:apply-templates>
            </div>
        </section>
    </xsl:template>

    <xsl:template match='Zone' mode="Zone1_1">
        <xsl:if test="position() = 1">
            <xsl:apply-templates select='News' mode="ZoneNews1"></xsl:apply-templates>
        </xsl:if>
    </xsl:template>

    <xsl:template match='Zone' mode="Zone1_2">
        <xsl:if test="position() = 2">
            <div class="mission">
                <div class="img mb-5 text-center mb-lg-0">
                    <img class='img-fluid'>
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
                </div>
                <div class="bg-img pt-5 d-none d-lg-block">
                    <img class='w-100'>
                    <xsl:attribute name='src'>
                        <xsl:value-of select='SecondImageUrl'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name='alt'>
                        <xsl:value-of select='Title'></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name='title'>
                        <xsl:value-of select='Title'></xsl:value-of>
                    </xsl:attribute>
                    </img>
                </div>
                <div class="row mission-list">
                    <xsl:apply-templates select='News' mode="ZoneNews2"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
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
            <div class="canhcam-card-image">
                <xsl:attribute name='bg-img'>
                    <xsl:value-of disable-output-escaping='yes' select='ImageUrl'></xsl:value-of>
                </xsl:attribute>
                <figure>
                    <img class='w-100 d-lg-none'>
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
        <div class="col-lg-4 box">
            <div class="item">
                <h5 class="kl-title">
                    <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                    <xsl:value-of select='/EditLink' disable-output-escaping='yes'></xsl:value-of>
                </h5>
                <xsl:value-of disable-output-escaping='yes' select='BriefContent'></xsl:value-of>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>