using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace QLKHACHSAN
{
    public partial class QuanLyDPvaDV : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string sqlp = "Select MaPhieuDP, MaTK, PHONG.MaPhong, SoNgThueP, NgThue, NgTra from PHIEUDATPHONG, PHONG where PHIEUDATPHONG.MaPhong = PHONG.MaPhong";
            DataTable dt = ketnoi.ReadData(sqlp);
            grid_hoadon.DataSource = dt;
            grid_hoadon.DataBind();
            string sqldv = "Select MaPhieuDV, MaTK, DICHVU.MaDV, SoNgaySDDV from PHIEUDICHVU, DICHVU where PHIEUDICHVU.MaDV = DICHVU.MaDV ";
            DataTable dt1 = ketnoi.ReadData(sqldv);
            grid_dichvu.DataSource = dt1;
            grid_dichvu.DataBind();
        }

        protected void btntrove_Click(object sender, EventArgs e)
        {
            Response.Redirect("QUANLY.aspx");
        }
        //protected void linkbtnxoaphong_Click(object sender, EventArgs e)
        //{
            
        //    string maphong = ((LinkButton)sender).CommandArgument;
        //    string sql;
        //    sql = "delete from PHIEUDATPHONG where MaPhong=" + maphong + " and MaTK ='" + matk + "'";
        //    int ketqua = ketnoi.CapNhat(sql);
        //    if (ketqua > 0)
        //    {
        //        lbthongbao.Text = "Xóa thành công";
        //        string sqlp = "Select MaPhieuDP, MaTK, PHONG.MaPhong, SoNgThueP, NgThue, NgTra from PHIEUDATPHONG, PHONG where PHIEUDATPHONG.MaPhong = PHONG.MaPhong";
        //        DataTable dt = ketnoi.ReadData(sqlp);
        //        grid_hoadon.DataSource = dt;
        //        grid_hoadon.DataBind();

        //    }
        //    else
        //    {
        //        lbthongbao.Text = "Xóa không thành công";
        //    }
        //}

        //protected void linkbtnxoadv_Click(object sender, EventArgs e)
        //{
        //    string matk = Session["username"] + "";
        //    string maphong = ((LinkButton)sender).CommandArgument;
        //    string sql;
        //    sql = "delete from PHIEUDICHVU where MaDV=" + maphong + " and MaTK ='" + matk + "'";
        //    int ketqua = ketnoi.CapNhat(sql);
        //    if (ketqua > 0)
        //    {
        //        lbthongbao1.Text = "Xóa thành công";
        //        string sqldv = "Select MaPhieuDV, MaTK, DICHVU.MaDV, SoNgaySDDV from PHIEUDICHVU, DICHVU where PHIEUDICHVU.MaDV = DICHVU.MaDV";
        //        DataTable dt1 = ketnoi.ReadData(sqldv);
        //        grid_dichvu.DataSource = dt1;
        //        grid_dichvu.DataBind();

        //    }
        //    else
        //    {
        //        lbthongbao1.Text = "Xóa không thành công";
        //    }
        //}
    }
}