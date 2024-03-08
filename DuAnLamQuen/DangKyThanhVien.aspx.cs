using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuAnLamQuen
{
    public partial class DangKyThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // Tạo danh sách ngày
                for (int day = 1; day <= 31; day++)
                {
                    ListItem listItem = new ListItem(day.ToString());
                    ddlNgay.Items.Add(listItem);
                }

                // Tạo danh sách tháng
                for (int thang = 1; thang <= 12; thang++)
                {
                    ListItem listItem = new ListItem(thang.ToString());
                    ddlThang.Items.Add(listItem);
                }
            

                // Tạo danh sách năm
                int currentYear = DateTime.Now.Year;
                for (int year = currentYear; year >= currentYear - 100; year--) // Hiển thị 100 năm trước đến năm hiện tại
                {
                    ListItem listItem = new ListItem(year.ToString());
                    ddlNam.Items.Add(listItem);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ketQua = "";
            ketQua += $"<li>Họ tên khách hàng:<b>{txtHoTen.Text}</b></li>";

            ketQua += $"<li>Tên đăng nhập:<b> {txtTenDangNhap.Text}</b></li>";
            // Password
            //   if (txtPass.Text == txtNhapLaiPass.Text)
            //  {
            ketQua += $"<li>Mật khẩu:<b>{txtPass.Text}</b></li>";
              //}      
            ketQua += $"<li>Ngày tháng năm sinh:<b>{ddlNgay.Text+"/"+ddlThang.Text+"/"+ddlNam.Text}</b></li>";
            // định dạng tiền

            // Định dạng tiền tệ cho chuỗi thu nhập
            //decimal thuNhap = decimal.Parse(txtThuNhap.Text);
            //string thuNhapFormatted = string.Format(new CultureInfo("vi-VN"), "{0:C}", thuNhap);

            //// Thêm vào chuỗi kết quả
            //ketQua += $"<li>Thu nhập: <b>{thuNhapFormatted}</b></li>";

            double thunhap = double.Parse(txtThuNhap.Text);
            string chuoi=  string.Format("{0:#,0.#} VNĐ", Convert.ToDecimal(thunhap));
            ketQua += $"<li>Thu nhập:<b>{chuoi}</b></li>";
            //Giới tính
            if (CheckGioiTinh.Checked)
            {
                ketQua +=$"<li>Giới tính:<b>{CheckGioiTinh.Text}</b></li>";
            }
            else
            {
                ketQua += $"<li>Giới tính:<b>{"Nữ"}</b></li>";
            }
            ketQua += $"<li>Email:<b>{txtEmail.Text}</b></li>";

            //adress
            ketQua += $"<li>Địa chỉ:<b>{txtDiaChi.Text}</b></li>";
            //phone number
            ketQua += $"<li>Điện thoại:<b>{txtDienThoai.Text}</b></li>";         
            lblKetQua.Text =ketQua;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            res
        }
    }
}