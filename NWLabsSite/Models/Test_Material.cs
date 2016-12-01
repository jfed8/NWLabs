using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Test_Material")]
    public class Test_Material
    {
        public int Test_ID { get; set; }
        public int Material_ID { get; set; }
        public int QuantityRequired { get; set; }
    }
}