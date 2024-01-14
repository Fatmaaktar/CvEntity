using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntitiyProject
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        CvEntityEntities db = new CvEntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var certifice = db.TBL_CERTIFICATES.ToList();
            Repeater1.DataSource = certifice;
            Repeater1.DataBind();
        }
    }
}