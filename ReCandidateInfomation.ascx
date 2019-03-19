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
<script type="text/javascript" language="javascript">

    function CheckProvince(source, arguments) {
        var obj = document.getElementById('<%=ddlPlaceOfBirth.ClientID %>');
        if (obj.value < 1)
            arguments.IsValid = false;
        else
            arguments.IsValid = true;
    }

    function CheckPlaceOfIssue(source, arguments) {
        var obj = document.getElementById('<%=dllPlaceOfIssue.ClientID %>');
        if (obj.value < 1)
            arguments.IsValid = false;
        else
            arguments.IsValid = true;
    }

    function CheckMarialStatus(source, arguments) {
        var obj = document.getElementById('<%=dllMarialStatus.ClientID %>');
        if (obj.value < 1)
            arguments.IsValid = false;
        else
            arguments.IsValid = true;
    }
    
</script>
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
                                                </div>
                                            </div>
                                            <div class="form-group error">
                                                <asp:RequiredFieldValidator ID="reqtxtFullName" ToolTip="Vui lòng nhập tên đăng nhập"
                                                    ValidationGroup="jobapply" runat="server" Display="Dynamic" ControlToValidate="txtFullName" ErrorMessage="Vui lòng nhập tên của bạn"
                                                    SetFocusOnError="true"></asp:RequiredFieldValidator>
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
                                            <div class="form-group error">
                                                <asp:CustomValidator ID="rqchkGender" runat="server" ControlToValidate="rbGender"
                                                    ClientValidationFunction="CheckGender" Display="None" ErrorMessage="Chưa chọn giới tính"></asp:CustomValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>Ngày sinh<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <gb:DatePickerControl ID="txtBirthdate" runat="server" ShowTime="false" SkinID="news"></gb:DatePickerControl>
                                                </div>
                                            </div>
                                            <div class="form-group error">
                                                <asp:RequiredFieldValidator ID="reqBirthdate" runat="server" ControlToValidate="txtBirthdate"
                                                    Display="Dynamic" SetFocusOnError="true"
                                                    ErrorMessage="Vui lòng chọn ngày sinh"
                                                    ValidationGroup="jobapply" />
                                            </div>
                                            <div class="form-group">
                                                <label>Nơi sinh<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:DropDownList runat="server" AutoPostBack="false" ID="ddlPlaceOfBirth" DataTextField="Name" DataValueField="ID" CssClass="form-control"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="form-group error">
                                                <asp:CustomValidator ID="reqPlaceOfBirth" runat="server" ClientValidationFunction="CheckProvince"
                                                    ErrorMessage="Vui lòng chọn nơi sinh"
                                                    ValidationGroup="jobapply"
                                                    SetFocusOnError="true"
                                                    ControlToValidate="ddlPlaceOfBirth">
                                                </asp:CustomValidator>
                                            </div>

                                            <div class="form-group">
                                                <label>Số CMND/ CCCD<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtIDCard" MaxLength="255" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group error">
                                                <asp:RequiredFieldValidator ID="rqIDCart" ToolTip="Vui lòng nhập CMND"
                                                    ValidationGroup="jobapply" runat="server" Display="Dynamic" ControlToValidate="txtIDCard" ErrorMessage="Vui lòng nhập CMND"
                                                    SetFocusOnError="true"></asp:RequiredFieldValidator>
                                            </div>


                                            <div class="form-group">
                                                <label>Ngày cấp<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <gb:DatePickerControl ID="txtDateOfIssue" runat="server" ShowTime="false"></gb:DatePickerControl>
                                                </div>
                                            </div>
                                            <div class="form-group error">
                                                <asp:RequiredFieldValidator ID="rqDateOfIssue" ValidationGroup="jobapply" runat="server"
                                                    Display="Dynamic"
                                                    ErrorMessage="Vui lòng chọn ngày cấp"
                                                    SetFocusOnError="true"
                                                    ControlToValidate="txtDateOfIssue">
                                                </asp:RequiredFieldValidator>
                                            </div>


                                            <div class="form-group">
                                                <label>Nơi cấp<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:DropDownList runat="server" ID="dllPlaceOfIssue" DataTextField="Name" DataValueField="ID" CssClass="form-control"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="form-group error">
                                                 <asp:CustomValidator ID="rqPlaceOfIssue" runat="server" ClientValidationFunction="CheckPlaceOfIssue"
                                                    ErrorMessage="Vui lòng chọn nơi cấp"
                                                    ValidationGroup="jobapply"
                                                    SetFocusOnError="true"
                                                    ControlToValidate="dllPlaceOfIssue">
                                                </asp:CustomValidator>
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
                                                    <label>Tôn giáo<small>*</small></label>
                                                    <asp:TextBox ID="txtReligion" MaxLength="255" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group error">
                                                <asp:RequiredFieldValidator ID="reqNationality"
                                                    ValidationGroup="jobapply" runat="server" Display="Dynamic" ControlToValidate="txtNationality"
                                                    ErrorMessage="Vui lòng nhập dân tộc"
                                                    SetFocusOnError="true"></asp:RequiredFieldValidator>
                                                <asp:RequiredFieldValidator ID="reqReligion"
                                                    ValidationGroup="jobapply" runat="server" Display="Dynamic" ControlToValidate="txtReligion"
                                                    ErrorMessage="Vui lòng nhập tôn giáo"
                                                    SetFocusOnError="true"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>Tình trạng hôn nhân<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:DropDownList runat="server" ID="dllMarialStatus" DataTextField="Name" DataValueField="ID" CssClass="form-control"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="form-group error">
                                                <asp:CustomValidator ID="rquMarialStatus" runat="server" ClientValidationFunction="CheckMarialStatus"
                                                    ErrorMessage="Vui lòng chọn tình trạng hôn nhân"
                                                    ValidationGroup="jobapply"
                                                    SetFocusOnError="true"
                                                    ControlToValidate="dllMarialStatus">
                                                </asp:CustomValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>Hộ khẩu thường trú<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtPermanentResidence" MaxLength="255" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group error">
                                                <asp:RequiredFieldValidator ID="reqPermanentResidence"
                                                    ValidationGroup="jobapply" runat="server" Display="Dynamic" ControlToValidate="txtPermanentResidence"
                                                    ErrorMessage="Vui lòng nhập hộ khẩu thường trú"
                                                    SetFocusOnError="true"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>Chỗ ở hiện nay<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtTempResidence" MaxLength="255" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group error">
                                                <asp:RequiredFieldValidator ID="rqTempResidence"
                                                    ValidationGroup="jobapply" runat="server" Display="Dynamic" ControlToValidate="txtTempResidence"
                                                    ErrorMessage="Vui lòng nhập chỗ ở hiện nay"
                                                    SetFocusOnError="true"></asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group">
                                                <label>Di động<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtPhone" CssClass="form-control" runat="server" MaxLength="255" />
                                                </div>
                                            </div>
                                            <div class="form-group error">
                                                <asp:RequiredFieldValidator ID="rqPhone"
                                                    ValidationGroup="jobapply" runat="server" Display="Dynamic" ControlToValidate="txtPhone"
                                                    ErrorMessage="Vui lòng nhập số điện thoại"
                                                    SetFocusOnError="true"></asp:RequiredFieldValidator>
                                            </div>


                                            <div class="form-group">
                                                <label>Điện thoại cố định<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtCellPhone" CssClass="form-control" runat="server" MaxLength="255" />
                                                </div>
                                            </div>
                                            <div class="form-group error">
                                                <asp:RequiredFieldValidator ID="rqCellPhone"
                                                    ValidationGroup="jobapply" runat="server" Display="Dynamic" ControlToValidate="txtCellPhone"
                                                    ErrorMessage="Vui lòng nhập số điện thoại cố định"
                                                    SetFocusOnError="true"></asp:RequiredFieldValidator>
                                            </div>


                                            <div class="form-group">
                                                <label>Email<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" MaxLength="255" />
                                                </div>
                                            </div>
                                            <div class="form-group error">
                                                <asp:RequiredFieldValidator ID="reqEmail" ValidationGroup="jobapply" runat="server"
                                                    Display="Dynamic"
                                                    ErrorMessage="Vui lòng nhập email"
                                                    ControlToValidate="txtEmail">
                                                </asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="regexToEmail" runat="server" Display="Dynamic"
                                                    ValidationGroup="jobapply"
                                                    ControlToValidate="txtEmail"
                                                    ErrorMessage="Email không đúng định dạng"
                                                    ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@(([0-9a-zA-Z])+([-\w]*[0-9a-zA-Z])*\.)+[a-zA-Z]{2,9})$">
                                                </asp:RegularExpressionValidator>
                                            </div>
                                            <h3>Khi cần báo tin cho</h3>
                                            <div class="form-group">
                                                <label>Họ và tên<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtContactName" CssClass="form-control" runat="server" MaxLength="255" />
                                                </div>
                                            </div>
                                            <div class="form-group error">
                                                <asp:RequiredFieldValidator ID="rqContactName" ValidationGroup="jobapply" runat="server"
                                                    Display="Dynamic"
                                                    ErrorMessage="Vui lòng nhập họ và tên"
                                                    ControlToValidate="txtContactName">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group">
                                                <label>Quan hệ<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtContactAddress" CssClass="form-control" runat="server" MaxLength="255" />
                                                </div>
                                            </div>
                                            <div class="form-group error">
                                                <asp:RequiredFieldValidator ID="rqContactAddres" ValidationGroup="jobapply" runat="server"
                                                    Display="Dynamic"
                                                    ErrorMessage="Vui lòng nhập quan hệ"
                                                    ControlToValidate="txtContactAddress">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group">
                                                <label>Di động<small>*</small></label>
                                                <div class="settingcontrol">
                                                    <asp:TextBox ID="txtContactPhone" CssClass="form-control" runat="server" MaxLength="255" />
                                                </div>
                                            </div>
                                            <div class="form-group error">
                                                <asp:RequiredFieldValidator ID="rqContactPhone" ValidationGroup="jobapply" runat="server"
                                                    Display="Dynamic"
                                                    ErrorMessage="Vui lòng nhập di động"
                                                    ControlToValidate="txtContactPhone">
                                                </asp:RequiredFieldValidator>
                                            </div>


                                            <span class="note">(<small>*</small>) Thông tin bắt buộc</span><span class="note">Tất cả những thông tin bạn cung cấp sẽ đựơc Kienlongbank bảo mật</span>
                                            <div class="form-group frm-btnwrap">
                                                <div class="frm-btn frm-save">
                                                    <label class="mdi-check"></label>
                                                    <asp:Button ID="btnSave" CssClass="btn btn-default" runat="server"
                                                        ValidationGroup="jobapply"
                                                        Text="Lưu"
                                                        CausesValidation="true" />

                                                </div>
                                                <div class="frm-btn frm-abort">
                                                    <label class="mdi-close"></label>
                                                    <input type="reset" value="Hủy bỏ">
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
