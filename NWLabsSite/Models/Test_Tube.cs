using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Test_Tube")]
    public class Test_Tube
    {
        [Key]
        public int TestTube_ID { get; set; }
        public int Sample_ID { get; set; }
        public decimal Concentration { get; set; }
        public int Test_ID { get; set; }
    }
}