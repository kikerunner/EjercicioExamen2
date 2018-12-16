using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ejersisio2
{
    public class Venta
    {
        public int IdVenta { get; set; }
        public Cliente Cliente { get; set; }
        public Producto Producto { get; set; }
        public int Cantidad { get; set; }
        public int PrecioUnitario { get; set; }
    }

}