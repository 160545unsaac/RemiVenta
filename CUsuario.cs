using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibClases
{
    class CUsuario:CEntidad
    {
        //===============ATRIBUTOS ====================
        //---   Todos heredados de CEntidad        ----
        //=============================================
        //--------constructores -----------------------
        public CUsuario() : base("TUsuario")
        {
        }
        //-------Implementacion de Metodos Abstractos--
        public override string[] NombresAtributos()
        {
            return new string[] { "CodUsuario", "Contraseña", "DNI", "Nombre", "Edad" ,"Telefono","Tipo"};
        }
        public override int NroDeClaves()
        {
            return 3;///Falta mejores 
        }
    }
}
