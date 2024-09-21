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

        protected void btntrove_Click(object sender, EventArgs e)
        {
            Response.Redirect("Phong.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string matk = Session["username"] + "";
            //if(matk != "")
            //{
                
            //}
            string capnhat = ((Button)sender).CommandArgument;
            Button btnsua = ((Button)sender);
            DataListItem item = (DataListItem)btnsua.Parent;
            string matkhau = ((TextBox)item.FindControl("txtmatkhau")).Text;
            string hoten = ((TextBox)item.FindControl("txthovaten")).Text;
            string diachi = ((TextBox)item.FindControl("txtdiachi")).Text;
            string sodt = ((TextBox)item.FindControl("txtsodt")).Text;
            string sql;
            if (matkhau != "" && hoten != "" && diachi != "" && sodt != "")
            {
                sql = "update TAIKHOAN Set MatKhau= '" + matkhau + "', TenKH= N'" + hoten + "', DiaChi= N'" + diachi + "', SoDT= '" + sodt + "'where MaTK= '" + capnhat + "' ";
                int ketqua = ketnoi.CapNhat(sql);
                if (ketqua > 0)
                {
                    lbthongbao.Text = "Cập nhật thành công";
                    //sql = "select * from TAIKHOAN where MaTK='" + matk + "' ";
                    //dl_thongtincanhan.DataSource = ketnoi.ReadData(sql);
                    //dl_thongtincanhan.DataBind();
                }
                else
                {
                    lbthongbao.Text = "Cập nhật không thành công";
                }
            }
            else
            {
                lbthongbao.Text = "không được phép để trống thông tin";
            }
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("HoaDonThanhToan.aspx");
        }
    }
}