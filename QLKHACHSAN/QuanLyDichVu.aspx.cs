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
    public partial class QuanLyDichVu : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string sql;
            sql = "select * from DICHVU";
            grid_qldichvu.DataSource = ketnoi.ReadData(sql);
            grid_qldichvu.DataBind();
        }

        protected void btntrove_Click(object sender, EventArgs e)
        {
            Response.Redirect("QUANLY.aspx");
        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            string madv = txtdl_madv.Text;
            string tendv = txtdl_tendv.Text;
            string gia = txtdl_giadv.Text;
            string filename = Path.GetFileName(FileUpload1.FileName);
            string savePath = Server.MapPath("~/images/") + filename;
            FileUpload1.SaveAs(savePath);
            string sql;
            if (madv == "" || tendv == "" || filename == "" || gia == "")
            {
                lbthem.Text = "Phải nhập đầy đủ thông tin dịch vụ";
            }
            else
            {
                sql ="Insert into DICHVU values("+madv+",N'"+tendv+"',"+gia+ ",'" + filename + "')";
                int ketqua = ketnoi.CapNhat(sql);
                if (ketqua > 0)
                lbthem.Text = "Thêm dịch vụ mới thành công";
                sql = "select * from DICHVU";
                grid_qldichvu.DataSource = ketnoi.ReadData(sql);
                grid_qldichvu.DataBind();
            }
        }

       
        protected void btnxoaDV_Click(object sender, EventArgs e)
        {
            string madv = ((LinkButton)sender).CommandArgument;
            string sql;
            sql = "delete from DICHVU where MaDV=" + madv + "";
            int ketqua = ketnoi.CapNhat(sql);
            if (ketqua > 0)
            {
                lbthongbao.Text = "Xóa thành công";
                sql = "select * from DICHVU";
                grid_qldichvu.DataSource = ketnoi.ReadData(sql);
                grid_qldichvu.DataBind();
            }
            else
            {
                lbthongbao.Text = "Xóa không thành công";
            }
        }

        protected void btnsuaDV_Click(object sender, EventArgs e)
        {
            string suadv = ((LinkButton)sender).CommandArgument;
            LinkButton btnsua = ((LinkButton)sender);
            GridViewRow item = (GridViewRow)btnsua.Parent.Parent;
            string madv = ((TextBox)item.FindControl("txtmadv")).Text;
            string tendv = ((TextBox)item.FindControl("txttendv")).Text;
            string hinhanh = ((TextBox)item.FindControl("txthinhanh")).Text;
            string giadv = ((TextBox)item.FindControl("txtgia")).Text;
            string sql;
            if(madv != "" && tendv != "" && hinhanh != "" && giadv != "")
            {
                sql = "update DICHVU Set MaDV=" + madv + ", TenDV=N'" + tendv + "', GiaDV=" + giadv + ", HinhAnh= '" + hinhanh + "' where MaDV=" + suadv + " ";
                int ketqua = ketnoi.CapNhat(sql);
                if (ketqua > 0)
                {
                    lbthongbao.Text = "Sửa thành công";
                    sql = "select * from DICHVU";
                    grid_qldichvu.DataSource = ketnoi.ReadData(sql);
                    grid_qldichvu.DataBind();
                }
                else
                {
                    lbthongbao.Text = "Sửa không thành công";
                }
            }
            else
            {
                lbthongbao.Text = "Không được để trống thông tin";
            }
           
        }
    }
}