using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Windows;
using System.Windows.Forms;
using MessageBox = System.Windows.MessageBox;
using Datos;
using Web_API.Data;

namespace Web_API
{
  
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]

    public class Servicio : System.Web.Services.WebService
    {

        [WebMethod]
        public DataSet VerProductos()
        {
            string cadenaConexion = ConexionDatos.CadenaConexion;
            SqlConnection conexion = new SqlConnection { ConnectionString = cadenaConexion };
            SqlCommand sql = new SqlCommand("SELECT * FROM PRODUCTOS", conexion);
            DataSet dt = ConfiguracionDatos.CrearDataSet(sql);
            return dt;
        }

        [WebMethod]
        public DataSet consultar(string codigoLibro)
        {
            string cadenaConexion = ConexionDatos.CadenaConexion;
            SqlConnection conexion = new SqlConnection { ConnectionString = cadenaConexion };
            SqlCommand sql = new SqlCommand("SELECT * FROM Integracion.dbo.PRODUCTOS WHERE id='" + codigoLibro + "'", conexion);
            DataSet dt = ConfiguracionDatos.CrearDataSet(sql);

            return dt;
        }
        public DataSet getCategories()
        {
            string cadenaConexion = ConexionDatos.CadenaConexion;
            SqlConnection conexion = new SqlConnection { ConnectionString = cadenaConexion };
            SqlCommand sql = new SqlCommand("select * from Integracion.dbo.TIPO_PRODUCTO;");
            DataSet dt = ConfiguracionDatos.CrearDataSet(sql);

            return dt;
        }


        [WebMethod]
        public DataSet tipos()
        {
            string cadenaConexion = ConexionDatos.CadenaConexion;
            SqlConnection conexion = new SqlConnection { ConnectionString = cadenaConexion };
            SqlCommand sql = new SqlCommand("SELECT * FROM Integracion.dbo.TIPO_PRODUCTO ", conexion);
            DataSet dt = ConfiguracionDatos.CrearDataSet(sql);

            return dt;
        }

        [WebMethod]
        public String Crear(string nombre, string descripcion, string imagen, int cantidad, int cant_min, int precio, string tipo)
        {
            int id = maxID();
            string sentencia="INSERT INTO productos (id, nombre, descripcion, imagen, cantidad, cantidad_min, precio, id_tipo) VALUES ('" + id + "', '"+ nombre+"', '" + descripcion + "', '" + imagen + "','" + cantidad + "','"+cant_min+"', '"+precio+"','"+ tipo + "' )";
            string cadenaConexion = ConexionDatos.CadenaConexion;
            SqlConnection conexion = new SqlConnection { ConnectionString = cadenaConexion };
            SqlCommand sql = new SqlCommand(sentencia, conexion);
            ConfiguracionDatos.EjecutarComando(sql);

            return "listo";
        }

        [WebMethod]
        public void Editar(int id, string nombre, string descripcion, string imagen, int cantidad, int cant_min, int precio, string tipo)
        {
            string sentencia = "UPDATE productos SET nombre='"+nombre+"', descripcion='"+ descripcion+"', imagen='"+imagen+"', cantidad = '"+cantidad+ "', cantidad_min='"+cant_min+"', precio='"+precio+"', tipo= '"+tipo+"' where id="+id+"  ";            
            string cadenaConexion = ConexionDatos.CadenaConexion;
            SqlConnection conexion = new SqlConnection { ConnectionString = cadenaConexion };
            SqlCommand sql = new SqlCommand(sentencia, conexion);
            ConfiguracionDatos.EjecutarComando(sql);

        }

        [WebMethod]
        public void Eliminar(string codigoLibro)
        {
            string sentencia = "DELETE FROM PRODUCTOS WHERE ID ='" + codigoLibro + "'";
            string cadenaConexion = ConexionDatos.CadenaConexion;
            SqlConnection conexion = new SqlConnection { ConnectionString = cadenaConexion };
            SqlCommand sql = new SqlCommand(sentencia, conexion);
            ConfiguracionDatos.EjecutarComando(sql);
        }

        [WebMethod]
        public void CrearUsuario(int id, string nombre, string email, string password, int tipo_usuarios)
        {
            string sentencia = "INSERT INTO USERS (id, nombre, email, password, tipo_usuario) VALUES ('" + id + "','" + nombre + "', '" + email + "', '" + password + "','" + tipo_usuarios + "')";
            string cadenaConexion = ConexionDatos.CadenaConexion;
            SqlConnection conexion = new SqlConnection { ConnectionString = cadenaConexion };
            SqlCommand sql = new SqlCommand(sentencia, conexion);
            ConfiguracionDatos.EjecutarComando(sql);

        }


        [WebMethod]
        public void ValidUsuario(string email, string password)
        {
            string sentencia = "SELECT * FROM USERS where email'"+ email +"' and password='"+ password +"'";
            string cadenaConexion = ConexionDatos.CadenaConexion;
            SqlConnection conexion = new SqlConnection { ConnectionString = cadenaConexion };
            SqlCommand sql = new SqlCommand(sentencia, conexion);
            ConfiguracionDatos.EjecutarComando(sql);
        }

        public int maxID()
        {
            string cadenaConexion = ConexionDatos.CadenaConexion;
            SqlConnection conexion = new SqlConnection { ConnectionString = cadenaConexion };
            SqlCommand sql = new SqlCommand("SELECT MAX(id) FROM Integracion.dbo.PRODUCTOS", conexion);
            DataSet dt = ConfiguracionDatos.CrearDataSet(sql);

                 
            return Convert.ToInt32(dt.Tables[0].Rows[0]["Column1"].ToString())+1;
        }

    }

}
