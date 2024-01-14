using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntitiyProject
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        CvEntityEntities db = new CvEntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            TBL_CERTIFICATES c = new TBL_CERTIFICATES();
            c.NAME = TextBox1.Text;
            db.TBL_CERTIFICATES.Add(c);
            c.ORGANİZATİON = TextBox2.Text;
            db.TBL_CERTIFICATES.Add(c);
            db.SaveChanges();
            Response.Redirect("Certificates.aspx");
        }
    }
}