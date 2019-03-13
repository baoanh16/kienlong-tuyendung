<%@ Control Language="c#" AutoEventWireup="false" CodeBehind="ReCandidateInfomation.ascx.cs"
    Inherits="CanhCam.Web.NewsUI.ReCandidateInfomation" %>
<%@ Register Src="~/News/Controls/MenuProfileControl.ascx" TagPrefix="portal" TagName="MenuProfileControl" %>

<style>
    #ctl00_mainContent_ctl00_txtImageReview {
        width: 151px;
        height: 180px;
    }

    .hidden {
        display: none;
    }
</style>
<asp:UpdatePanel ID="upContact" runat="server">
    <ContentTemplate>
        <section class="kienlong-quanlyhoso-1">
            <article class="thongtincanhan">
                <div class="container">
                    <div class="row">
                        <portal:MenuProfileControl runat="server" ID="MenuProfileControl" />
                        <div class="col-lg-9">
                            <div class="row">
                                <div class="col-xl-9 pr-0 order-xl-1 order-2">
                                    <h2>Thông tin cá nhân</h2>
                                    <asp:HiddenField ID="txtID" runat="server" />

                                    <portal:NotifyMessage ID="message" runat="server" />
                                    <div class="wrap-form">
                                        <div id="id">
                                            <div class="form-group">
                                                <label>Họ và tên<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtFullName" MaxLength="255" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="reqFullName" ToolTip="Họ và tên"
                                                        ValidationGroup="jobapply" runat="server" Display="Dynamic" ControlToValidate="txtFullName"
                                                        SetFocusOnError="true"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group form-radio">
                                                <label>Giới tính<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:RadioButtonList RepeatDirection="Horizontal"
                                                        RepeatLayout="Flow" runat="server" ID="rbGender" CssClass="settingcontrol">
                                                        <asp:ListItem Text="Nam" Value="Nam" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="Nữ" Value="Nữ"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Ngày sinh<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <gb:DatePickerControl ID="txtBirthdate" runat="server" ShowTime="false"></gb:DatePickerControl>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Nơi sinh<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:DropDownList runat="server" AutoPostBack="false" ID="ddlPlaceOfBirth" DataTextField="Name" DataValueField="ID" CssClass="form-control"></asp:DropDownList>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label>Số CMND/ CCCD<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtIDCard" MaxLength="255" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="reqIDCard" ToolTip="Họ và tên"
                                                        ValidationGroup="jobapply" runat="server" Display="Dynamic" ControlToValidate="txtIDCard"
                                                        SetFocusOnError="true"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Ngày cấp<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <gb:DatePickerControl ID="txtDateOfIssue" runat="server" ShowTime="false"></gb:DatePickerControl>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Nơi cấp<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:DropDownList runat="server" ID="dllPlaceOfIssue" DataTextField="Name" DataValueField="ID" CssClass="form-control"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="form-group frm-select">
                                                <label>Chiều cao<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:DropDownList runat="server" ID="ddlHeight" DataTextField="Name" DataValueField="ID" CssClass="form-control"></asp:DropDownList>
                                                    <label>Cân nặng<small>*</small></label>
                                                    <asp:DropDownList runat="server" ID="dllWeight" DataTextField="Name" DataValueField="ID" CssClass="form-control"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="form-group frm-select">
                                                <label>Dân tộc<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtNationality" MaxLength="255" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="reqNationality" ToolTip="Họ và tên"
                                                        ValidationGroup="jobapply" runat="server" Display="Dynamic" ControlToValidate="txtNationality"
                                                        SetFocusOnError="true"></asp:RequiredFieldValidator>
                                                    <label>Tôn giáo<small>*</small></label>
                                                    <asp:TextBox ID="txtReligion" MaxLength="255" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="reqReligion" ToolTip="Họ và tên"
                                                        ValidationGroup="jobapply" runat="server" Display="Dynamic" ControlToValidate="txtReligion"
                                                        SetFocusOnError="true"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Tình trạng hôn nhân<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:DropDownList runat="server" ID="dllMarialStatus" DataTextField="Name" DataValueField="ID" CssClass="form-control"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Hộ khẩu thường trú<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtPermanentResidence" MaxLength="255" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="reqPermanentResidence" ToolTip="Họ và tên"
                                                        ValidationGroup="jobapply" runat="server" Display="Dynamic" ControlToValidate="txtPermanentResidence"
                                                        SetFocusOnError="true"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Chỗ ở hiện nay<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtTempResidence" MaxLength="255" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="reqTempResidence" ToolTip="Họ và tên"
                                                        ValidationGroup="jobapply" runat="server" Display="Dynamic" ControlToValidate="txtTempResidence"
                                                        SetFocusOnError="true"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Di động<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtPhone" CssClass="form-control" runat="server" MaxLength="255" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Điện thoại cố định<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtCellPhone" CssClass="form-control" runat="server" MaxLength="255" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Email<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" MaxLength="255" />
                                                    <asp:RequiredFieldValidator ID="reqEmail" ValidationGroup="jobapply" runat="server"
                                                        Display="Dynamic" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="regexToEmail" runat="server" Display="Dynamic" ValidationGroup="jobapply"
                                                        ControlToValidate="txtEmail" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@(([0-9a-zA-Z])+([-\w]*[0-9a-zA-Z])*\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                            <%-- <div class="form-group">
                                                <label>
                                                    Mạng xã hội <small>* </small>
                                                    <br>
                                                    <p>(Facebook,Zalo,Linkedin)</p>
                                                </label>
                                                <div class="settingcontrol">
                                                    <input type="text">
                                                </div>
                                            </div>--%>
                                            <h3>Khi cần báo tin cho</h3>
                                            <div class="form-group">
                                                <label>Họ và tên<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtContactName" CssClass="form-control" runat="server" MaxLength="255" />
                                                </div>
                                            </div>
                                            <%--        <div class="form-group">
                                                <label>Email<small>*</small></label>
                                                <div class="settingcontrol">
                                                   <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" MaxLength="255" />
                                                </div>
                                            </div>--%>
                                            <div class="form-group">
                                                <label>Quan hệ<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtContactAddress" CssClass="form-control" runat="server" MaxLength="255" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Di động<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtContactPhone" CssClass="form-control" runat="server" MaxLength="255" />
                                                </div>
                                            </div>
                                            <span class="note">(<small>*</small>) Thông tin bắt buộc</span><span class="note">Tất cả những thông tin bạn cung cấp sẽ đựơc Kienlongbank bảo mật</span>
                                            <div class="form-group frm-btnwrap">
                                                <div class="frm-btn frm-save">
                                                    <label class="mdi-check"></label>
                                                    <asp:Button ID="btnSave" CssClass="btn btn-default" runat="server" ValidationGroup="EmailSubject"
                                                        Text="Lưu" CausesValidation="true" />

                                                </div>
                                                <div class="frm-btn frm-abort">
                                                    <label class="mdi-close"></label>
                                                    <input type="button" value="Hủy bỏ">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 pl-0 order-xl-2">
                                    <div class="upload-img">
                                        <h3>Hình ứng viên<small>* </small>
                                            <p>(jpg; png)</p>
                                            <h3></h3>
                                            <div class="img-wrapper">
                                                <%--<img id="avatar" alt="" src="img/thongtincanhan/no-image.png"></img>--%>
                                                <asp:Image ID="txtImageReview" runat="server" />
                                            </div>
                                            <div class="form-group frm-upload">
                                                <label onclick="openDialogUpload();return false;">
                                                    Tải ảnh</label>
                                                <div class="hidden">
                                                    <telerik:RadAsyncUpload ID="txtImage" ClientIDMode="Static" SkinID="radAsyncUploadSkin" MultipleFileSelection="Disabled"
                                                        AllowedFileExtensions="jpg,jpeg,gif,png"
                                                        OnClientFileUploaded="OnClientFileUploaded"
                                                        runat="server">
                                                    </telerik:RadAsyncUpload>
                                                </div>
                                            </div>
                                            <%-- <div class="view-and-delete">
                                                <a class="btn-view" href="javascript:void(0)">Xem hình</a><a class="btn-delete" href="javascript:void(0)">Xóa hình</a>
                                            </div>
                                            <h3></h3>8
                                            <h3></h3>
                                            <h3></h3>
                                            <h3></h3>
                                            <h3></h3>
                                            <h3></h3>
                                            <h3></h3>
                                            <h3></h3>
                                            <h3></h3>--%>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </section>
    </ContentTemplate>
</asp:UpdatePanel>
<script type="text/javascript">
    function fileUploaded(sender, args) {
        var manager = $find("ajaxManager");
        manager.ajaxRequest();
    }
</script>
<script>
    function openDialogUpload() {
        $(".upload-img input[type='file']").trigger("click");
    }
    function OnClientFileUploaded(sender, args) {
        console.log(args.get_fileName());
        console.log(args.get_fileInfo());

        console.log(args)
        $("#filename").text(args.get_fileName());
    }

    function readURL(input) {

        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#avatar').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
