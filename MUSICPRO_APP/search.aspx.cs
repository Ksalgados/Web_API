using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MUSICPRO_APP
{
    public partial class catalogo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListarProductos();
        }

        private void ListarProductos()
        {
            Serivicios.ServicioSoapClient servicio = new Serivicios.ServicioSoapClient();

            DataSet ds = servicio.VerProductos();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void btn_BuscarLibro_Click(object sender, EventArgs e)
        {
            Serivicios.ServicioSoapClient servicio = new Serivicios.ServicioSoapClient();
            DataSet ds = servicio.consultar(txt_IdCodigo.Text);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }



    }
}