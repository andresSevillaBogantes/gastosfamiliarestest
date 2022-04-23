using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace gastosfamiliares
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            
        }

        protected void bingresar_Click(object sender, EventArgs e)
        {

            usuario.setCorreo(tusuario.Text);
            usuario.Setclave(tclave.Text);

            String s = System.Configuration.ConfigurationManager.ConnectionStrings["CONTROLDEGASTOSConnectionString"].ConnectionString;

            SqlConnection conexion = new SqlConnection(s);

            conexion.Open();

            SqlCommand Comando = new SqlCommand("select correo, clave from usuario where  correo  = '" + usuario.Getcorreo() + "'and clave = '" + usuario.Getclave() + "' ", conexion);

            SqlDataReader registro = Comando.ExecuteReader();

            if (registro.Read())
            {
                Response.Redirect("principal2.aspx");
            }
            else
            {
                lmensaje.Text = "USUARIO NO EXISTE";

            }


            conexion.Close();


        }

        protected void bregistrar_Click(object sender, EventArgs e)
        {

            Response.Redirect("registro.aspx");


        }
    }
}