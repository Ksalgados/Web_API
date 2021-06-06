using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;

namespace Web_API
{
    /// <summary>
    /// Descripción breve de Servicio
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class Servicio : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hola a todos";
        }

        [WebMethod]
        public DataSet VerProductos()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source = DESKTOP-NH19R4N\SQLEXPRESS; Initial Catalog=musicpro; Integrated Security=True;";
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM PRODUCTOS",con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

    }
}
