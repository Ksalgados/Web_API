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
            var comando = ConfiguracionDatos.CrearComando();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM PRODUCTOS", con);
            DataSet dt = ConfiguracionDatos.CrearDataSet(comando);
            da.Fill(dt);
            return dt;
        }

        [WebMethod]
        public DataSet consultar(string codigoLibro)
        {

            var comando = ConfiguracionDatos.CrearComando();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM PRODUCTOS where id='" + codigoLibro + "'", con);
            DataSet dt = ConfiguracionDatos.CrearDataSet(comando);
            da.Fill(dt);
            return dt;
        }

        [WebMethod]
        public void Crear(int id, string nombre, string descripcion, string imagen, int cantidad, int cant_min, int precio, string tipo)
        {
            var comando = ConfiguracionDatos.CrearComando();
            string sentencia="INSERT INTO productos (id, nombre, descripcion, imagen, cantidad, cantidad_min, precio, tipo) VALUES ('" + id + "', '"+ nombre+"', '" + descripcion + "', '" + imagen + "','" + cantidad + "','"+cant_min+"', '"+precio+"','"+ tipo + "' )";
            ConfiguracionDatos.EjecutarComando(comando);
            
        }

        [WebMethod]
        public void Editar(int id, string nombre, string descripcion, string imagen, int cantidad, int cant_min, int precio, string tipo)
        {
            var comando = ConfiguracionDatos.CrearComando();
            string sentencia = "UPDATE productos SET nombre='"+nombre+"', descripcion='"+ descripcion+"', imagen='"+imagen+"', cantidad = '"+cantidad+ "', cantidad_min='"+cant_min+"', precio='"+precio+"', tipo= '"+tipo+"' where id="+id+"  ";
            ConfiguracionDatos.EjecutarComando(comando);

        }

        [WebMethod]
        public void Eliminar(string codigoLibro)
        {
            var comando = ConfiguracionDatos.CrearComando();
            string sentencia = "DELETE FROM PRODUCTOS WHERE ID ='" + codigoLibro + "'";
            ConfiguracionDatos.EjecutarComando(comando);
        }
    
    }

}
