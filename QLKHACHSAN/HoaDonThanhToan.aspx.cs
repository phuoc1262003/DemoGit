using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace QLKHACHSAN
{
    public partial class HoaDonThanhToan : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string matk = Session["username"] + "";
            //string sqlkiemtra = "select * from PHIEUDATPHONG where MaTK='" + matk + "' ";
            //DataTable dtkt = ketnoi.ReadData(sqlkiemtra);
            if (matk != "")
            {
                string sqlp = "Select MaPhieuDP, MaTK, PHONG.MaPhong, SoNgThueP, NgThue, NgTra, GiaPhong, (SoNgThueP*GiaPhong) AS ThanhTien from PHIEUDATPHONG, PHONG where PHIEUDATPHONG.MaPhong = PHONG.MaPhong AND MaTK ='" + matk + "' ";
                DataTable dt = ketnoi.ReadData(sqlp);
                grid_hoadon.DataSource = dt;
                grid_hoadon.DataBind();
                string sqldv = "Select MaPhieuDV, MaTK, DICHVU.MaDV, SoNgaySDDV, GiaDV, (SoNgaySDDV*GiaDV) AS ThanhTien from PHIEUDICHVU, DICHVU where PHIEUDICHVU.MaDV = DICHVU.MaDV AND MaTK ='" + matk + "' ";
                DataTable dt1 = ketnoi.ReadData(sqldv);
                grid_dichvu.DataSource = dt1;
                grid_dichvu.DataBind();
            }
            
        }

        protected void btntrove_Click(object sender, EventArgs e)
        {
            Response.Redirect("QuanLyInFo.aspx");
        }

        protected void linkbtnxoaphong_Click(object sender, EventArgs e)
        {
            string matk = Session["username"] + "";
            string maphong = ((LinkButton)sender).CommandArgument;
            string sql;
            sql = "delete from PHIEUDATPHONG where MaPhong=" + maphong + " and MaTK ='"+matk+"'";
            int ketqua = ketnoi.CapNhat(sql);
            if (ketqua > 0)
            {
                lbthongbao.Text = "Xóa thành công";
                string sqlp = "Select MaPhieuDP, MaTK, PHONG.MaPhong, SoNgThueP, NgThue, NgTra, GiaPhong, (SoNgThueP*GiaPhong) AS ThanhTien from PHIEUDATPHONG, PHONG where PHIEUDATPHONG.MaPhong = PHONG.MaPhong AND MaTK ='" + matk + "' ";
                DataTable dt = ketnoi.ReadData(sqlp);
                grid_hoadon.DataSource = dt;
                grid_hoadon.DataBind();
                string up = "Trống";
                string uptinhtrang = "update PHONG set TrangThai= N'" + up + "' where MaPhong= "+maphong+"";
                int upTT = ketnoi.CapNhat(uptinhtrang);

            }
            else
            {
                lbthongbao.Text = "Xóa không thành công";
            }
        }

        protected void linkbtnxoadv_Click(object sender, EventArgs e)
        {
            string matk = Session["username"] + "";
            string maphong = ((LinkButton)sender).CommandArgument;
            string sql;
            sql = "delete from PHIEUDICHVU where MaDV=" + maphong + " and MaTK ='" + matk + "'";
            int ketqua = ketnoi.CapNhat(sql);
            if (ketqua > 0)
            {
                lbthongbao1.Text = "Xóa thành công";
                string sqldv = "Select MaPhieuDV, MaTK, DICHVU.MaDV, SoNgaySDDV, GiaDV, (SoNgaySDDV*GiaDV) AS ThanhTien from PHIEUDICHVU, DICHVU where PHIEUDICHVU.MaDV = DICHVU.MaDV AND MaTK ='" + matk + "' ";
                DataTable dt1 = ketnoi.ReadData(sqldv);
                grid_dichvu.DataSource = dt1;
                grid_dichvu.DataBind();

            }
            else
            {
                lbthongbao1.Text = "Xóa không thành công";
            }
        }
    }
}