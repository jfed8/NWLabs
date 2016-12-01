using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Compound_Item")]
    public class Compound_Item
    {
        [Key]
        public int LT_Number { get; set; }
        public int Compound_ID { get; set; }
        public int Quantity { get; set; }
        public string DateArrived { get; set; }
        public string ReceivedBy { get; set; }
        public string DateDue { get; set; }
        public decimal EstimatedWeight { get; set; }
        public decimal ActualWeight { get; set; }
        public decimal MolecularMass { get; set; }
        public bool ReceiveConfirmation { get; set; }
        public decimal MTD { get; set; }
        public int WorkOrder_ID { get; set; }
        public string Status { get; set; }
        public bool AllTests { get; set; }
    }
}