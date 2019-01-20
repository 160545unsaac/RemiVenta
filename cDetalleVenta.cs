using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibClases
{
    class CDetalleVenta : CEntidad
    {
        //===============ATRIBUTOS ====================
        //---   Todos heredados de CEntidad        ----
        //=============================================
        //--------constructores -----------------------
        public CDetalleVenta() : base("TDetalleVenta")
        {
        }
        //-------Implementacion de Metodos Abstractos--
        public override string[] NombresAtributos()
        {
            return new string[] { "NroDocVenta", "CodProducto", "Cantidad", "PrecioUnitario" };
        }
        public override int NroDeClaves()
        {
            return 2;///Falta mejores 
        }
    }
}
