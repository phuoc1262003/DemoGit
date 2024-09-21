using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace QLKHACHSAN
{
    public partial class Login : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Phong.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string username = Login1.UserName;
            string pass = Login1.Password;
            string sql = "select * from TAIKHOAN where MaTK='" + username + "' AND MatKhau='" + pass + "'";
            DataTable dt = ketnoi.ReadData(sql);
            if (username == "" && pass == "")
            {
                Login1.FailureText = " Chưa nhập tên tài khoản và mật khẩu";
            }
            else if (username == "")
            {
                Login1.FailureText = "Chưa nhập tên tài khoản";
            }
            else if (pass == "")
            {
                Login1.FailureText = "Chưa nhập mật khẩu";
            }
            else if (dt.Rows.Count > 0)
            {
                if(username =="Admin")
                {
                    Response.Redirect("QUANLY.aspx");
                }
                else
                {
                    Session["username"] = username;
                    Response.Redirect("Phong.aspx");
                }
            }
            else
            {
                Login1.FailureText = "Sai tên đăng nhập hoặc mật khẩu";
            }
        }
    }
}