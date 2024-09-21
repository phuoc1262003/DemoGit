using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace QLKHACHSAN
{
    public partial class QuanLyDanhGia : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string sql = "select * from DANHGIA";
            grid_qldichvu.DataSource = ketnoi.ReadData(sql);
            grid_qldichvu.DataBind();
        }

        protected void btnxoadanhgia_Click(object sender, EventArgs e)
        {
            string maphong = ((LinkButton)sender).CommandArgument;
            string sql;
            sql = "delete from DANHGIA where MaPhong=" + maphong + "";
            int ketqua = ketnoi.CapNhat(sql);
            if (ketqua > 0)
            {
                lbthongbao.Text = "Xóa thành công";
                sql = "select * from DANHGIA";
                grid_qldichvu.DataSource = ketnoi.ReadData(sql);
                grid_qldichvu.DataBind();
            }
            else
            {
                lbthongbao.Text = "Xóa không thành công";
            }
        }

        protected void btntrove_Click(object sender, EventArgs e)
        {
            Response.Redirect("QUANLY.aspx");
        }
    }
}