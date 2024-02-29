using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuAnLamQuen
{
    public partial class TinhToan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btCong_Click(object sender, EventArgs e)
        {
            int so1 = Int32.Parse(txtSo1.Text);
            int so2 = Int32.Parse(txtSo2.Text);
            int kq = so1 + so2;
            txtKetQua.Text = kq.ToString();
        }

        protected void btTru_Click(object sender, EventArgs e)
        {

            int so1 = Int32.Parse(txtSo1.Text);
            int so2 = Int32.Parse(txtSo2.Text);
            int kq = so1 - so2;
            txtKetQua.Text = kq.ToString();
        }

        protected void btNhan_Click(object sender, EventArgs e)
        {
            int so1 = Int32.Parse(txtSo1.Text);
            int so2 = Int32.Parse(txtSo2.Text);
            int kq = so1 * so2;
            txtKetQua.Text = kq.ToString();
        }

        protected void btChia_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtSo1.Text))
            {
                txtKetQua.Text = "Thiếu số 1";
                txtSo1.Focus();
                return;
            }
            if (string.IsNullOrEmpty(txtSo2.Text))
            {
                txtKetQua.Text = "Thiếu số 2";
                txtSo2.Focus();
                return;
            }
            float so1, so2;
            if (!float.TryParse(txtSo1.Text, out so1) || !float.TryParse(txtSo2.Text, out so2))
            {
                txtKetQua.Text = "Nhập số không được nhập chữ!";
                return;
            }
            float kq = (float)so1 / (float)so2;
            txtKetQua.Text = kq.ToString();
        }
    }
}