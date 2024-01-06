using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntitiyProject
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        CvEntityEntities db = new CvEntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = db.TBL_SKILS.Count().ToString();
            Label2.Text = db.TBL_COMMUNICATİON.Count().ToString();
        }
    }
}