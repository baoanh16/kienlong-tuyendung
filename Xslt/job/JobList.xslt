<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <div class="row">
      <div class="col">
        <div class="kienlong-title">
          <h1 class="title">
            <xsl:value-of select="/JobList/ModuleTitle"></xsl:value-of>
          </h1>
        </div>
        <div class="note">
          <p>
            <b>Lưu ý: </b>Bạn không xem được việc làm đã hết hạn đăng tuyển hoặc tạm ngưng nhận hồ sơ
          </p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col">
        <div class="kienlong-table">
          <table>
            <thead>
              <tr>
                <th>STT</th>
                <th>Vị trí tuyển dụng</th>
                <th>Khu vực</th>
                <th>Số lượng</th>
                <th>Hạn nộp hồ sơ</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <xsl:apply-templates select="/JobList/Job"></xsl:apply-templates>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </xsl:template>


  <xsl:template match="Job">
    <tr>
      <td>
        <xsl:value-of select="position()"/>
      </td>
      <td>
        <xsl:value-of select="JobName"/>
      </td>
      <td>
        <xsl:value-of select="WorkPlace"/>
      </td>
      <td>
        <xsl:value-of select="Quantity"/>
      </td>
      <td>
        <xsl:value-of select="ExpiryDate"/>
      </td>
      <td>
        <a href="javascript:void(0)">
          <xsl:attribute name="href">
            
            <xsl:value-of select="UrlViewDetail"/>
          </xsl:attribute>

          Chi tiết
        </a>
      </td>
    </tr>
  </xsl:template>





  <xsl:template match="News">
    <div class="news-item mrb40 clearfix">
      <div class="col-sm-4 mrb10">
        <figure>
          <a class="ls-img center-block">
            <xsl:attribute name="href">
              <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="target">
              <xsl:value-of select="Target"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <img>
              <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
              </xsl:attribute>
            </img>
          </a>
          <figcaption></figcaption>
        </figure>
      </div>
      <div class="col-sm-8 news-content mrb10">
        <h2>
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
            <xsl:value-of select="Title"></xsl:value-of>
          </a>
          <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
        </h2>
        <div class="mrb10">
          <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
        </div>
      </div>
      <div class="col-sm-12 ">
        <div class="news-desc">
          <time>
            <xsl:value-of select="CreatedDate"></xsl:value-of>
          </time>
          <a class="readmore">
            <xsl:attribute name="href">
              <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="target">
              <xsl:value-of select="Target"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="/NewsList/ViewMore"></xsl:value-of>
            <xsl:text> </xsl:text>
            <i class="fa fa-angle-right"></i>
          </a>
        </div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>