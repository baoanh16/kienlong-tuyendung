<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <section class="kienlong-ntdXemHoSo">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="kienlong-title">
              <h1 class="title">Phản hồi từ nhà tuyển dụng</h1>
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
                    <th>Nhà tuyển dụng</th>
                    <th>Tiêu đề</th>
                    <th>Ngày phản hồi</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <xsl:apply-templates select="/ListEmployerFeeback/ItemFeedback"></xsl:apply-templates>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        
      </div>
    </section>
  </xsl:template>

  <xsl:template match="ItemFeedback">
    <tr>
      <td>
        <xsl:value-of select="position()"/>
      </td>
      <td>Ngân hàng Kiên Long</td>
      <td>
        <xsl:value-of select="Title"/>
      </td>
      <td>
        <xsl:value-of select="SentDate"/>
      </td>
      <td>
        <a href="javascript:void(0)">Chi tiết</a>
      </td>
    </tr>
  </xsl:template>
  
  
  
</xsl:stylesheet>