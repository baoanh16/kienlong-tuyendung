<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt'
    exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <section class="canhcam-rposd-1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-12">
                        <div class="block-title">
                            <h3>
                                <xsl:value-of disable-output-escaping='yes' select='/NewsDetail/Title'></xsl:value-of>
                                <xsl:value-of disable-output-escaping='yes' select='/NewsDetail/EditLink'></xsl:value-of>
                            </h3>
                            <p class="date">
                                <i class="fas fa-calendar-alt"></i>
                                <xsl:value-of disable-output-escaping='yes' select='/NewsDetail/CreatedDate'></xsl:value-of>
                            </p>
                        </div>
                        <xsl:value-of disable-output-escaping='yes' select='/NewsDetail/FullContent'></xsl:value-of>
                        <div class="block-action">
                            <a class="apply btn" href="#">
                                <xsl:value-of disable-output-escaping='yes' select='/NewsDetail/ApplyNowText'></xsl:value-of>
                            </a>
                            <p>
                                <xsl:value-of disable-output-escaping='yes' select='/NewsDetail/OrText'></xsl:value-of>
                            </p>
                            <a class="download btn" href="#">
                                <xsl:attribute name='href'>
                                    <xsl:value-of select='/NewsDetail/FileUrl'></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name='target'>
                                    <xsl:value-of select='/NewsDetail/Target'></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name='title'>
                                    <xsl:value-of select='/NewsDetail/Title'></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of disable-output-escaping='yes' select='/NewsDetail/CandidatesInformationFormText'></xsl:value-of>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-12">
                        <h3 class="head-sub-title">
                            <xsl:value-of disable-output-escaping='yes' select='/NewsDetail/OtherRecruitmentJobsText'></xsl:value-of>
                        </h3>
                        <xsl:apply-templates select='/NewsDetail/NewsOther'></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match='NewsOther'>
        <div class="block-news-title">
            <h4>
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
                    <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                </a>
                <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
            </h4>
            <p> <i class="fas fa-calendar-alt"></i>
                <xsl:value-of disable-output-escaping='yes' select='CreatedDate'></xsl:value-of>
            </p>
        </div>
    </xsl:template>
</xsl:stylesheet>