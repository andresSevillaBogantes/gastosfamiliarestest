using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gastosfamiliares
{
    public partial class principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lusuario.Text = "BIENVENIDO      " + usuario.Getcorreo() + "HOY ES        " + DateTime.Today.ToString("d");




        }

        protected void bagregar_Click(object sender, EventArgs e)
        {
            Sqltransaccioness.Insert();

        }

        protected void Sqltransacciones_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void bborrar_Click(object sender, EventArgs e)
        {
            Sqltransaccioness.Delete();
        }

        protected void bactualizar_Click(object sender, EventArgs e)
        {
            Sqltransaccioness.Update();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("principal2.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("principal2.aspx");
        }

        protected void bconsultar_Click(object sender, EventArgs e)
        {
          

        }
    }
}