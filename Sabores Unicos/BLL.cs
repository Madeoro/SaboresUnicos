using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DataAccessLayer;
using System.Data;
using System.Data.SqlClient;    

namespace Sabores_Unicos
{
    class BLL
    {
        public class Utilizadores
        {
            static public DataTable existeUtilizador(String email)
            {
                DAL dal = new DAL();
                SqlParameter[] sqlparams = new SqlParameter[]{
                   new SqlParameter("@Email",email)};
                return dal.executarStoredProcReader("dbo.existeUtilizador", sqlparams);
            }

            static public int registarUtilizador(String Email, String Nome, String password, int estado, int admin, String morada, String Codigo_Postal, String Localidade, String Telefone,String Data_Nascimento, String NIF)
            {
                DAL dal = new DAL();
                SqlParameter[] sqlparams = new SqlParameter[]{
                   new SqlParameter("@Email",Email),
                   new SqlParameter("@Password",password),
                   new SqlParameter("@estado",estado),
                   new SqlParameter("@Admin", admin),
                   new SqlParameter("@Morada",morada),
                   new SqlParameter("@Nome",Nome),
                   new SqlParameter("@Codigo_Postal",Codigo_Postal),
                   new SqlParameter("@Localidade",Localidade),
                   new SqlParameter("@Telefone",Telefone),
                   new SqlParameter("@Data_Nascimento",Data_Nascimento),
                   new SqlParameter ("@NIF",NIF)};
                return dal.executarStoredProcNonQuery("dbo.registarUtilizador", sqlparams);

            }
            static public DataTable login(String Nome, String password)
            {
                DAL dal = new DAL();
                SqlParameter[] sqlparams = new SqlParameter[]{
                   new SqlParameter("@Email",Nome),
                   new SqlParameter("@Password",password),
                };
                   return dal.executarStoredProcReader("dbo.loginUtilizadores", sqlparams);
            }
            static public int AlterarPerfil(String Email,String nome, String Telefone, String Data_Nascimento,String NIF)
            {
                DAL dal = new DAL();
                SqlParameter[] sqlparams = new SqlParameter[]{
                     new SqlParameter("@Email",Email),
                    new SqlParameter("@Nome",nome),
                   new SqlParameter("@Telefone",Telefone),
                   new SqlParameter("@Data_Nascimento",Data_Nascimento),
                   new SqlParameter ("@NIF",NIF)};
                return dal.executarStoredProcNonQuery("dbo.alterarPerfilUtilizador", sqlparams);
            }
            static public int AlterarPerfilMorada(String Email, String Localidade, String Morada, String Codigo_Postal)
            {
                DAL dal = new DAL();
                SqlParameter[] sqlparams = new SqlParameter[]{
                    new SqlParameter("@Email",Email),
                   new SqlParameter("@Localidade",Localidade),
                   new SqlParameter("@Morada",Morada),
                   new SqlParameter ("@Codigo_Postal",Codigo_Postal)};
                return dal.executarStoredProcNonQuery("dbo.alterarPerfilMorada", sqlparams);
            }
            static public int AlterarPerfiEmail(String Email)
            {
                DAL dal = new DAL();
                SqlParameter[] sqlparams = new SqlParameter[]{
                   new SqlParameter ("@Email",Email)};
                return dal.executarStoredProcNonQuery("dbo.alterarPerfilEmail", sqlparams);
            }

            static public int AlterarPerfilPassword(String Email, String Password)
            {
                DAL dal = new DAL();
                SqlParameter[] sqlparams = new SqlParameter[]{
                    new SqlParameter("@Email",Email),
                   new SqlParameter ("@Password",Password)};
                return dal.executarStoredProcNonQuery("dbo.alterarPerfilPassword", sqlparams);
            }

            
            static public int alterarEstado(string email, int estado)
            {
                DAL dal = new DAL();
                SqlParameter[] sqlparams = new SqlParameter[]{
                    new SqlParameter("@Email",email),
                    new SqlParameter("@estado",estado)};
                    return dal.executarStoredProcNonQuery("dbo.alterarEstadoUtilizador", sqlparams);
            }
        }
        public class Produtos
        {
            static public int inserirProdutos(String Categoria, String Nome, String Info, Double Preco, String Imagem)
            {
                DAL dal = new DAL();
                SqlParameter[] sqlparams = new SqlParameter[]{
                   new SqlParameter("@Categoria",Categoria),
                   new SqlParameter("@Nome",Nome),
                   new SqlParameter("@Info",Info),
                   new SqlParameter("@Preco",Preco),
                   new SqlParameter("@Imagem",Imagem)
                   
                };
                return dal.executarStoredProcNonQuery("", sqlparams);

            }
            static public int AlterarProduto(int Id_Produto, String Nome, String Info, Double Preco, String Imagem1,String Categoria)
            {
                DAL dal = new DAL();
                SqlParameter[] sqlparams = new SqlParameter[]{
                     new SqlParameter("@Nome",Nome),
                   new SqlParameter("@Info",Info),
                   new SqlParameter("@Preco",Preco),
                   new SqlParameter("@Imagem1",Imagem1),
                   new SqlParameter("Categoria",Categoria),
                   new SqlParameter("Id_Produto",Id_Produto)
                };
                return dal.executarStoredProcNonQuery("dbo.alterarPerfilUtilizador", sqlparams);
            }
        }

    }
}
