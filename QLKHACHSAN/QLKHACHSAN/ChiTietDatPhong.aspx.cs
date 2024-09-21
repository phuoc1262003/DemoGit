using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace QLKHACHSAN
{
    public partial class ChiTietDatPhong : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string maphong = Request.QueryString["maphong"] + "";
            string sql;
            if(maphong != "")
            {
                sql = "select * from PHONG where MaPhong=" + maphong + "";
                dl_datphong.DataSource = ketnoi.ReadData(sql);
                dl_datphong.DataBind();
            }
        }

        protected void btndanhgia_Click(object sender, EventArgs e)
        {
            string maphong = ((Button)sender).CommandArgument;
            Response.Redirect("DanhGia.aspx?maphong="+maphong);
        }
    }
}