using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Test")]
    public class Test
    {
        [Key]
        public int Test_ID { get; set; }
        public string TestDescription { get; set; }
        public decimal BasePrice { get; set; }
    }
}