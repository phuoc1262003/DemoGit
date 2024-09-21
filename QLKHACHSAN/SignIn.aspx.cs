using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace QLKHACHSAN
{
    public partial class SignIn : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

        }

        protected void btncreate_Click(object sender, EventArgs e)
        {
            string username = txtusername.Text;
            string passw = txtpassw.Text;
            string confpassw = txtconfpassw.Text;
            string hoten = txthoten.Text;
            string diachi = txtdiachi.Text;
            string sodt = txtsodt.Text;
            string sqlkiemtra = "select * from TAIKHOAN where MaTK='" + username + "' ";
            DataTable dt = ketnoi.ReadData(sqlkiemtra);
            
            if(username == "" || passw =="" || confpassw =="" || hoten =="" || diachi =="" || sodt == "")
            {
                lb_thongbao.Text = "Bạn phải nhập đầy đủ thông tin";
            }
            else if (dt.Rows.Count > 0)
            {
                lb_thongbao.Text = "Tên tài khoản đã tồn tại";
            }
            else if (confpassw != passw)
            {
                lb_thongbao.Text = "Mật khẩu xác nhận phải giống mật khẩu ";
            }
            else
            {
                string sql = "insert into TAIKHOAN Values('" + username + "','" + passw + "',N'"+hoten+"',N'"+diachi+"','"+sodt+"')";
                int ketqua = ketnoi.CapNhat(sql);
                Response.Redirect("Login.aspx");
            }

        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}