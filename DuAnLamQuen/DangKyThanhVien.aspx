<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="DuAnLamQuen.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
        <h1 class="text-center text-dangera">HỒ SƠ ĐĂNG KÝ</h1>
        <div class="container p-3 my-3">
            <div class="row border border-primary">
                <div class="col-md-6 border-right">
                    <h1 class="bg-success text-white">Thông tin đăng nhập</h1>
                    <div class="form-group">
                        <label for="txtTen">Tên đăng nhập:</label>
                        <asp:TextBox ID="txtTen" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtPass">Mật khẩu:</label>
                        <asp:TextBox type="password" CssClass="form-control" ID="txtPass" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtNhapLaiPass">Nhập lại mật khẩu:</label>
                        <asp:TextBox type="password" CssClass="form-control" ID="txtNhapLaiPass" runat="server"></asp:TextBox>
                    </div>
                    <h1 class="bg-success text-white">Thông tin cá nhân</h1>
                    <div class="form-group">
                        <label for="txtHoTen">Họ tên khách hàng:</label>
                        <asp:TextBox ID="txtHoTen" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtNgaySinh">Ngày sinh</label>
                        <asp:DropDownList ID="ddlNgay" runat="server" Width="10%"></asp:DropDownList>/
                       <asp:DropDownList ID="ddlThang" runat="server" Width="10%"></asp:DropDownList>/
                       <asp:DropDownList ID="ddlNam" runat="server" Width="10%"></asp:DropDownList>

                    </div>
                    <div class="form-group">
                        <label for="txtEmail">Email:</label>
                        <asp:TextBox type="email" CssClass="form-control" ID="txtEmail" runat="server"></asp:TextBox>
                    </div>
                    <label for="txtThuNhap">Thu nhập:</label>
                    <asp:TextBox ID="txtThuNhap" CssClass="form-control" runat="server"></asp:TextBox>

                    <div class="form-group">
                        <label for="txtGioiTinh">Giới tính:</label>
                        <asp:CheckBox ID="CheckGioiTinh" runat="server" />

                    </div>
                    <div class="form-group">
                        <label for="txtDiaChi">Địa chỉ:</label>
                        <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label for="txtDienThoai">Điện thoại:</label>
                        <asp:TextBox ID="txtDienThoai" type="number" runat="server"></asp:TextBox>
                    </div>
                <asp:Button CssClass="btn btn-success" ID="Button1" runat="server" Text="Đăng ký" />

                </div>
                <div class="col-md-6">
                    <h1 class="bg-success text-white">Hồ sơ khách hàng</h1>
                </div>
            </div>


        </div>
    </form>
</body>
</html>
