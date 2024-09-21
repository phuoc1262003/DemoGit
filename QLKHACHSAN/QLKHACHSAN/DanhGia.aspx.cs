using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace QLKHACHSAN
{
    public partial class DanhGia : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string maphong = Request.QueryString["maphong"] + "";
            string sql;
            sql = "select * from PHONG where MaPhong=" + maphong + "";
            dl_danhgia.DataSource = ketnoi.ReadData(sql);
            dl_danhgia.DataBind();


        }
    }
}