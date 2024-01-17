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
        CvEntityEntities1 db = new CvEntityEntities1();
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
            Repeater5.DataSource = db.TBL_CERTIFICATES.ToList();
            Repeater5.DataBind();
            Repeater6.DataSource = db.TBL_ICON.OrderBy(ICON => ICON.ID).ToList();
            Repeater6.DataBind();
            Repeater7.DataSource = db.TBL_MYWORKS.OrderBy(IMAGE => IMAGE.ID).ToList();
            Repeater7.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBL_COMMUNICATION co = new TBL_COMMUNICATION();
            co.NAMESURNAME = TextBox1.Text;
            co.MAIL = TextBox2.Text;
            co.TOPIC = TextBox3.Text;
            co.MESSAGE = TextBox4.Text;
            db.TBL_COMMUNICATION.Add(co);
            db.SaveChanges();
        }
    }
}