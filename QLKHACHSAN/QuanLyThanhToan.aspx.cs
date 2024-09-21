using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace QLKHACHSAN
{
    public partial class QuanLyThanhToan : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            LoadData();
        }

        protected void btntrove_Click(object sender, EventArgs e)
        {
            Response.Redirect("QUANLY.aspx");
        }
        private void LoadData()
        {
            string sql = "select HOADON.MaHD, MaTK, MaPhong, SoNgThueP, MaDV, SoNgSDDV, ((GiaPhong*SoNgThueP)+(GiaDV*SoNgSDDV)) AS ThanhTien from HOADON, PHIEUDATPHONG, PHIEUDICHVU where HOADON.MaPhieuDP = PHIEUDATPHONG.MaPhieuDP AND HOADON.MaPhieuDV = PHIEUDICHVU.MaPhieuDV";
            grid_qlthanhtoan.DataSource = ketnoi.ReadData(sql);
            grid_qlthanhtoan.DataBind();
        }
    }
}