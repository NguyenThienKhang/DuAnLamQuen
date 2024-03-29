﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuAnLamQuen
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //loại bánh
                ddl.Items.Add(new ListItem("Bánh bao", "01"));
                ddl.Items.Add(new ListItem("Hamburger", "02"));
                ddl.Items.Add(new ListItem("Bánh xèo", "03"));
                //bánh
  
            }
        }

        protected void btThem_Click(object sender, EventArgs e)
        {
            string i = ddl.SelectedItem.Text;
            int soLuong=int.Parse(txtSoLuong.Text);
            string thongtin=i+"("+soLuong+")";
            LisLoaibanh.Items.Add(new ListItem(thongtin));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string kq = "<h1>HOÁ ĐƠN ĐẶT HÀNG</h1>";
            kq += $"<b>Khách hàng: </b> {txtKhanhHang.Text}<br/>";
            kq += $"<b>Địa chỉ: </b> {txtDiaChi.Text}<br/>";
            kq += $"<b>Mã số thuế: </b> {txtMaSoThue.Text}<br/><br/>";
            kq += "<b>Đặt các loại bánh sau:</b>";
            kq += "<table class='table table-bordered text-danger'>";
            int i = 0;
            foreach (ListItem item in LisLoaibanh.Items)
            {
                i++;
                int vt = item.Text.IndexOf("(");
                string ten = item.Text.Substring(0, vt);
                kq += $"<tr> <td>{ten}</td> <td>{item.Value}</td> </tr>";
            }
            kq += "</table>";

            lbtKetQua.Text = kq;
        }
        protected void btXoa_Click(object sender, EventArgs e)
        {
            // xóa 1 chỉ mục
            //int index = LisLoaibanh.SelectedIndex;
            //LisLoaibanh.Items.RemoveAt(index);
            for(int i=LisLoaibanh.Items.Count-1; i>=0; i--)
            {
                if (LisLoaibanh.Items[i].Selected)
                {
                    LisLoaibanh.Items.RemoveAt(i);
                }
            }
        }
    }
    
}