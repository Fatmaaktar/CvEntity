﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvEntitiyProject
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        CvEntityEntities db = new CvEntityEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            TBL_SKILS s = new TBL_SKILS();
            s.SKILS = TextBox1.Text;
            db.TBL_SKILS.Add(s);
            db.SaveChanges();
            Response.Redirect("MySkills.aspx");
        }
    }
}