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
    
    public partial class hdn
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public hdn()
        {
            this.cthdnhap = new HashSet<cthdnhap>();
        }
    
        public int id_hdnhap { get; set; }
        public Nullable<int> mancc { get; set; }
        public Nullable<System.DateTime> ngaynhap { get; set; }
        public string tennguoigiao { get; set; }
        public string noidung { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<cthdnhap> cthdnhap { get; set; }
        public virtual ncc ncc { get; set; }
    }
}
