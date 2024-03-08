<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="DuAnLamQuen.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
        <h1 class="text-center text-danger">HỒ SƠ ĐĂNG KÝ</h1>
        <div class="container p-3 my-3">
            <div class="row border border-primary">
                <div class="col-md-6 border-right">
                    <h1 class="bg-success text-white">Thông tin đăng nhập</h1>
                    <div class="form-group">
                        <label for="txtTen">Tên đăng nhập:</label>
                        <asp:TextBox ID="txtTenDangNhap" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="frvTenDN" runat="server" ErrorMessage="Tên đăng nhập không được rỗng:" ControlToValidate="txtTenDangNhap" ForeColor="#FF0066" Text="(*)"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revTenDangNhap" runat="server" ErrorMessage="Tên đăng nhập không hợp lệ !" ControlToValidate="txtTenDangNhap" ValidationExpression="[\d|\w|!|&|_]{8}[\d|\w|!|&|_]+" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <label for="txtPass">Mật khẩu:</label>
                        <asp:TextBox type="password" CssClass="form-control" ID="txtPass" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv" runat="server" ErrorMessage="Mật khẩu không được rỗng!" ControlToValidate="txtPass" Text="(*)" ForeColor="#FF0066"></asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group">
                        <label for="txtNhapLaiPass">Nhập lại mật khẩu:</label>
                        <asp:TextBox type="password" CssClass="form-control" ID="txtNhapLaiPass" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMKNL" runat="server" ErrorMessage="Mật khẩu nhập lại không được rỗng!" ControlToValidate="txtNhapLaiPass" Display="Dynamic" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cpvNLMK0" runat="server" ErrorMessage="Nhập lại mật khẩu không đúng!" ControlToCompare="txtNhapLaiPass" ControlToValidate="txtPass" ForeColor="#FF0066"></asp:CompareValidator>
                    </div>
                    <h1 class="bg-success text-white">Thông tin cá nhân</h1>
                    <div class="form-group">
                        <label for="txtHoTen">Họ tên khách hàng:</label>
                        <asp:TextBox ID="txtHoTen" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTenKhachHang" runat="server" ErrorMessage="Họ tên không được rổng" ControlToValidate="txtHoTen" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="txtNgaySinh">Ngày sinh</label>
                        <asp:DropDownList ID="ddlNgay" runat="server" Width="20%"></asp:DropDownList>/
                       <asp:DropDownList ID="ddlThang" runat="server" Width="20%"></asp:DropDownList>/
                       <asp:DropDownList ID="ddlNam" runat="server" Width="20%"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Chưa chọn ngày sinh" ControlToValidate="ddlNgay" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Chưa chọn tháng sinh" ControlToValidate="ddlThang" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Chưa chọn năm sinh" ControlToValidate="ddlNam" ForeColor="#FF0066"></asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group">
                        <label for="txtEmail">Email:</label>
                        <asp:TextBox type="email" CssClass="form-control" ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="rfvEmail" runat="server"
                            ErrorMessage="Email không hợp lệ" ControlToValidate="txtEmail" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                    <label for="txtThuNhap">Thu nhập:</label>
                    <asp:TextBox ID="txtThuNhap" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="rvdThuNhap" runat="server" ErrorMessage="Thu nhập từ 1.000.000vnd đến 5.000.0000vnd" ControlToValidate="txtThuNhap" ForeColor="#FF0066" MaximumValue="50000000" MinimumValue="1000000" Type="Integer"></asp:RangeValidator>

                    <div class="form-group">
                        <label for="txtGioiTinh">Giới tính:</label>
                        <asp:CheckBox ID="CheckGioiTinh" runat="server" Text="Nam" />

                    </div>
                    <div class="form-group">
                        <label for="txtDiaChi">Địa chỉ:</label>
                        <asp:TextBox ID="txtDiaChi" Width="100%" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label for="txtDienThoai">Điện thoại:</label>
                        <asp:TextBox ID="txtDienThoai" runat="server"></asp:TextBox>
                    </div>
                    <asp:Button CssClass="btn btn-primary m-5" ID="Button1" runat="server" Text="Đăng ký" OnClick="Button1_Click" />
                </div>
                <div class="col-md-6 ">
                    <h1 class="bg-success text-white">Hồ sơ khách hàng</h1>
                    <div class="text-info">
                        <asp:Label ID="lblKetQua" runat="server" Text=""></asp:Label>
                    </div>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Danh sách lỗi" ForeColor="Red" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
