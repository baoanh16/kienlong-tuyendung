<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <section class="kienlong-tuyendung-ct">
      <article>
        <div class="container">
          <div class="row">
            <div class="col-lg-9">
              <h2>
                <xsl:value-of select="/JobDetail/JobName"/>
              </h2>
              <time>
                <xsl:value-of select="/JobDetail/PublishedDate"/>
              </time>
              <div class="brief-info">
                <h3>Thông tin tuyển dụng</h3>
                <table>
                  <tbody>
                    <tr>
                      <td>Vị trí tuyển dụng: </td>
                      <td>
                        <xsl:value-of select="/JobDetail/JobName"/>
                      </td>
                    </tr>
                    <tr>
                      <td>Chức vụ: </td>
                      <td>Trưởng phòng</td>
                    </tr>
                    <tr>
                      <td>Giới tính:</td>
                      <td>Không yêu cầu</td>
                    </tr>
                    <tr>
                      <td>Địa điểm làm việc:</td>
                      <td>
                        <xsl:value-of select="/JobDetail/WorkPlace"/>
                      </td>
                    </tr>
                    <tr>
                      <td>Độ tuổi </td>
                      <td>
                        <xsl:value-of select="/JobDetail/Age"/>
                      </td>
                    </tr>
                    <tr>
                      <td>Mức lương: </td>
                      <td>
                        <xsl:value-of select="/JobDetail/Salary"/>
                      </td>
                    </tr>
                    <tr>
                      <td>Bằng cấp:</td>
                      <td>Tốt nghiệp đại học ngân hàng</td>
                    </tr>
                    <tr>
                      <td>Số lượng cần tuyển:</td>
                      <td>
                        <xsl:value-of select="/JobDetail/Quantity"/>
                      </td>
                    </tr>
                    <tr>
                      <td>Kinh nghiệm:</td>
                      <td>
                        <xsl:value-of select="/JobDetail/Experience"/>
                        năm
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class="job-info">
                <h3>Mô tả công việc</h3>
                <ul>
                  <xsl:value-of select="/JobDetail/Description" disable-output-escaping="yes"/>
                </ul>
              </div>
              <div class="button-group">
                <xsl:if test="/JobDetail/IsApply = 0">
                  <a id="btn-applyJob" >
                    <xsl:attribute name="data-id">
                      <xsl:value-of select="/JobDetail/JobId"/>
                    </xsl:attribute>
                    Ứng tuyển
                  </a>
                </xsl:if>
                <xsl:if test="/JobDetail/IsSaved = 0">
                  <a id="btn-saveJob">
                    <xsl:attribute name="data-id">
                      <xsl:value-of select="/JobDetail/JobId"/>
                    </xsl:attribute>
                    Lưu công việc
                  </a>
                </xsl:if>
                <a id="btn-shareJob" class="btn-share">Chia sẻ cho bạn bè</a>
              </div>
            </div>
            
            <div class="col-lg-3">
              <div class="others-list">
                <h2>Tuyển dụng khác</h2>
                <div class="list">
                  <xsl:apply-templates select="/JobDetail/JobOther"></xsl:apply-templates>
                </div>
              </div>
            </div>
          </div>
        </div>
      </article>
    </section>
    
    
    <div class="friend-sharing">
      <h2>Chia sẻ với bạn bè</h2>
      <div class="modal-close">
        <span class="lnr-cross"></span>
      </div>
      <div class="wrap-form">
        <div id="id">
          <div class="form-group">
            <label>Gửi đến</label>
              <input type="text" placeholder="Ví dụ: quangduycc@gmail.com"></input>
						</div>
          <div class="form-group">
            <label>Tiêu đề</label>
            <input type="text" placeholder="Ví dụ: Giám đốc phòng giao dịch"></input>
						</div>
          <div class="form-group">
            <label>Nội dung</label>
            <textarea name="" cols="30" rows="10"></textarea>
          </div>
          <div class="form-group">
            <img src="./img/capcha.png" alt=""></img>
          </div>
          <div class="form-group">
            <span>(*) Thông tin bắt buộc</span>
          </div>
          <div class="form-group frm-btnwrap">
            <div class="frm-btn">
              <input type="submit" value="Gửi"></input>
							</div>
          </div>
        </div>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="JobOther">
    <div class="others-item">
      <time>
        <xsl:value-of select="ExpiryDate"/>
      </time>
      <h3>
        <xsl:value-of select="JobName"/>
      </h3>
    </div>
  </xsl:template>

</xsl:stylesheet>