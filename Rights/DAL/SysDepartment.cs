//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Langben.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class SysDepartment
    {
        public SysDepartment()
        {
            this.SysDepartment1 = new HashSet<SysDepartment>();
            this.SysPerson = new HashSet<SysPerson>();
        }
    
        public string Id { get; set; }
        public string Name { get; set; }
        public string ParentId { get; set; }
        public string Address { get; set; }
        public Nullable<int> Sort { get; set; }
        public string Remark { get; set; }
        public Nullable<System.DateTime> CreateTime { get; set; }
        public string CreatePerson { get; set; }
        public Nullable<System.DateTime> UpdateTime { get; set; }
        public string UpdatePerson { get; set; }
    
        public virtual ICollection<SysDepartment> SysDepartment1 { get; set; }
        public virtual SysDepartment SysDepartment2 { get; set; }
        public virtual ICollection<SysPerson> SysPerson { get; set; }
    }
}
