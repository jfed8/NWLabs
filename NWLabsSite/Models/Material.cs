using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Material")]
    public class Material
    {
        [Key]
        public int Material_ID { get; set; }
        public string Description { get; set; }
        public decimal CostPerUnit { get; set; }
    }
}