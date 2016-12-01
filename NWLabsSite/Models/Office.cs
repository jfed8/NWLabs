using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Offices")]
    public class Office
    {
        [Key]
        public int Office_ID { get; set; }
        public string Location { get; set; }
        public string Phone { get; set; }
    }
}