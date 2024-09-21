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

        protected void btndanhgia_Click(object sender, EventArgs e)
        {
            
            string matk = Session["username"] + "";
            if(matk != "")
            {
                string maphong = ((Button)sender).CommandArgument;
                Button btdanhgia = (Button)sender;
                DataListItem item = (DataListItem)btdanhgia.Parent;
                string txtdanhgia = ((TextBox)item.FindControl("txtdanhgia")).Text;
                if(txtdanhgia == "")
                {
                    lbthongbao.Text = "Bạn chưa nhập đánh giá";
                }
                else
                {
                    string sql = "insert into DANHGIA values("+maphong+",'"+matk+"',N'"+txtdanhgia+"')";
                    int ketqua = ketnoi.CapNhat(sql);
                    if (ketqua > 0) lbthongbao.Text = "Đánh giá thành công";
                }
            }
            
            
        }
    }
}