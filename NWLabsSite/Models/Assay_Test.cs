using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Assay_Test")]
    public class Assay_Test
    {
        public int Assay_ID { get; set; }
        public int Test_ID { get; set; }
        public bool IsRequired { get; set; }
    }
}