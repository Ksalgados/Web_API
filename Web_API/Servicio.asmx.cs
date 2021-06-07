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
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source = DESKTOP-NH19R4N\SQLEXPRESS; Initial Catalog=musicpro; Integrated Security=True;";
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM PRODUCTOS", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        [WebMethod]
        public DataSet consultar(string codigoLibro)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source = DESKTOP-NH19R4N\SQLEXPRESS; Initial Catalog=musicpro; Integrated Security=True;";
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM PRODUCTOS where id='" + codigoLibro + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        [WebMethod]
        public void Crear(int id, string nombre, string descripcion, string imagen, int cantidad, int cant_min, int precio, string tipo)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source = DESKTOP-NH19R4N\SQLEXPRESS; Initial Catalog=musicpro; Integrated Security=True;";
            string sentencia="INSERT INTO productos (id, nombre, descripcion, imagen, cantidad, cantidad_min, precio, tipo) VALUES ('" + id + "', '"+ nombre+"', '" + descripcion + "', '" + imagen + "','" + cantidad + "','"+cant_min+"', '"+precio+"','"+ tipo + "' )";
            SqlCommand cmd = new SqlCommand();
            try
            {
                con.Open();
                cmd = new SqlCommand(sentencia, con);
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.ExecuteNonQuery();
                System.Windows.Forms.MessageBox.Show("Transacción SQL ejecutada");
            }
            catch (Exception e)
            {
                System.Windows.Forms.MessageBox.Show("Error al ejecutar la transacción, el mensaje de error es: " + e.Message);
            }
        }

        [WebMethod]
        public void Editar(int id, string nombre, string descripcion, string imagen, int cantidad, int cant_min, int precio, string tipo)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source = DESKTOP-NH19R4N\SQLEXPRESS; Initial Catalog=musicpro; Integrated Security=True;";
            string sentencia = "UPDATE productos SET nombre='"+nombre+"', descripcion='"+ descripcion+"', imagen='"+imagen+"', cantidad = '"+cantidad+ "', cantidad_min='"+cant_min+"', precio='"+precio+"', tipo= '"+tipo+"' where id="+id+"  ";
            SqlCommand cmd = new SqlCommand();
            try
            {
                con.Open();
                cmd = new SqlCommand(sentencia, con);
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.ExecuteNonQuery();
                System.Windows.Forms.MessageBox.Show("Transacción SQL ejecutada");
            }
            catch (Exception e)
            {
                System.Windows.Forms.MessageBox.Show("Error al ejecutar la transacción, el mensaje de error es: " + e.Message);
            }
        }

        [WebMethod]
        public void Eliminar(string codigoLibro)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source = DESKTOP-NH19R4N\SQLEXPRESS; Initial Catalog=musicpro; Integrated Security=True;";
            string sentencia = "DELETE FROM PRODUCTOS WHERE ID ='" + codigoLibro + "'";
            SqlCommand cmd = new SqlCommand();
            try
            {
                con.Open();
                cmd = new SqlCommand(sentencia, con);
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.ExecuteNonQuery();
                System.Windows.Forms.MessageBox.Show("Transacción SQL ejecutada");
            }
            catch (Exception e)
            {
                System.Windows.Forms.MessageBox.Show("Error al ejecutar la transacción, el mensaje de error es: " + e.Message);
            }
        }
    
    }

}
