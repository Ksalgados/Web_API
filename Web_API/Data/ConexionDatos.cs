using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_API.Data
{
    public class ConexionDatos
    {
        //cadena de franco, do not remove pliz
        private const string cadenaConexion = @"Data Source=LAPTOP-IJENOHCL\SQLEXPRESS; Initial Catalog=Integracion; Integrated Security=True";
        
        
        //private const string cadenaConexion = @"Data Source=LAPTOP-IJENOHCL\SQLEXPRESS; Initial Catalog=Integracion; Integrated Security=True";
        //private const string cadenaConexion = @"Data Source=148.72.23.19;Initial Catalog=LibreriaVirtual;User=sauser;Password=Wmx%y765;";
        //private const string cadenaConexion = @"Data Source=148.72.23.19;Initial Catalog=LibreriaVirtual;User ID=sauser;Password=Wmx%y765;Application Name=Web_API";
        public static string CadenaConexion
        {
            get { return cadenaConexion; }
        }

    }
}