using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Invoice")]
    public class Invoice
    {

        [Key]
        public int InvoiceID { get; set; }
        public string DueDate { get; set; }
        public string EndDate { get; set; }
        public decimal EstimatedDiscount { get; set; }
        public decimal TotalCost { get; set; }

    }
}