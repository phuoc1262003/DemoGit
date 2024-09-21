using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace QLKHACHSAN
{
    public partial class ChiTietDichVu : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string madv = Request.QueryString["madv"] + "";
            string sql;
            if(madv != "")
            {
                sql = "select * from DICHVU where MaDV="+madv+"";
                dl_datdichvu.DataSource = ketnoi.ReadData(sql);
                dl_datdichvu.DataBind();

            }
        }

        protected void btndatdv_Click(object sender, EventArgs e)
        {
            string matk = Session["username"] + "";
            if(matk != "")
            {
                string madv = ((Button)sender).CommandArgument;
                Button btdat = (Button)sender;
                DataListItem item = (DataListItem)btdat.Parent;
                string songaySDDV = ((TextBox)item.FindControl("txtsoluong")).Text;
                //string sqlKiemTra = "SELECT * FROM PHIEUDICHVU WHERE MaTK = '" + matk + "' AND MaDV = " + madv + " ";
                //DataTable dt = ketnoi.ReadData(sqlKiemTra);
                if (int.TryParse(songaySDDV, out int songay) && songay > 0)
                {
                    string sqlKiemTra = "SELECT * FROM PHIEUDICHVU WHERE MaTK = '" + matk + "' AND MaDV = " + madv + " ";
                    DataTable dt = ketnoi.ReadData(sqlKiemTra);
                    if (dt.Rows.Count > 0)
                    {
                        // Update
                        string sqlUp = "Update PHIEUDICHVU Set SoNgaySDDV=" + songay + " Where MaTK ='" + matk + "' AND MaDV = " + madv + " ";
                        int ketqua = ketnoi.CapNhat(sqlUp);
                        if (ketqua > 0) lbthongbao.Text = "Cập Nhật Thành Công";
                        else lbthongbao.Text = "Cập Nhật Không thành công";
                    }
                    else
                    {
                        if (songaySDDV =="")
                        {
                            lbthongbao.Text = "Quý khách chưa nhập ngày sử dụng dịch vụ";
                        }
                        else
                        {
                            string sqlThem = "Insert Into PHIEUDICHVU Values('" + matk + "'," + madv + "," + songay + ")";
                            int ketqua = ketnoi.CapNhat(sqlThem);
                            if (ketqua > 0) lbthongbao.Text = "Đặt dịch vụ thành công";
                        }
                    }
                }
                else
                {
                    lbthongbao.Text = "không được nhập số âm";
                }
            }
            else
            {
                lbthongbao.Text = "Bạn Phải Đăng Nhập Trước";
            }
        }
    }
}