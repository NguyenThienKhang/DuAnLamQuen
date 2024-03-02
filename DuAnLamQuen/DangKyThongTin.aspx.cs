using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuAnLamQuen
{
    public partial class DangKyThongTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlTrinhDo.Items.Add(new ListItem("Trung cấp", "1"));
                ddlTrinhDo.Items.Add(new ListItem("Cao đẳng", "2"));
                ddlTrinhDo.Items.Add(new ListItem("Đại học", "3"));
                ddlTrinhDo.Items.Add(new ListItem("Trung cấp", "4"));
                //nghề nghiêp
                listNgheNghiep.Items.Add(new ListItem("Kỹ sư"));
                listNgheNghiep.Items.Add(new ListItem("Bác sỉ"));
                listNgheNghiep.Items.Add(new ListItem("Công nhân"));
                listNgheNghiep.Items.Add(new ListItem("Bác học"));
                //sở thích
                CheckBoxList1.Items.Add(new ListItem("Ăn"));
                CheckBoxList1.Items.Add(new ListItem("Ngủ"));
                CheckBoxList1.Items.Add(new ListItem("Đá bóng"));
                CheckBoxList1.Items.Add(new ListItem("Học"));

            }
        }

        protected void btnGui_Click(object sender, EventArgs e)
        {
            string ketqua = "";
            ketqua += "<ul>";
            ketqua += $"<li> Họ tên:{txtHoTen.Text}</li>";
            ketqua += $"<li> Ngày sinh:{txtNgaySinh.Text}</li>";
            if (rdNam.Checked)
            {
                ketqua += $"<li>Giới tính :Nam</li>";
            }
            else
            {
                ketqua += $"<li>Giới tính :Nữ</li>";

            }
            // Sở thích
            ketqua += $"<li> Sở thích: {CheckBoxList1.SelectedItem.Text}</li>";
            ketqua += "<ul>";
            if (fHinh.HasFile)
            {
                ketqua += $"<li>Trình độ: {ddlTrinhDo.SelectedItem.Text}</li>";
                ketqua += $"<li>Nghề nghiệp: {listNgheNghiep.SelectedItem.Text}</li>";
                // xử lí hình upload
                string path = Server.MapPath("~/uploads");
                fHinh.SaveAs(path + "/" + fHinh.FileName);
                ketqua += $"<li> Ảnh<img src='uploads/{fHinh.FileName}'</li>";
            }
            //trả kết qủa
            lblKetQua.Text = ketqua;

        }
    }
    
}