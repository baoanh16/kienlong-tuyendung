<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
      <xsl:if test="/Header/IsLogin=0">
        <div class="login">
          <a href="javascript:void(0)">
            <xsl:attribute name="href">
              <xsl:value-of select="/Header/UrlLogin"/>
            </xsl:attribute>
            Đăng nhập
          </a>
        </div>
        <div class="sign-up">
          <a href="javascript:void(0)">
            <xsl:attribute name="href">
              <xsl:value-of select="/Header/UrlRegister"/>
            </xsl:attribute>
            Đăng ký
          </a>
        </div>
      </xsl:if>
      <xsl:if test="/Header/IsLogin=1">
        <div class="after-login">
          <div class="avatar">
            <img src="./img/quanlyhoso/avatar.jpg" alt="" >
              <xsl:attribute name="src">
                <xsl:value-of select="/Header/Avatar"/>
              </xsl:attribute>
            </img>
          </div>
          <div class="username">
            <span>
              <xsl:value-of select="/Header/FullName"/>
            </span>
          </div>
          <div class="user-management">
            <h2 class="title">Quản lý nghề nghiệp</h2>
            <ul>
              <li class="active">
                <a href="javascript:void(0)">
                  <xsl:attribute name="href">
                    <xsl:value-of select="/Header/UrlProfile"/>
                  </xsl:attribute>
                  Quản lý hồ sơ
                </a>
              </li>
              <li>
                <a href="javascript:void(0)">
                  <xsl:attribute name="href">
                    <xsl:value-of select="/Header/UrlListJob"/>
                  </xsl:attribute>
                  Danh sách công việc
                </a>
              </li>
              <li>
                <a href="javascript:void(0)">
                  <xsl:attribute name="href">
                    <xsl:value-of select="/Header/UrlEmpView"/>
                  </xsl:attribute>
                  Nhà tuyển dụng xem hồ sơ
                </a>
              </li>
            </ul>
            <a class="title" href="javascript:void(0)">Tài khoản</a>
            <a class="title" href="/News/LogOffNews.aspx">Đăng xuất</a>
          </div>
        </div>
      </xsl:if>
  </xsl:template>
</xsl:stylesheet>