<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt'
    exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <div class="faq-list">
            <xsl:apply-templates select='/FAQsList/FAQs'></xsl:apply-templates>
        </div>
    </xsl:template>

    <xsl:template match='FAQs'>
        <div class="faq-item">
            <div class="question">
                <xsl:value-of disable-output-escaping='yes' select='Question'></xsl:value-of>
                <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
            </div>
            <div class="answer">
                <xsl:value-of disable-output-escaping='yes' select='Answer'></xsl:value-of>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>