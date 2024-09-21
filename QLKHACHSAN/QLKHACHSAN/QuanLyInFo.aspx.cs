using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace QLKHACHSAN
{
    public partial class QuanLyInFo : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            //string ma = Request.QueryString["matk"] + "";
            string matk = Session["username"]+"";
            string sql = "select * from TAIKHOAN where MaTK='"+matk+"' ";
            dl_thongtincanhan.DataSource = ketnoi.ReadData(sql);
            dl_thongtincanhan.DataBind();
        }

    }
}