using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gastosfamiliares
{
    public partial class usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            lusuario.Text = "BIENVENIDO      " + usuario.Getcorreo() + "HOY ES        " + DateTime.Today.ToString("d");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("principal2.aspx");
        }

        protected void bagregar_Click(object sender, EventArgs e)
        {
            Sqlusuarios.Insert();
        }

        protected void beliminar_Click(object sender, EventArgs e)
        {
            Sqlusuarios.Delete();
        }

        protected void bactualizar_Click(object sender, EventArgs e)
        {
            Sqlusuarios.Update();
        }
    }
}