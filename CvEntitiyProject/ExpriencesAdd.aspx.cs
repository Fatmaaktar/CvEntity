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
        CvEntityEntities db = new CvEntityEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            TBL_ABOUT ex = new TBL_ABOUT();
            ex.INFORMATIONS= TextBox1.Text;
            ex.EDUCATİON= TextBox2.Text;
            ex.JOB= TextBox3.Text;
            db.TBL_ABOUT.Add(ex);
            db.SaveChanges();
            Response.Redirect("Expriences.aspx");
        }
    }
}