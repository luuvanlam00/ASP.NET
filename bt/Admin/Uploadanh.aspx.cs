using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt.Admin
{
    public partial class Uploadanh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               int masp =  Convert.ToInt32( Request.QueryString["masp"]);
                getData(masp);
                txtMaSP.Text = masp.ToString();
            }
        }
        public void getData(int masp)
        {   
           banhang2Entities db = new banhang2Entities();
            dgvMedia.DataSource = db.media.Where(x => x.masp == masp).ToList();
            dgvMedia.DataBind();
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
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
                banhang2Entities db = new banhang2Entities();
               media obj = new media();
                obj.masp = Convert.ToInt32( txtMaSP.Text);
                obj.url = filename;
                obj.main = chkMain.Checked;
                db.media.Add(obj);
                db.SaveChanges();

                getData(Convert.ToInt32( txtMaSP.Text));
            }
        }
        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            int masp = Convert.ToInt32(Request.QueryString["masp"]);
            int id_media = Convert.ToInt32(e.CommandArgument);
            banhang2Entities db = new banhang2Entities();
            media obj = db.media.FirstOrDefault(x => x.id_media == id_media);
            if (obj != null)
            {
                db.media.Remove(obj);
                db.SaveChanges();
                getData(masp);
            }
        }
    }
}