﻿using System;
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

        }

        
          protected void btn_AgregarLibro_Click(object sender, EventArgs e)
        {
            Serivicios.ServicioSoapClient servicio = new Serivicios.ServicioSoapClient();
            servicio.Crear(Int32.Parse(txt_id.Text), txt_nombre.Text, txt_descripcion.Text, txt_imagen.Text, Int32.Parse(txt_cantidad.Text), Int32.Parse(txt_cantidadmin.Text), Int32.Parse(txt_precio.Text), txt_tipo.Text);

        }
    }
}