<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <section class="kienlong-cvdaluu">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="kienlong-title">
              <h1 class="title">Công việc đã ứng tuyển</h1>
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
                    <th>Vị trí tuyển dụng</th>
                    <th>Khu vực</th>
                    <th>Ngày lưu</th>
                    <th>Ngày đăng tuyển</th>
                    <th>Ngày ứng tuyển</th>
                    <th>Xóa</th>
                  </tr>
                </thead>
                <tbody>
                  <xsl:apply-templates select="/ListApplyJob/JobItem"></xsl:apply-templates>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>
  </xsl:template>

  <xsl:template match="JobItem">
    <tr>
      <td>
        <xsl:value-of select="JobName"/>
      </td>
      <td>
        <xsl:value-of select="Place"/>
      </td>
      <td>
        <xsl:value-of select="SaveDate"/>
      </td>
      <td>
        <xsl:value-of select="ApproveDate"/>
      </td>
      <td>
        <xsl:value-of select="ApplyDate"/>
      </td>
      <td>
        <a href="javascript:void(0)">Xóa</a>
      </td>
    </tr>
  </xsl:template>
  
  
  
</xsl:stylesheet>