using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Files")]
    public class Files
    {
        [Key]
        public int FileNumber { get; set; }
        public int Result_ID { get; set; }
        public string FileName { get; set; }
        public int Emp_ID { get; set; }
        public decimal HoursWorked { get; set; }
        public bool IsActive { get; set; }
    }
}