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
    using System.Collections.Generic;
    
    public partial class cthd
    {
        public int id_cthd { get; set; }
        public int id_hd { get; set; }
        public int masp { get; set; }
        public Nullable<double> giaban { get; set; }
        public int soluong { get; set; }
        public Nullable<int> id_ctkm { get; set; }
    
        public virtual ctkm ctkm { get; set; }
        public virtual hoadon hoadon { get; set; }
        public virtual sanpham sanpham { get; set; }
    }
}