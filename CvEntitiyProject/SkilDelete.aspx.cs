using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntitiyProject
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CvEntityEntities db = new CvEntityEntities();
            int x = Convert.ToInt32(Request.QueryString["ID"]);
            var sd = db.TBL_SKILS.Find(x);
            db.TBL_SKILS.Remove(sd);
            db.SaveChanges();
            Response.Redirect("MySkills.aspx");
        }
    }
}