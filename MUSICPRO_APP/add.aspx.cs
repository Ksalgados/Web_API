using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MUSICPRO_APP
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Serivicios.ServicioSoapClient servicio = new Serivicios.ServicioSoapClient();

                list_tipo.DataSource = servicio.tipos();
                list_tipo.DataTextField = "NOMBRE";
                list_tipo.DataValueField = "ID";
                list_tipo.DataBind();
                list_tipo.SelectedIndex = 0;
            }
        }

        
          protected void btn_AgregarLibro_Click(object sender, EventArgs e)
        {
            Serivicios.ServicioSoapClient servicio = new Serivicios.ServicioSoapClient();
            pText.InnerText =servicio.Crear(txt_nombre.Text, txt_descripcion.Text, txt_imagen.Text, Int32.Parse(txt_cantidad.Text), Int32.Parse(txt_cantidadmin.Text), Int32.Parse(txt_precio.Text), list_tipo.SelectedValue);
           
            divModal.Attributes.Add("class", "windowText block");

        }

        protected void list_tipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}