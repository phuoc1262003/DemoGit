using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace QLKHACHSAN
{
    public partial class QuanLyPhong : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string sql;
            sql = "select * from PHONG";
            grid_qlPhong.DataSource = ketnoi.ReadData(sql);
            grid_qlPhong.DataBind();
        }

        protected void btntrove_Click(object sender, EventArgs e)
        {
            Response.Redirect("QUANLY.aspx");
        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            string maphong = txtdl_maphong.Text;
            string malp = txtdl_malp.Text;
            string mota = txtdl_mota.Text;
            string filename = Path.GetFileName(FileUpload1.FileName);
            string savePath = Server.MapPath("~/images/") + filename;
            FileUpload1.SaveAs(savePath);
            string giaphong = txtdl_giaphong.Text;
            string trangthai = txtdl_trangthai.Text;
            string sql;
            if( maphong == "" || malp == "" || mota == "" || filename == "" || giaphong == "" || trangthai == "")
            {
                lbthemphong.Text = "Phải nhập đầy đủ thông tin phòng mới";
            }
            else
            {
                sql = "insert into PHONG values("+maphong+",N'"+malp+"',N'"+mota+"','"+filename+"',"+giaphong+",N'"+trangthai+"')";
                int ketqua = ketnoi.CapNhat(sql);
                if(ketqua > 0)
                lbthemphong.Text = "Thêm thành công";
                string sqlload = "select * from PHONG";
                grid_qlPhong.DataSource = ketnoi.ReadData(sqlload);
                grid_qlPhong.DataBind();
            }
        }

        protected void btnxoaphong_Click(object sender, EventArgs e)
        {
            string maphong = ((LinkButton)sender).CommandArgument;
            string sql;
            sql = "delete from PHONG where MaPhong=" + maphong + "";
            int ketqua = ketnoi.CapNhat(sql);
            if (ketqua > 0)
            {
                lbthongbao.Text = "Xóa thành công";
                string sqlload = "select * from PHONG";
                grid_qlPhong.DataSource = ketnoi.ReadData(sqlload);
                grid_qlPhong.DataBind();
            }
            else
            {
                lbthongbao.Text = "Xóa không thành công";
            }
        }

        protected void btnsuaphong_Click(object sender, EventArgs e)
        {
            string suaphong = ((LinkButton)sender).CommandArgument;
            LinkButton btnsua = ((LinkButton)sender);
            GridViewRow item = (GridViewRow)btnsua.Parent.Parent;
            string maphong = ((TextBox)item.FindControl("txtmaphong")).Text;
            string malp = ((TextBox)item.FindControl("txtmalp")).Text;
            string mota = ((TextBox)item.FindControl("txtmota")).Text;
            string hinhanh = ((TextBox)item.FindControl("txthinhanh")).Text;
            string giaphong = ((TextBox)item.FindControl("txtgiaphong")).Text;
            string trangthai = ((TextBox)item.FindControl("txttrangthai")).Text;
            string sql;
            sql = "update PHONG Set MaPhong=" + maphong + ", MaLP='" + malp + "', Mota= N'" + mota + "', HinhAnh= '" + hinhanh + "', GiaPhong=" + giaphong + ", TrangThai= N'" + trangthai + "' where MaPhong="+suaphong+" ";
            int ketqua = ketnoi.CapNhat(sql);
            if (ketqua > 0)
            {
                lbthongbao.Text = "Sửa thành công";
                string sqlload = "select * from PHONG";
                grid_qlPhong.DataSource = ketnoi.ReadData(sqlload);
                grid_qlPhong.DataBind();
            }
            else
            {
                lbthongbao.Text = "Sửa không thành công";
            }

        }
    }
}