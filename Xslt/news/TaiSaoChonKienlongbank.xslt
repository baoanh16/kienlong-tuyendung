<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt'
    exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <section class="canhcam-rwh-1">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="head_quote text-center">
                            <h2>
                                <xsl:value-of disable-output-escaping='yes' select='/ZoneList/ZoneTitle'></xsl:value-of>
                            </h2>
                        </div>
                    </div>
                </div>
                <xsl:apply-templates select='/ZoneList/Zone'></xsl:apply-templates>
            </div>
        </section>
    </xsl:template>
    <xsl:template match='Zone'>
        <xsl:choose>
            <xsl:when test="position() = 1">
                <div class="row">
                    <div class="col text-center">
                        <h5 class="mid-title">
                            <xsl:value-of disable-output-escaping='yes' select='Description'></xsl:value-of>
                        </h5>
                    </div>
                </div>
                <div class="row">
                    <xsl:apply-templates select='News' mode="ZoneNews1"></xsl:apply-templates>
                </div>
            </xsl:when>
            <xsl:when test="position() = 2">
                <div class="row">
                    <div class="col text-center">
                        <h5 class="mid-title">
                            <xsl:value-of disable-output-escaping='yes' select='Description'></xsl:value-of>
                        </h5>
                    </div>
                </div>
                <div class="row">
                    <xsl:apply-templates select='News' mode="ZoneNews2"></xsl:apply-templates>
                </div>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template match='News' mode="ZoneNews1">
        <div class="col-lg col-sm-6 col-12">
            <figure class="small-reason">
                <img class='w-100'>
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
                <figcaption>
                    <h4>
                        <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                        <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
                    </h4>
                </figcaption>
                <div class="info">
                    <xsl:value-of disable-output-escaping='yes' select='BriefContent'></xsl:value-of>
                </div>
            </figure>
        </div>
    </xsl:template>

    <xsl:template match='News' mode="ZoneNews2">
        <div class="col-12 col-lg">
            <figure class="big-reason">
                <xsl:attribute name='bg-img'>
                    <xsl:value-of disable-output-escaping='yes' select='ImageUrl'></xsl:value-of>
                </xsl:attribute>
                <div class="icon">
                    <xsl:choose>
                        <xsl:when test="position() = 1">
                            <i class="material-icons">card_travel</i>
                        </xsl:when>
                        <xsl:when test="position() = 2">
                            <i class="material-icons">update</i>
                        </xsl:when>
                        <xsl:when test="position() = 3">
                            <i class="material-icons">record_voice_over</i>
                        </xsl:when>
                    </xsl:choose>
                </div>
                <figcaption>
                    <div class="quote text-center">
                        <h4>
                            <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                            <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
                        </h4>
                        <xsl:value-of disable-output-escaping='yes' select='BriefContent'></xsl:value-of>
                    </div>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>