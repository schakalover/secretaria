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
    
    public partial class Usuario
    {
        public int id_Usuario { get; set; }
        public int FK_Corporacion { get; set; }
        public int id_Area { get; set; }
        public string Nombre { get; set; }
        public string Cargo { get; set; }
        public string Usuario1 { get; set; }
        public string Password { get; set; }
        public byte[] Activo_Inactivo { get; set; }
    
        public virtual Areas Areas { get; set; }
        public virtual Corporacion Corporacion { get; set; }
    }
}
