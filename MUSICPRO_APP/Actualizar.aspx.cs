using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MUSICPRO_APP
{
    public partial class Actualizar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
             protected void btn_EliminarLibro_Click(object sender, EventArgs e)
        {
            Serivicios.ServicioSoapClient servicio = new Serivicios.ServicioSoapClient();

            //lbl_Resultado" disabled="disable";
                servicio.Eliminar(txt_IdCodigo.Text);
//                lbl_Resultado.Text = "Eliminado";
        }

    }
}