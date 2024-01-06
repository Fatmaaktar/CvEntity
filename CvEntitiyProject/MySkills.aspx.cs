using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntitiyProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CvEntityEntities db = new CvEntityEntities();
            Repeater1.DataSource = db.TBL_SKILS.ToList();
            Repeater1.DataBind();
        }
    }
}