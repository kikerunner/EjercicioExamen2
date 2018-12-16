using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ejersisio2
{
    public class Cliente
    {
        public int IdCliente { get; set; }
        public string NomCliente { get; set; }
        public string Foto { get; set; }
        public List<Venta> Ventas { get; set; }
    }

}