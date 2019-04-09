<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <div class="col-lg-3">
      <span class="nav-qlhs-toggle">
        Danh mục<em class="mdi-arrow-down-drop-circle-outline"></em>
      </span>
      <nav class="nav-qlhs">
        <a href="javascript:void(0)">
          <xsl:attribute name="href">
            <xsl:value-of select="/MenuProfile/ZoneInformationCandidate"/>
          </xsl:attribute>
          <xsl:if test="/MenuProfile/ZoneInformationCandidateActive = 'true' ">
            <xsl:attribute name="class">
              <xsl:text>active</xsl:text>
            </xsl:attribute>
          </xsl:if>
          Thông tin cá nhân
        </a>
        <a href="javascript:void(0)">
          <xsl:attribute name="href">
            <xsl:value-of select="/MenuProfile/ZoneDesireJobCandidate"/>
          </xsl:attribute>
           <xsl:if test="/MenuProfile/ZoneDesireJobCandidate = 'true' ">
            <xsl:attribute name="class">
              <xsl:text>active</xsl:text>
            </xsl:attribute>
          </xsl:if>
          Nguyện vọng làm việc
        </a>
        <a href="javascript:void(0)">
          <xsl:attribute name="href">
            <xsl:value-of select="/MenuProfile/ZoneTrainingCandidate"/>
          </xsl:attribute>
          <xsl:if test="/MenuProfile/ZoneTrainingCandidate = 'true' ">
            <xsl:attribute name="class">
              <xsl:text>active</xsl:text>
            </xsl:attribute>
          </xsl:if>
          Quá trình đào tạo
        </a>
        <a href="javascript:void(0)">
          <xsl:attribute name="href">
            <xsl:value-of select="/MenuProfile/ZoneExpCandidate"/>
          </xsl:attribute>
            <xsl:if test="/MenuProfile/ZoneExpCandidate = 'true' ">
            <xsl:attribute name="class">
              <xsl:text>active</xsl:text>
            </xsl:attribute>
          </xsl:if>
          Kinh nghiệm làm việc
        </a>
        <a href="javascript:void(0)">
          <xsl:attribute name="href">
            <xsl:value-of select="/MenuProfile/ZoneRewardDisciplineCandidate"/>
          </xsl:attribute>
           <xsl:if test="/MenuProfile/ZoneRewardDisciplineCandidate = 'true' ">
            <xsl:attribute name="class">
              <xsl:text>active</xsl:text>
            </xsl:attribute>
          </xsl:if>
          Khen thưởng/Kỷ luật
        </a>
        <a href="javascript:void(0)">
          <xsl:attribute name="href">
            <xsl:value-of select="/MenuProfile/ZoneOtherInfoCandidate"/>
          </xsl:attribute>
           <xsl:if test="/MenuProfile/ZoneOtherInfoCandidate = 'true' ">
            <xsl:attribute name="class">
              <xsl:text>active</xsl:text>
            </xsl:attribute>
          </xsl:if>
          Thông tin bổ sung
        </a>
        <a href="javascript:void(0)">
          <xsl:attribute name="href">
            <xsl:value-of select="/MenuProfile/ZoneFamilyRelationCandidate"/>
          </xsl:attribute>
           <xsl:if test="/MenuProfile/ZoneFamilyRelationCandidate = 'true' ">
            <xsl:attribute name="class">
              <xsl:text>active</xsl:text>
            </xsl:attribute>
          </xsl:if>
          Quan hệ gia đình
        </a>
        <a href="javascript:void(0)">Xem hồ sơ</a>
      </nav>
    </div>
  </xsl:template>
</xsl:stylesheet>