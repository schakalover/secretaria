﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class BD_SSyPCEntities2 : DbContext
    {
        public BD_SSyPCEntities2()
            : base("name=BD_SSyPCEntities2")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Almacen> Almacen { get; set; }
        public DbSet<Areas> Areas { get; set; }
        public DbSet<Cat_Marca> Cat_Marca { get; set; }
        public DbSet<Cat_Modelo> Cat_Modelo { get; set; }
        public DbSet<Cat_Producto> Cat_Producto { get; set; }
        public DbSet<Corporacion> Corporacion { get; set; }
        public DbSet<Ingredientes> Ingredientes { get; set; }
        public DbSet<Ingredientes_UnidadAlimenticia> Ingredientes_UnidadAlimenticia { get; set; }
        public DbSet<Menu> Menu { get; set; }
        public DbSet<Platillos> Platillos { get; set; }
        public DbSet<Tbl_Inventario> Tbl_Inventario { get; set; }
        public DbSet<UnidadAlimenticia> UnidadAlimenticia { get; set; }
        public DbSet<Unidades_de__medida> Unidades_de__medida { get; set; }
        public DbSet<Usuario> Usuario { get; set; }
    }
}
