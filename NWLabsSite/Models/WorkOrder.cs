using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("WorkOrders")]
    public class WorkOrder
    {
        [Key]
        public int WorkOrder_ID { get; set; }
        public int Customer_ID { get; set; }
        public string Comment { get; set; }
        public double Discount { get; set; }
        public bool IsRushed { get; set; }
        public int Invoice_ID { get; set; }
    }
}