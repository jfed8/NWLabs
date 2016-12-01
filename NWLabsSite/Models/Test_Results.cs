using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Test_Results")]
    public class Test_Results
    {
        [Key]
        public int Result_ID { get; set; }
        public int SampleTest_ID { get; set; }
        public string ResultDate { get; set; }
        public int Emp_ID { get; set; }
        public decimal HoursWorked { get; set; }
        public bool IsActive { get; set; }
    }
}