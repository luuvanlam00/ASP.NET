using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace bt
{
    public partial class Thanhtoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                DataTable dt = (DataTable)Session["cart"];
                sp.DataSource = dt;
                sp.DataBind();
                float tongtien = 0;
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    tongtien += Convert.ToSingle(dt.Rows[0]["Money"]);
                }
                lb.Text = tongtien.ToString("N0");


            }

        }

        protected void btnmua_Click(object sender, EventArgs e)
        {
            banhang2Entities db = new banhang2Entities();
            khachhang kh = new khachhang();
            kh.tenkh = txtten.Text;
            kh.email = txtem.Text;
            kh.sdt = txtsdt.Text;
            db.khachhang.Add(kh);
            db.SaveChanges();

            banhang2Entities db2 = new banhang2Entities();
            hoadon hd = new hoadon();
            hd.thoigian = DateTime.Now;
            hd.tenkh = txtten.Text;
            hd.diachi = txtdc.Text;
            hd.trangthai = "xacnhan";
            db2.hoadon.Add(hd);
            db2.SaveChanges();
            int mahd = hd.id_hd;


            DataTable dt = (DataTable)Session["cart"];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                banhang2Entities db3 = new banhang2Entities();
                cthd ct = new cthd();
                ct.id_hd = mahd;
                ct.masp = Convert.ToInt32( dt.Rows[i]["ID"]);
                ct.giaban = Convert.ToSingle(dt.Rows[i]["Price"]);
                ct.soluong = Convert.ToInt32(dt.Rows[i]["Quantity"]);

                db3.cthd.Add(ct);
                db3.SaveChanges();

            }
            Response.Redirect("Thanhcong.aspx");

        }
    }
}