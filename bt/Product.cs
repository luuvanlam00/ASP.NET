using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace bt
{
    public class Product
    {
        public DataTable Getdetail(int masp)
        {
            SQL.SQL.connection = "Data Source=DESKTOP-4ALLKRB;Initial Catalog=banhang2;Integrated Security=True";
            SqlCommand com = new SqlCommand("select * from sanpham where masp=@masp");
            com.CommandType = CommandType.Text;
            com.Parameters.AddWithValue("@masp", masp);
            return SQL.SQL.GetData(com);


        }
        public DataTable Getanh(int masp)
        {
            SQL.SQL.connection = "Data Source=DESKTOP-4ALLKRB;Initial Catalog=banhang2;Integrated Security=True";
            SqlCommand com = new SqlCommand("select * from media where masp=@masp");
            com.CommandType = CommandType.Text;
            com.Parameters.AddWithValue("@masp", masp);
            return SQL.SQL.GetData(com);


        }


    }
}