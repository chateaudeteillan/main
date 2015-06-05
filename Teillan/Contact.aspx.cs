using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Teillan
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtName.Attributes.Add("placeholder", "Votre nom");
            txtEmail.Attributes.Add("placeholder", "Votre adresse de messagerie");
            txtSubject.Attributes.Add("placeholder", "Sujet");
            txtMessage.Attributes.Add("placeholder", "Tapez votre message ici.");

            lblConfirmation.Visible = false;
        }

        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
            lblConfirmation.Visible = false;

            var smtpHost = ConfigurationManager.AppSettings["smtp.host.name"];
            var smtpPort = ConfigurationManager.AppSettings["smtp.host.port"];
            var smtpUser = ConfigurationManager.AppSettings["smtp.auth.username"];
            var smtpPassword = ConfigurationManager.AppSettings["smtp.auth.password"];
            var smtpMailFrom = ConfigurationManager.AppSettings["smtp.mail.from"];
            var smtpMailTo = ConfigurationManager.AppSettings["smtp.mail.to"];

            var port = 25;
            if (smtpPort.Length != 0)
            {
                int __port;
                if (Int32.TryParse(smtpPort, out __port))
                    port = __port;
            }

            try
            {
                var mail = new MailMessage(smtpMailFrom, smtpMailTo);
                var client = new SmtpClient
                {
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Host = smtpHost,
                    Port = port,
                    Credentials = new System.Net.NetworkCredential(smtpUser, smtpPassword),
                };

                mail.Subject = txtSubject.Text;
                mail.Body = CreateMailBody();

                client.Send(mail);

                lblConfirmation.Text = "Votre message a �t� envoy� avec succ�s.";
                lblConfirmation.Visible = true;

            }
            catch (Exception)
            {
                lblConfirmation.Text = "Une erreur est survenue lors de l'envoi de votre message.";
                lblConfirmation.Visible = false;
            }
        }

        private string CreateMailBody()
        {
            return "this is a test email";
        }

        protected global::System.Web.UI.HtmlControls.HtmlForm formContact;
        protected global::System.Web.UI.WebControls.TextBox txtName;
        protected global::System.Web.UI.WebControls.TextBox txtEmail;
        protected global::System.Web.UI.WebControls.TextBox txtSubject;
        protected global::System.Web.UI.WebControls.TextBox txtMessage;
        protected global::System.Web.UI.WebControls.Button btnSubmit;
        protected global::System.Web.UI.WebControls.Label lblConfirmation;
    }
}