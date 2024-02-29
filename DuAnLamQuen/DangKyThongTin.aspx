<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThongTin.aspx.cs" Inherits="DuAnLamQuen.DangKyThongTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<body>
     <form id="form1" runat="server">
        <div class="container p-3 my-3 bg-dark text-white text-center">

            <h1 class="text-center">THÔNG TIN CÁ NHÂN</h1>
            <div class="form-group row mb-2">
                <label for="txtHoTen" class="col-sm-2 col-form-label">Họ tên:</label>
                <br />
                <div class="col-sm-8">
                    <asp:TextBox ID="txtHoTen" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator SetFocusOnError="true" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Họ tên không được trống" ControlToValidate="txtHoTen" ForeColor="#FF5050"></asp:RequiredFieldValidator>

            </div>
            <br />
            <div class="form-group row mb-2">
                <label for="txtNgaySinh" class="col-sm-2 col-form-label">Ngày sinh:</label>
                <div class="col-sm-8">
                    <asp:TextBox ID="txtNgaySinh" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Chọn ngày sinh" ControlToValidate="txtNgaySinh" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Chọn ngày sinh hợp lý" ControlToValidate="txtNgaySinh" ForeColor="#FF5050" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
            </div>

            <br />
            <div class="form-group row mb-2">
                <label class="col-sm-2 col-form-label">Giới tính:</label>
                <div class="col-sm-8">
                    <asp:RadioButton Text="Nam" Checked="true" ID="rdNam" runat="server" CssClass="form-check-input" /> <br />
                    <asp:RadioButton Text="Nữ"  ID="rdNu" runat="server" CssClass="form-check-input" /> 
                </div>
            </div>
            <div class="form-group row mb-2">
                <label for="ddlTrinhDo" class="col-sm-2 col-form-label">Trình độ:</label>
                <div class="col-sm-8">
                    <asp:DropDownList ID="ddlTrinhDo" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>
            <div class="form-group row mb-2">
                <label for="listNgheNghiep" class="col-sm-2 col-form-label">Nghề nghiệp:</label>
                <div class="col-sm-8">
                    <asp:ListBox ID="listNgheNghiep" CssClass="form-control" runat="server"></asp:ListBox>
                </div>
            </div>
            <div class="form-group row mb-2">
                <label for="fHinh" class="col-sm-2 col-form-label">Hình:</label>
                <div class="col-sm-8">
                    <asp:FileUpload ID="fHinh" CssClass="form-control-file" runat="server" />
                </div>
            </div>
            <div class="form-group row mb-2">
                <label class="col-sm-2 col-form-label">Sở thích:</label>
                <div class="col-sm-8">
                    <asp:CheckBoxList ID="CheckBoxList1" CssClass="form-check" runat="server"></asp:CheckBoxList>
                </div>
            </div>
            <div class="form-group">
                <asp:Button CssClass="btn btn-success" ID="btnGui" runat="server" Text="Gửi" OnClick="btnGui_Click" />
                <asp:Button CssClass="btn btn-success" ID="btnLamlai" runat="server" Text="Làm lại" />
            </div>
            <asp:Label ID="lblKetQua" runat="server" Text=""></asp:Label>


        </div>
    </form>

       
</body></html>
