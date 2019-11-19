using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabores_Unicos
{
    public partial class AlterarUsername : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Nome"] == null)
            {
                Response.Redirect("Registar.aspx");
            }
        }

        protected void btnAplicar_Click(object sender, EventArgs e)
        {
            string Nome = Session["Nome"].ToString();
            string Telefone = Session["Telefone"].ToString();
            string DataNascimento = Session["Data_Nascimento"].ToString();
            string NIF = Session["NIF"].ToString();
            string Email = Session["Email"].ToString();
            //Nome
            if (txtNome.Text == "")
            {
                Nome = Session["Nome"].ToString();

            }
            else
            {
                Nome = txtNome.Text;
            }

            //Telefone
            if (txtTelefone.Text == "")
            {
                Telefone = Session["Telefone"].ToString();
            }
            else
            {
                Telefone = txtTelefone.Text;
            }

            //Data de Nascimento
            if (txtDataNascimeto.Text == "")
            {
                DataNascimento = Session["Data_Nascimento"].ToString();
            }
            else
            {
                DataNascimento = txtDataNascimeto.Text;
            }
            //NIF
            if (txtNIF.Text == "")
            {
                NIF = Session["NIF"].ToString();
            }
            else
            {
                NIF = txtNIF.Text;
            }
            Email = Session["Email"].ToString();
            //Introduzir

            int resultado = BLL.Utilizadores.AlterarPerfil(Email, Nome, Telefone, DataNascimento, NIF);
            lblInfoAlterarUtilizador.Visible = true;
            Session["Nome"] = txtNome.Text;
            Session["Telefone"] = txtTelefone.Text;
            Session["Data_Nascimento"] = txtDataNascimeto.Text;
            Session["NIF"] = txtNIF.Text;

        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Utilizadores.aspx");
        }
    }
}