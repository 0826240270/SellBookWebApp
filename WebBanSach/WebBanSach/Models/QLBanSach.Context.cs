﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebBanSach.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DBBanSachEntities2 : DbContext
    {
        public DBBanSachEntities2()
            : base("name=DBBanSachEntities2")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Admin> Admins { get; set; }
        public DbSet<GIOHANG> GIOHANGs { get; set; }
        public DbSet<KhachHang> KhachHangs { get; set; }
        public DbSet<LOAISACH> LOAISACHes { get; set; }
        public DbSet<NXB> NXBs { get; set; }
        public DbSet<SACH> SACHes { get; set; }
        public DbSet<TACGIA> TACGIAs { get; set; }
    }
}