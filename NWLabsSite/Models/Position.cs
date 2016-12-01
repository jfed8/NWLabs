using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Position")]
    public class Position
    {
        [Key]
        public int Position_ID { get; set; }
        public string PositionName { get; set; }
        public string PositionDescription { get; set; }
        public string PayMethod { get; set; }
    }
}