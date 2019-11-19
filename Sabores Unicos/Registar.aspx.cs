using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabores_Unicos
{
    public partial class Registar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnConcluir_Click(object sender, EventArgs e)
        {
            String Nome = txtNome.Text;
            String Email = txtEmail.Text;
            String Password = txtPass1.Text;
            String Morada = txtMorada.Text;
            int Admin = 0;
            int Estado = 1;
            String Codigo_Postal = txtCodigo.Text;
            String Localidade = txtLocalidade.Text;
            String Telefone = txtTelefone.Text;
            String Data_Nascimento = txtDataNascimento.Text;
           
            String NIF = txtNIF.Text;

            if (BLL.Utilizadores.existeUtilizador(Email).Rows.Count != 1 || BLL.Utilizadores.existeUtilizador(Nome).Rows.Count != 1)
            {
                int resultado = BLL.Utilizadores.registarUtilizador(Email,Nome,Password,Admin,Estado,Morada,Codigo_Postal,Localidade,Telefone,NIF,Data_Nascimento);
                lblInfoRegistar.Text = "Registado com sucesso";
                lblInfoRegistar.Visible = true;
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblInfoRegistar.Text = "Este Utilizador já está a ser usado";
                lblInfoRegistar.Visible = true;
            }

              
        }

        protected void txtTelefone_TextChanged(object sender, EventArgs e)
        {

        }
       
    }
}