using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace gastosfamiliares
{
    public class usuario
    {

        private static int id { get; set; }
        private static string correo { get; set; }
        private static string clave { get; set; }

        public static string Getcorreo()
        {

            return correo;

        }

        public static void setCorreo(string email)
        {
            correo = email;



        }
        public static string Getclave()

        {
            return clave;

        }

        public static void Setclave(string Clave)

        {
            clave = Clave;

        }


    }
}