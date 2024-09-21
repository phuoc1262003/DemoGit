using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace QLKHACHSAN
{
    public partial class QuanLyTaiKhoan : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            LoadData();
        }
        protected void bnttimkiem_Click(object sender, EventArgs e)
        {
            string matk = txtsearch.Text.Trim();
            string sql;

            if (matk == "")
            {
                //sql = "SELECT * FROM TAIKHOAN";
                LoadData();
            }
            else
            {
                sql = "SELECT * FROM TAIKHOAN WHERE MaTK ='" + matk + "' ";
                grid_qltaikhoan.DataSource = ketnoi.ReadData(sql);
                grid_qltaikhoan.DataBind();
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            // xóa
            string matk = ((LinkButton)sender).CommandArgument;
            if (matk == "Admin")
            {
                lbthongbao.Text = "Không được phép xóa tài khoản này";
            }
            else
            {
                string sql;
                sql = "delete from TAIKHOAN where MaTK= '" + matk + "' ";
                int ketqua = ketnoi.CapNhat(sql);
                if (ketqua > 0)
                {
                    lbthongbao.Text = "Xóa thành công";
                    LoadData();
                }
                else
                {
                    lbthongbao.Text = "Xóa không thành công";
                }
            }
        }
        protected void btnsua_Click(object sender, EventArgs e)
        {
            string suatk = ((LinkButton)sender).CommandArgument;
            LinkButton btnsua = ((LinkButton)sender);
            GridViewRow item = (GridViewRow)btnsua.Parent.Parent;
            string tenkh = ((TextBox)item.FindControl("txttenkh")).Text;
            string diachi = ((TextBox)item.FindControl("txtdiachi")).Text;
            string sodt = ((TextBox)item.FindControl("txtsodt")).Text;
            string sql;
            sql = "update TAIKHOAN Set TenKH= N'" + tenkh + "', DiaChi= N'" + diachi + "', SoDT= '" + sodt + "' where MaTK='" + suatk + "' ";
            int ketqua = ketnoi.CapNhat(sql);
            if (ketqua > 0)
            {
                lbthongbao.Text = "Sửa thành công";
                LoadData();
            }
            else
            {
                lbthongbao.Text = "Sửa không thành công";
            }
        }
        private void LoadData()
        {
            string sql = "SELECT * FROM TAIKHOAN";
            grid_qltaikhoan.DataSource = ketnoi.ReadData(sql);
            grid_qltaikhoan.DataBind();
        }

        protected void btntrove_Click(object sender, EventArgs e)
        {
            Response.Redirect("QUANLY.aspx");
        }
    }
}
