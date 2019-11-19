using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sabores_Unicos
{
    public partial class ConsultarProdutos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "alterar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow selectedRow = GridView1.Rows[index];
                lblID.Text = selectedRow.Cells[1].Text;
                txtCategoria.Text = selectedRow.Cells[2].Text;
                txtNome.Text = selectedRow.Cells[3].Text;
                txtInfo.Text = selectedRow.Cells[4].Text;
                txtPreco.Text = selectedRow.Cells[5].Text;

                lblID.Visible = true;
                lblCategoria.Visible = true;
                lblImagem.Visible = true;
                lblInformacao.Visible = true;
                lblNome.Visible = true;
                lblPreco.Visible = true;
                txtCategoria.Visible = true;
                txtInfo.Visible = true;
                txtNome.Visible = true;
                txtPreco.Visible = true;
                FileUploadImagem.Visible = true;
                btnAplicar.Visible = true;
                btnVoltar.Visible = true;
            }
        }

        protected void btnAplicar_Click(object sender, EventArgs e)
        {
            string Nome = txtNome.Text;
            string Categoria = txtCategoria.Text;
            string Info = txtInfo.Text;
            double Preco = Convert.ToDouble(txtPreco.Text);
            string Imagem = "~/images/" + FileUploadImagem.FileName;
            int Id = Convert.ToInt32(lblID.Text);
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
            }
            int resultado = BLL.Produtos.AlterarProduto(Id, Nome, Info, Preco, Imagem, Categoria);
            lblInfoAlterarProduto.Text = "Alterado com successo";
            lblInfoAlterarProduto.Visible = true;
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }


    }

}
