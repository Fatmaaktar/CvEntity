using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntitiyProject
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        CvEntityEntities db = new CvEntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBL_MYWORKS p = new TBL_MYWORKS();
            p.IMAGE = TextBox1.Text;
            db.TBL_MYWORKS.Add(p);
            p.ADDRESS = TextBox2.Text;
            db.TBL_MYWORKS.Add(p);
            p.NOTE = TextBox3.Text;
            db.TBL_MYWORKS.Add(p);
            db.SaveChanges();
            Response.Redirect("Projects.aspx");
        }
    }
}