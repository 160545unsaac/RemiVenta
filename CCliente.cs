using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibClases
{
    class CCliente:CEntidad
    {
        //===============ATRIBUTOS ====================
        //---   Todos heredados de CEntidad        ----
        //=============================================
        //--------constructores -----------------------
        public CCliente() : base("TCliente")
        {
            //comentario
        }        
        //-------Implementacion de Metodos Abstractos--
        public override string[] NombresAtributos()
        {
            return new string[] { "CodCliente", "DNI", "Direccion", "Email", "Telefono" };
        }
        public override int NroDeClaves()
        {
            return 1;///Falta mejores 
        }

    }
}
