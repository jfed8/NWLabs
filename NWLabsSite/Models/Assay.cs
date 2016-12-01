using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Assay")]
    public class Assay
    {
        [Key]
        public int Assay_ID { get; set; }
        public string AssayType { get; set; }
        public string Protocol { get; set; }
        public int EstimatedDays { get; set; }
    }
}