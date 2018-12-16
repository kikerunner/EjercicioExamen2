using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ejersisio2
{
    public class Repo
    {
        public List<Cliente> getClientes()
        {
            VentasDBContext ventasDBContext = new VentasDBContext();
            return ventasDBContext.Clientes.ToList();
        }
    }
}