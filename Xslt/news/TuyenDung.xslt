<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt'
    exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <div class="row">
            <div class="col">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr class="text-center">
                                <th>
                                    <xsl:value-of disable-output-escaping='yes' select='/NewsList/JobTitleText'></xsl:value-of>
                                </th>
                                <th>
                                    <xsl:value-of disable-output-escaping='yes' select='/NewsList/ProvinceText'></xsl:value-of>
                                </th>
                                <th>
                                    <xsl:value-of disable-output-escaping='yes' select='/NewsList/SalaryText'></xsl:value-of>
                                </th>
                                <th>
                                    <xsl:value-of disable-output-escaping='yes' select='/NewsList/DeadlineText'></xsl:value-of>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </xsl:template>

    <xsl:template match='News'>
        <tr>
            <td>
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
                <xsl:if test="floor(ShowOption div 1) mod 2 = 1">
                    <span>HOT</span>
                </xsl:if>
            </td>
            <td>
                <xsl:value-of disable-output-escaping='yes' select='SubTitle'></xsl:value-of>
            </td>
            <td>
                <xsl:value-of disable-output-escaping='yes' select='BriefContent'></xsl:value-of>
            </td>
            <td>
                <xsl:value-of disable-output-escaping='yes' select='EndDate'></xsl:value-of>
                <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>