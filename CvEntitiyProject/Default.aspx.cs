using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntitiyProject
{
    public partial class Default : System.Web.UI.Page
    {
        CvEntityEntities db = new CvEntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.TBL_ABOUT.ToList();
            Repeater1.DataBind();
            Repeater2.DataSource = db.TBL_ABOUT.ToList();
            Repeater2.DataBind();
            Repeater3.DataSource = db.TBL_ABOUT.ToList();
            Repeater3.DataBind();
            Repeater4.DataSource = db.TBL_SKILS.ToList();
            Repeater4.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBL_COMMUNICATİON c = new TBL_COMMUNICATİON();
            c.NAMESURNAME = TextBox1.Text;
            c.MAİL = TextBox2.Text;
            c.KONU = TextBox3.Text;
            c.MESSAGE = TextBox4.Text;
            db.TBL_COMMUNICATİON.Add(c);
            db.SaveChanges();
        }
    }
}