using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace QLKHACHSAN
{
    public partial class QuanLyBCTK : System.Web.UI.Page
    {
        LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
        }

        protected void btntrove_Click(object sender, EventArgs e)
        {
            Response.Redirect("QUANLY.aspx");
        }

        protected void btnloaiphong_Click(object sender, EventArgs e)
        {
            string maLoaiPhong = txtloaiphong.Text.Trim().ToUpper();

            if (maLoaiPhong != "")
            {
                string sqlCount = "SELECT COUNT(*) FROM PHONG WHERE MaLP = '" + maLoaiPhong + "'";

              
                DataTable result = ketnoi.ReadData(sqlCount);

                
                if (result != null && result.Rows.Count > 0)
                { 
                    int count = Convert.ToInt32(result.Rows[0][0]);
                    lbthongke.Text = count.ToString();
                    lbthongbao.Text = "Thống kê thành công";
                }
                else
                {
                   
                    lbthongke.Text = "Không có phòng nào cho mã loại phòng này!";
                    lbthongbao.Text = "Thống kê không thành công";
                }
            }
            else
            {
                lbthongke.Text = "Vui lòng nhập mã loại phòng!";
                lbthongbao.Text = "Thống kê không thành công";
            }
        }
    }
}