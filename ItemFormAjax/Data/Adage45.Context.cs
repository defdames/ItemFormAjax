﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ItemFormAjax.Data
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class adage_45Entities : DbContext
    {
        public adage_45Entities()
            : base("name=adage_45Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<pmap_Characteristic> pmap_Characteristic { get; set; }
        public virtual DbSet<pmap_Geometry> pmap_Geometry { get; set; }
        public virtual DbSet<pmap_Micron> pmap_Micron { get; set; }
        public virtual DbSet<pmap_PhysicalForm> pmap_PhysicalForm { get; set; }
        public virtual DbSet<pmap_Solvent> pmap_Solvent { get; set; }
        public virtual DbSet<pmap_SurfaceTreatment> pmap_SurfaceTreatment { get; set; }
        public virtual DbSet<pmap_System> pmap_System { get; set; }
        public virtual DbSet<pmap_Type_Application> pmap_Type_Application { get; set; }
        public virtual DbSet<item_class_ext> item_class_ext { get; set; }
        public virtual DbSet<xxItemForm> xxItemForms { get; set; }
        public virtual DbSet<xxItemHeader> xxItemHeaders { get; set; }
    }
}
