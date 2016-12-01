using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Customers")]
    public class Customer
    {
        [Key]
        public int Customer_ID { get; set; }
        public string CustFirstName { get; set; }
        public string CustLastName { get; set; }
        public string CustAddress { get; set; }
        public string CustCity { get; set; }
        public string CustState { get; set; }
        public string CustZipCode { get; set; }
        public string CustPhoneNumber { get; set; }
        public string CustEmail { get; set; }
        public double AccountBalance { get; set; }
    }
}