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
    
    public partial class UnidadAlimenticia
    {
        public UnidadAlimenticia()
        {
            this.Ingredientes = new HashSet<Ingredientes>();
            this.Platillos = new HashSet<Platillos>();
        }
    
        public int id_UnidadAlimenticia { get; set; }
        public string Nombre { get; set; }
    
        public virtual ICollection<Ingredientes> Ingredientes { get; set; }
        public virtual ICollection<Platillos> Platillos { get; set; }
    }
}
