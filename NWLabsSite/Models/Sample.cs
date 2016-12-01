using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Sample")]
    public class Sample
    {
        [Key]
        public int Sample_ID { get; set; }
        public int LT_Number { get; set; }
        public int SequenceCode { get; set; }
        public string Appearance { get; set; }
        public decimal Weight { get; set; }
        public decimal MolecularMass { get; set; }
    }
}