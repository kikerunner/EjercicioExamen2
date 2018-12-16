using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ejersisio2
{
    public class Producto
    {
        public int IdProducto { get; set; }
        public string NomProducto { get; set; }
        public int PrecioUnitario { get; set; }
        public List<Venta> Ventas { get; set; }
    }
}