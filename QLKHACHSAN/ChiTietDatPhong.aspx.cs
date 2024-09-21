using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace QLKHACHSAN
{
    public partial class ChiTietDatPhong : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string maphong = Request.QueryString["maphong"] + "";
            string sql;
            if(maphong != "")
            {
                sql = "select * from PHONG where MaPhong=" + maphong + "";
                dl_datphong.DataSource = ketnoi.ReadData(sql);
                dl_datphong.DataBind();
            }
        }

        protected void btndanhgia_Click(object sender, EventArgs e)
        {
            string matk = Session["username"] + "";
            string maphong = ((Button)sender).CommandArgument;
            string sqlKiemTra = "SELECT * FROM PHIEUDATPHONG WHERE MaTK = '" + matk + "' AND MaPhong = " + maphong + " ";
            DataTable dt = ketnoi.ReadData(sqlKiemTra);
            if(dt.Rows.Count > 0)
            {
                Response.Redirect("DanhGia.aspx?maphong=" + maphong);
            }
            else
            {
                lbthongbao.Text = "Bạn chưa đặt phòng này lần nào nên không được phép đánh giá";
            }

        }


       
        protected void btndatphong_Click(object sender, EventArgs e)
        {
            string matk = Session["username"] + "";
            if (matk != "")
            {
                string maphong = ((Button)sender).CommandArgument;
                Button btdat = (Button)sender;
                DataListItem item = (DataListItem)btdat.Parent;
                string songaythue = ((TextBox)item.FindControl("txtsongaythue")).Text;
                string NgThue = ((TextBox)item.FindControl("txtNgayThue")).Text;
                string NgTra = ((TextBox)item.FindControl("txtNgayTra")).Text;
                if (songaythue == "" || NgThue == "" || NgTra == "")
                {
                    lbthongbao.Text = "Bạn phải nhập đầy đủ thông tin";
                }
                else if (int.TryParse(songaythue, out int songay) && songay > 0)
                {
                    string sqlKiemTra = "SELECT * FROM PHIEUDATPHONG WHERE MaTK = '" + matk + "' AND MaPhong = " + maphong + " ";
                    DataTable dt = ketnoi.ReadData(sqlKiemTra);

                    if (dt.Rows.Count > 0)
                    {
                        // cập nhật
                        string sqlUp = "Update PHIEUDATPHONG Set SoNgThueP=" + songay + ", NgThue = '" + NgThue + "', NgTra ='" + NgTra + "' Where MaTK ='" + matk + "' AND MaPhong = " + maphong + " ";
                        int ketqua = ketnoi.CapNhat(sqlUp);
                        if (ketqua > 0) lbthongbao.Text = "Cập Nhật Thành Công";
                        else lbthongbao.Text = "Cập Nhật Không thành công";
                    }
                    else
                    {                                                                        
                            string sqlKiemTT = "SELECT * FROM PHONG WHERE MaPhong=" + maphong + " AND TrangThai = N'Đã Thuê'";
                            DataTable uptt = ketnoi.ReadData(sqlKiemTT);
                            if (uptt != null && uptt.Rows.Count > 0)
                            {
                                lbthongbao.Text = "Phòng này đã được thuê bạn không thể đặt";
                            }
                            else
                            {
                                // thêm mới
                                string sqlThem = "Insert Into PHIEUDATPHONG Values('" + matk + "'," + maphong + "," + songay + ",'" + NgThue + "','" + NgTra + "')";
                                int ketqua = ketnoi.CapNhat(sqlThem);
                                string up = "Đã Thuê";
                                string uptinhtrang = "update PHONG set TrangThai= N'" + up + "' where MaPhong = " + maphong + "";
                                int upTT = ketnoi.CapNhat(uptinhtrang);
                                string sql = "select * from PHONG where MaPhong=" + maphong + "";
                                dl_datphong.DataSource = ketnoi.ReadData(sql);
                                dl_datphong.DataBind();
                                if (ketqua > 0) lbthongbao.Text = "Đặt phòng thành công";

                            }                                                   
                    }
                }
                else
                {
                    lbthongbao.Text = "Không được nhập số âm";
                }
            }
            else
            {
                lbthongbao.Text = "Bạn Phải Đăng Nhập Trước";
            }
        }


    }
}

//if (int.TryParse(songaythue, out int songay) && songay > 0)
//{
//    string sqlKiemTra = "SELECT * FROM PHIEUDATPHONG WHERE MaTK = '" + matk + "' AND MaPhong = " + maphong + " ";
//    DataTable dt = ketnoi.ReadData(sqlKiemTra);

//    if (dt.Rows.Count > 0)
//    {
//        // cập nhật
//        string sqlUp = "Update PHIEUDATPHONG Set SoNgThueP=" + songay + ", NgThue = '" + NgThue + "', NgTra ='" + NgTra + "' Where MaTK ='" + matk + "' AND MaPhong = " + maphong + " ";
//        int ketqua = ketnoi.CapNhat(sqlUp);
//        if (ketqua > 0) lbthongbao.Text = "Cập Nhật Thành Công";
//        else lbthongbao.Text = "Cập Nhật Không thành công";
//    }
//    else
//    {
//        if (songaythue == "" || NgThue == "" || NgTra == "")
//        {
//            lbthongbao.Text = "Bạn phải nhập đầy đủ thông tin";
//        }

//        else
//        {
//            string sqlKiemTT = "SELECT * FROM PHONG WHERE MaPhong=" + maphong + " AND TrangThai = N'Đã Thuê'";
//            DataTable uptt = ketnoi.ReadData(sqlKiemTT);
//            if (uptt != null && uptt.Rows.Count > 0)
//            {
//                lbthongbao.Text = "Phòng này đã được thuê bạn không thể đặt";
//            }
//            else
//            {
//                // thêm mới
//                string sqlThem = "Insert Into PHIEUDATPHONG Values('" + matk + "'," + maphong + "," + songay + ",'" + NgThue + "','" + NgTra + "')";
//                int ketqua = ketnoi.CapNhat(sqlThem);
//                string up = "Đã Thuê";
//                string uptinhtrang = "update PHONG set TrangThai= N'" + up + "' where MaPhong = " + maphong + "";
//                int upTT = ketnoi.CapNhat(uptinhtrang);
//                string sql = "select * from PHONG where MaPhong=" + maphong + "";
//                dl_datphong.DataSource = ketnoi.ReadData(sql);
//                dl_datphong.DataBind();
//                if (ketqua > 0) lbthongbao.Text = "Đặt phòng thành công";

//            }

//        }

//    }
//}
//else
//{
//    lbthongbao.Text = "Không được nhập số âm";
//}