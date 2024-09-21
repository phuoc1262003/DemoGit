using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace QLKHACHSAN
{
    public partial class DichVu : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string madichvu = Request.QueryString["mdv"] + "";
            string sql;
            if (madichvu == "")
            {
                sql = "select * from DICHVU";

            }
            else
            {
                sql = "select * from DICHVU where MaDV= " + madichvu + " ";

            }
            dl_dichvu.DataSource = ketnoi.ReadData(sql);
            dl_dichvu.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string madv = ((ImageButton)sender).CommandArgument;
            Response.Redirect("ChiTietDichVu.aspx?madv=" + madv);
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            string madv = ((LinkButton)sender).CommandArgument;
            Response.Redirect("ChiTietDichVu.aspx?madv=" + madv);
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            string madv = ((LinkButton)sender).CommandArgument;
            Response.Redirect("ChiTietDichVu.aspx?madv=" + madv);
        }
    }
}