using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLKHACHSAN
{
    public partial class TrangChu : System.Web.UI.MasterPage
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (IsPostBack) return;
            string sql = "select * from LOAIPHONG";
            dl_listlp.DataSource = ketnoi.ReadData(sql);
            dl_listlp.DataBind();
            if (Session["username"] != null)
            {
                LinkButton1.Text = "Đăng Xuất";
                LinkButton1.Click -= LinkButton1_Click1;
                LinkButton1.Click += LinkButton1_Click_Logout;
            }  
        }
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        protected void LinkButton1_Click_Logout(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session.Clear();
            Session.Abandon();

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string maloaiphong = ((LinkButton)sender).CommandArgument;
            Response.Redirect("Phong.aspx?ml=" + maloaiphong);
        }

        protected void quanlyinfo_Click(object sender, EventArgs e)
        {
            string matk = ((LinkButton)sender).CommandArgument;
            Response.Redirect("QuanLyInFo.aspx"+matk);
        }
    }
}