//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Secretaria.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Unidades_de__medidas
    {
        public Unidades_de__medidas()
        {
            this.Cat_Productos = new HashSet<Cat_Productos>();
            this.Ingredientes = new HashSet<Ingredientes>();
            this.Unidades_Alimenticias = new HashSet<Unidades_Alimenticias>();
        }
    
        public int id_UnidadesdeMedida { get; set; }
        public string U_M { get; set; }
    
        public virtual ICollection<Cat_Productos> Cat_Productos { get; set; }
        public virtual ICollection<Ingredientes> Ingredientes { get; set; }
        public virtual ICollection<Unidades_Alimenticias> Unidades_Alimenticias { get; set; }
    }
}