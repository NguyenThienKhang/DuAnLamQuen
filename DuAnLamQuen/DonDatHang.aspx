<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="DuAnLamQuen.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
        <div class="container p-3 my-3 bg-dark text-white text-center">
            <h1 class="text-center bg-success text-white ">ĐƠN ĐẶT HÀNG</h1>
            <div class="form-group row mb-2">
                <label for="txtKhanhHang" class="col-sm-2 col-form-label">Khánh hàng</label>
                <br />
                <div class="col-sm-8">
                    <asp:TextBox ID="txtKhanhHang" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row mb-2">
                <label for="txtDiaChi" class="col-sm-2 col-form-label">Địa chỉ</label>
                <br />
                <div class="col-sm-8">
                    <asp:TextBox ID="txtDiaChi" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row mb-2">
                <label for="txtMaSoThue" class="col-sm-2 col-form-label">Mã số thuế</label>
                <br />
                <div class="col-sm-8">
                    <asp:TextBox ID="txtMaSoThue" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <h2 for="ddl" class="text-success">Chọn loại bánh sau:</h2>
                        <asp:DropDownList ID="ddl" runat="server" CssClass="form-control w-80"></asp:DropDownList>
                        <br />
                    <div class="form-group row mb-2">
                        <label for="txtSoLuong" class="col-form-label">
                            Số lượng:
                        </label>
                        <asp:TextBox ID="txtSoLuong" runat="server" CssClass="form-control w-50 l-20" Text="" placeholder="Nhập số lượng"></asp:TextBox>
                    </div>
                    <br />
                    <asp:Button ID="btThem" runat="server" Text=">" CssClass="btn btn-primary" OnClick="btThem_Click" />
                </div>
                <div class="col-sm-6">
                    <h2 for="LisLoaibanh" class="text-success">Danh sách bánh được đặt:</h2>
                    <asp:ListBox ID="LisLoaibanh" runat="server" CssClass="form-control" SelectionMode="Multiple"></asp:ListBox>
                    <br />
                    <asp:Button ID="btXoa" runat="server" Text="Xóa" CssClass="btn btn-danger" OnClick="btXoa_Click" />
                </div>
                <asp:Button Class="bg-success text-white text-center" ID="InDatHang" runat="server" Text="In đơn đặt hàng" OnClick="Button1_Click" />
            </div>
            <asp:Label ID="lbtKetQua" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
