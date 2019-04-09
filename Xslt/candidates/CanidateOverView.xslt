<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <section class="kienlong-QLHoSo-1">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="kienlong-title">
              <h2 class="title">quản lý hồ sơ</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4">
            <article class="member-wrapper">
              <xsl:apply-templates select="/Candidate/Job"></xsl:apply-templates>
              <div class="member-avatar">
                <img src="./img/quanlyhoso/avatar.jpg" alt="" >
                  <xsl:attribute name="src">
                    <xsl:value-of select="/CanidateOverView/Avatar"/>
                  </xsl:attribute>
                </img>
              </div>
              <div class="member-name">
                <h5>
                  <xsl:value-of select="/CanidateOverView/FullName"/>
                </h5>
              </div>
              <div class="member-info">
                <ul>
                  <xsl:if test="/CanidateOverView/Description != ''">
                    <li>
                      <em class="mdi mdi-account"></em>
                      <p>
                        <xsl:value-of select="/CanidateOverView/Description"/>
                      </p>
                    </li>
                  </xsl:if>
                  <xsl:if test="/CanidateOverView/TotalYear != '0'">
                    <li>
                      <em class="mdi mdi-star"></em>
                      <p>
                        <xsl:value-of select="/CanidateOverView/TotalYear"/>
                        năm kinh nghiệm
                      </p>
                    </li>
                  </xsl:if>
                  <xsl:if test="/CanidateOverView/DiplomaName != ''">
                    <li>
                      <em class="mdi mdi-book-open"></em>
                      <p>
                        Bằng cấp cao nhất: <xsl:value-of select="/CanidateOverView/DiplomaName"/>
                      </p>
                    </li>
                  </xsl:if>
                </ul>
              </div>
              <div class="member-level">
                <p>Mức độ hoàn chỉnh</p>
                <div class="line-level" data-level="10%">
                  <xsl:attribute name="data-level">
                    <xsl:value-of select="/CanidateOverView/CompletePercent"/>
                    <xsl:text >%</xsl:text>
                  </xsl:attribute>
                  <span></span>
                </div>
              </div>
              <div class="member-update">
                <a href="javascript:void(0)">
                  <xsl:attribute name="href">
                    <xsl:value-of select="/CanidateOverView/UrlInformationCandidate"/>
                  </xsl:attribute>
                  Cập nhật hồ sơ
                </a>
              </div>

            </article>
          </div>
          <div class="col-lg-8">
            <div class="row list-item">
              <div class="col-md-6 item">
                <div class="box-item">
                  <div class="number">
                    <h3>
                      <xsl:value-of select="/CanidateOverView/EmployerView"/>
                    </h3>
                  </div>
                  <div class="page-name">
                    <h4>Nhà tuyển dụng xem hồ sơ</h4>
                  </div>
                  <div class="view-detail">
                    <a href="javascript:void(0)">
                      <xsl:attribute name="href">
                        <xsl:value-of select="/CanidateOverView/UrlEmpView"/>
                      </xsl:attribute>
                      Chi tiết
                    </a>
                  </div>
                </div>
              </div>
              <div class="col-md-6 item">
                <div class="box-item">
                  <div class="number">
                    <h3>
                      <xsl:value-of select="/CanidateOverView/JobApply"/>
                    </h3>
                  </div>
                  <div class="page-name">
                    <h4>Công việc đã ứng tuyển</h4>
                  </div>
                  <div class="view-detail">
                    <a href="javascript:void(0)">
                      <xsl:attribute name="href">
                        <xsl:value-of select="/CanidateOverView/UrlJobApply"/>
                      </xsl:attribute>
                      Chi tiết
                    </a>
                  </div>
                </div>
              </div>
              <div class="col-md-6 item">
                <div class="box-item">
                  <div class="number">
                    <h3>
                      <xsl:value-of select="/CanidateOverView/EmployerRespone"/>
                    </h3>
                  </div>
                  <div class="page-name">
                    <h4>Phản hồi từ nhà tuyển dụng</h4>
                  </div>
                  <div class="view-detail">
                    <a href="javascript:void(0)">
                      <xsl:attribute name="href">
                        <xsl:value-of select="/CanidateOverView/UrlProfileEmpFeedback"/>
                      </xsl:attribute>
                      Chi tiết
                    </a>
                  </div>
                </div>
              </div>
              <div class="col-md-6 item">
                <div class="box-item">
                  <div class="number">
                    <h3>
                      <xsl:value-of select="/CanidateOverView/JobSaved"/>
                    </h3>
                  </div>
                  <div class="page-name">
                    <h4>Công việc đã lưu</h4>
                  </div>
                  <div class="view-detail">
                    <a href="javascript:void(0)">
                      <xsl:attribute name="href">
                        <xsl:value-of select="/CanidateOverView/UrlJobSaved"/>
                      </xsl:attribute>
                      Chi tiết
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </xsl:template>
</xsl:stylesheet>