using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Payment")]
    public class Payment
    {
        [Key]
        public int Payment_ID { get; set; }
        public int Customer_ID { get; set; }
        public string PaymentType { get; set; }
        public int CardNumber { get; set; }
        public string ExpirationDate { get; set; }
    }
}