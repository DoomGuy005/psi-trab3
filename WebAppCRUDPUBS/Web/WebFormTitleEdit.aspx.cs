using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCRUDPUBS
{
    public partial class WebFormTitleEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ObjectDataSource1_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {

        }

        protected void ObjectDataSource1_Deleted(object sender, ObjectDataSourceStatusEventArgs e)
        {
            string codigo;
            Modelo.Title aTitles;
            DAL.DALTitle aDALTitles;
            // Copia o conteúdo da primeira célula da linha -> Código do Livro
            codigo = DetailsView1.Rows[0].Cells[1].Text;
            // Instancia um Objeto de Livro Vazio
            aTitles = new Modelo.Title();
            aTitles.title_id = codigo; ;// Atribui apenas o ID
            // Instancia objeto da camada de negocio
            aDALTitles = new DAL.DALTitle();
            // Chama metodo de delete passando o objeto apenas com o ID preenchido
            aDALTitles.Delete(aTitles);
            Response.Redirect("~\\WebFormTitle.aspx");
        }
    }
}