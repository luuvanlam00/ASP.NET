using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Suaanh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int masp = Convert.ToInt32(Request.QueryString["masp"]);
                
                txtMaSP.Text = masp.ToString();
            }

        }
       

        protected void btnUpload_Click(object sender, EventArgs e)
        {


            int masp = Convert.ToInt32(Request.QueryString["masp"]);
            if (fuImg.HasFile == true)
            {
                // Bước 1: Tải file về server
                // Sinh tên file
                string filename = txtMaSP.Text + "_" + DateTime.Now.ToString("yyyyMMddHHmmssffff");
                string[] arr = fuImg.FileName.Split('.');
                string file_ext = arr[arr.Length - 1];
                filename += '.' + file_ext;
                string folder = Server.MapPath("~/Anh/");
                fuImg.SaveAs(folder + filename);

                // Bước 2: Thêm dữ liệu vào Database
                int id_media = Convert.ToInt32(Request.QueryString["id_media"]);
                banhang2Entities db = new banhang2Entities();
                media obj = db.media.FirstOrDefault(x => x.id_media == id_media);
                obj.masp = Convert.ToInt32(txtMaSP.Text);
                obj.url = filename;
                obj.main = chkMain.Checked;
                
                db.SaveChanges();
                Response.Redirect("Uploadanh.aspx?masp=" + masp);
            }

            }





        }
}