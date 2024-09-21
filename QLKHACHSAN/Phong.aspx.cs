using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLKHACHSAN
{
    public partial class Phong : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string maloaiphong = Request.QueryString["ml"] + "";
            string maphong = Request.QueryString["mp"] + "";
            string sql;
            if (maloaiphong == "" && maphong =="")
            {
                sql = "select * from PHONG";

            }
            else if(maphong != "" )
            {
                sql = "select * from PHONG where MaPhong= " + maphong+" ";
            }
            else
            {
                sql = "select * from PHONG where MaLP= '" + maloaiphong + "' ";

            }           
            dl_phong.DataSource = ketnoi.ReadData(sql);
            dl_phong.DataBind();
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            string maphong = ((LinkButton)sender).CommandArgument;
            Response.Redirect("ChiTietDatPhong.aspx?maphong=" + maphong);
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            string maphong = ((LinkButton)sender).CommandArgument;
            Response.Redirect("ChiTietDatPhong.aspx?maphong=" + maphong);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string maphong = ((ImageButton)sender).CommandArgument;
            Response.Redirect("ChiTietDatPhong.aspx?maphong=" + maphong);
        }
    }
}