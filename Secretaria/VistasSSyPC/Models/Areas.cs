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
    
    public partial class Areas
    {
        public Areas()
        {
            this.Usuario = new HashSet<Usuario>();
        }
    
        public int id_Area { get; set; }
        public int id_Corporacion { get; set; }
        public string Area { get; set; }
    
        public virtual ICollection<Usuario> Usuario { get; set; }
    }
}
