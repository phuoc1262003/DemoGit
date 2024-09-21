using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace QLKHACHSAN
{
    public class LopKetNoi
    {
        SqlConnection con;

        // hàm mở kết nối
        private void OpenKN()
        {
            string sqlCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\CDIO\CDIO3\QLKHACHSAN\QLKHACHSAN\App_Data\QLKHACHSAN.mdf;Integrated Security=True";
            con = new SqlConnection(sqlCon);
            con.Open();
        }
            
        // hàm đóng kết nối
        private void CloseKN()
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }

        // hàm đọc dữ liệu

        public DataTable ReadData(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                OpenKN();
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                da.Fill(dt);
            }
            catch
            {
                dt = null;
            }
            finally
            {
                CloseKN();
            }
            return dt;
        }

        // hàm thêm sửa xóa
        public int CapNhat(string sql)
        {
            int ketqua = 0;
            try
            {
                OpenKN();
                SqlCommand cmd = new SqlCommand(sql, con);
                ketqua = cmd.ExecuteNonQuery();

            }
            catch
            {

            }
            finally
            {
                CloseKN();
            }
            return ketqua;
        }
    }
}