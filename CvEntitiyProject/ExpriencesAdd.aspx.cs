using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntitiyProject
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        CvEntityEntities1 db = new CvEntityEntities1();
        protected void Button1_Click(object sender, EventArgs e)
        {
            TBL_ABOUT ex = new TBL_ABOUT();
            ex.JOB= TextBox1.Text;
            db.TBL_ABOUT.Add(ex);
            db.SaveChanges();
            Response.Redirect("Expriences.aspx");
        }
    }
}