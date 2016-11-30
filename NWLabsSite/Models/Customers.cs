using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Customers")]
    public class Customers
    {
        public String Instrument_Description { get; set; }
    }
}