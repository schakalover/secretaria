//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace VistasSSyPC.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Cat_Marca
    {
        public Cat_Marca()
        {
            this.Cat_Producto = new HashSet<Cat_Producto>();
        }
    
        public int id_Marca { get; set; }
        public string Nombre { get; set; }
        public byte[] activo { get; set; }
    
        public virtual ICollection<Cat_Producto> Cat_Producto { get; set; }
    }
}