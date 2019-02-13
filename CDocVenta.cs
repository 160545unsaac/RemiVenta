using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibClases
{
    class CDocVenta : CEntidad
    {
        //===============ATRIBUTOS ====================
        //---   Todos heredados de CEntidad        ----
        //=============================================
        //--------constructores -----------------------
        public CDocVenta() : base("TDocVenta")
        {
        }
        //-------Implementacion de Metodos Abstractos--
        public override string[] NombresAtributos()
        {
            return new string[] { "NroDocVenta", "Fecha", "Tipo", "TipoPago", "CodCliente", "CodUsuario" };
        }
        public override int NroDeClaves()
        {
            return 2;///Falta mejores 
        }
    }
}
