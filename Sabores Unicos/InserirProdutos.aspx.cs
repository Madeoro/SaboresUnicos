using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabores_Unicos
{
    public partial class InserirProdutos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void btnAplicar_Click(object sender, EventArgs e)
        {
            String Categoria = DropDownList1.SelectedValue;
            String Nome = txtNome.Text;
            String Info = txtInfo.Text;
            double Preco = Convert.ToDouble(txtPreco.Text);
            String Imagem = @"~/images/" + FileUploadImagem.FileName;

            
            if (FileUploadImagem.FileName == "")
            {
                Imagem = "";
            }
            else
            {
                if (FileUploadImagem.FileName.ToString().Split('.')[1].ToString().ToUpper() == "JPG" || FileUploadImagem.FileName.ToString().Split('.')[1].ToString().ToUpper() == "GIF" || FileUploadImagem.FileName.ToString().Split('.')[1].ToString().ToUpper() == "PNG")
                {
                    FileUploadImagem.SaveAs(Server.MapPath(Imagem));
                }
                int inserir = BLL.Produtos.inserirProdutos(Categoria, Nome, Info, Preco, Imagem);
            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}