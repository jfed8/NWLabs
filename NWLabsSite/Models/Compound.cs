using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Compound")]
    public class Compound
    {
        [Key]
        public int Compound_ID { get; set; }
        public string CompoundName { get; set; }
    }
}