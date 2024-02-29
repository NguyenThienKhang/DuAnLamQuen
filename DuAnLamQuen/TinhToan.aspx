<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinhToan.aspx.cs" Inherits="DuAnLamQuen.TinhToan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
     <style>
        .container {
            margin-top: 50px;
            border: 2px solid black;
            padding: 20px;
            width: 300px;
            margin-left: auto;
            margin-right: auto;
            border-radius: 10px;
        }

        h1 {
            color: white;
        }

        input[type="text"], input[type="button"] {
            margin: 5px 0;
            padding: 5px;
            width: 100%;
            border-radius: 5px;
        }

        .text-danger {
            color: red;
        }
    </style>
<body>
    <form id="form1" runat="server">
         <div class="container p-3 my-3 bg-dark text-white">
            <div class="text-center">
                <h1 class="text-center">TÍNH TOÁNN  </h1>
                Nhập số 1:<asp:TextBox ID="txtSo1" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Chưa nhập số 1" ControlToValidate="txtSo1" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:CompareValidator ID="cpvSo1" runat="server" ErrorMessage="Nhập số không nhập chữ" ForeColor="#FF0066" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtSo1"></asp:CompareValidator>
                <br />
                Nhập số 2:<asp:TextBox ID="txtSo2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Chưa nhập số 2" ForeColor="Red" ControlToValidate="txtSo2"></asp:RequiredFieldValidator><br />
                <asp:CompareValidator ID="cpvSo22" runat="server" ErrorMessage="Nhập số không nhập chữ" ForeColor="#FF0066" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtSo2"></asp:CompareValidator>
                <br />
                <asp:Button CssClass="btn btn-primary" ID="btCong" runat="server" Text="Cộng" OnClick="btCong_Click" />
                <asp:Button CssClass="btn btn-success" ID="btTru" runat="server" Text="Trừ" OnClick="btTru_Click" />
                <asp:Button CssClass="btn btn-warning" ID="btNhan" runat="server" Text="Nhân" OnClick="btNhan_Click" />
                <asp:Button CssClass="btn btn-danger" ID="btChia" runat="server" Text="Chia" OnClick="btChia_Click" />
                <br />
                Kết quả :<asp:TextBox class="text-danger" ID="txtKetQua" runat="server" Font-Strikeout="False"></asp:TextBox>
            </div>
        </div>
    </form>
</body>
</html>
