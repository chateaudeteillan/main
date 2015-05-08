using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Teillan
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
        }

        protected global::System.Web.UI.HtmlControls.HtmlForm formContact;
        protected global::System.Web.UI.WebControls.TextBox txtName;
        protected global::System.Web.UI.WebControls.TextBox txtEmail;
        protected global::System.Web.UI.WebControls.TextBox txtSubject;
        protected global::System.Web.UI.WebControls.TextBox txtMessage;
        protected global::System.Web.UI.WebControls.Button btnSubmit;
    }
}