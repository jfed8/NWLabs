using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Quotes")]
    public class Quote
    {
        [Key]
        public int Quote_ID { get; set; }
        public int Assay_ID { get; set; }
        public int Compound_ID { get; set; }
        public decimal Price { get; set; }

    }
}