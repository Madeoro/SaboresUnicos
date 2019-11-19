using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabores_Unicos
{
    public partial class WebUserControlUtilizador : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblNome.Text = Convert.ToString(Session["Nome"]);
            lblEmail.Text = Convert.ToString(Session["Email"]);
            lblDataNascimeto.Text = Convert.ToString(Session["Data_Nascimento"]);
            lblMorada.Text = Convert.ToString(Session["Morada"]);
            lblLocalide.Text = Convert.ToString(Session["Localidade"]);
            lblCodigoPostal.Text = Convert.ToString(Session["Codigo"]);
            lblTelefone.Text = Convert.ToString(Session["Telefone"]);
            lblNIF.Text = Convert.ToString(Session["NIF"]);
        }
    }
}