using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt
{
    public partial class Chitietsp : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                getData();
                getbl();
                getData1();
                getData3();

            }

        }
        public void getData()
        {
            int masp = Convert.ToInt32(Request.QueryString["masp"]);
            banhang2Entities db = new banhang2Entities();
            sanpham.DataSource = db.sanpham.Where(x => x.masp == masp).ToList();
            sanpham.DataBind();

        }
        public void getData3()
        {
            int masp = Convert.ToInt32(Request.QueryString["masp"]);
            banhang2Entities db = new banhang2Entities();
            mota.DataSource = db.sanpham.Where(x => x.masp == masp).ToList();
            mota.DataBind();

        }



        public void getData1()
        {

            banhang2Entities db = new banhang2Entities();
            deal.DataSource = db.sanpham.Take(6).ToList();
            deal.DataBind();
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            int masp = Convert.ToInt32(Request.QueryString["masp"]);

            banhang2Entities db1 = new banhang2Entities();
            binhluan obj1 = new binhluan();

            obj1.masp = masp;
            obj1.ten = txtten.Text;
            obj1.thoigian = DateTime.Now;
            obj1.noidung = txtnd.Text;
            obj1.sdt = TextBox1.Text;
            db1.binhluan.Add(obj1);
            db1.SaveChanges();
            Response.Redirect("Chitietsp.aspx?masp=" + masp);



        }
        public void getbl()
        {
            int masp = Convert.ToInt32(Request.QueryString["masp"]);
            banhang2Entities db = new banhang2Entities();
            bl.DataSource = db.binhluan.Where(x => x.masp == masp).ToList();
            bl.DataBind();
        }
        public string getAnhDaiDien(int masp)
        {
            banhang2Entities db = new banhang2Entities();
            media obj = db.media.FirstOrDefault(x => x.masp == masp && x.main == true);
            if (obj == null)
            {
                return "";
            }
            else
            {
                return obj.url;
            }

        }


        public override void VerifyRenderingInServerForm(Control control)
        {

        }



   


       

        protected void btn_Command1(object sender, CommandEventArgs e)
        {

            int masp = Convert.ToInt32(Request.QueryString["masp"]);
            string a = txtsl.Text;
            Cart.Add(masp, Convert.ToInt32(a));
            Response.Redirect("Giohang.aspx");
            
        }
    }
}