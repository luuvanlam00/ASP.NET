//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace bt
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class banhang2Entities : DbContext
    {
        public banhang2Entities()
            : base("name=banhang2Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<binhluan> binhluan { get; set; }
        public virtual DbSet<ctkm> ctkm { get; set; }
        public virtual DbSet<cthd> cthd { get; set; }
        public virtual DbSet<cthdnhap> cthdnhap { get; set; }
        public virtual DbSet<hdn> hdn { get; set; }
        public virtual DbSet<hoadon> hoadon { get; set; }
        public virtual DbSet<khachhang> khachhang { get; set; }
        public virtual DbSet<khuyenmai> khuyenmai { get; set; }
        public virtual DbSet<loaisp> loaisp { get; set; }
        public virtual DbSet<media> media { get; set; }
        public virtual DbSet<ncc> ncc { get; set; }
        public virtual DbSet<nguoidung> nguoidung { get; set; }
        public virtual DbSet<sanpham> sanpham { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
    }
}
