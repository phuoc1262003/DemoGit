using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace QLKHACHSAN
{
    public partial class ChiTietDichVu : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string madv = Request.QueryString["madv"] + "";
            string sql;
            if(madv != "")
            {
                sql = "select * from DICHVU where MaDV="+madv+"";
                dl_datdichvu.DataSource = ketnoi.ReadData(sql);
                dl_datdichvu.DataBind();

            }
        }
    }
}