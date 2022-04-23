using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gastosfamiliares
{
    public partial class login2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bboton_Click(object sender, EventArgs e)
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
                //lmensaje.Text = "USUARIO NO EXISTE";

            }


            conexion.Close();

        }

        protected void bagregar_Click(object sender, EventArgs e)
        {


            usuario.setCorreo(tusuario.Text);
            usuario.Setclave(tusuario.Text);



            String s = System.Configuration.ConfigurationManager.ConnectionStrings["CONTROLDEGASTOSConnectionString"].ConnectionString;

            SqlConnection conexion = new SqlConnection(s);

            conexion.Open();

            SqlCommand Comando = new SqlCommand("INSERT INTO usuario VALUES('" + usuario.Getcorreo() + "' ,  '" + usuario.Getclave() + "' ", conexion);

            Comando.ExecuteNonQuery();


            Response.Redirect("login2.aspx");




            conexion.Close();


        }
    }
}