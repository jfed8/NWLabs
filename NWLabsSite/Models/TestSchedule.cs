using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Test_Schedule")]
    public class TestSchedule
    {
        [Key]
        public int SampleTest_ID { get; set; }
        public int Sample_ID { get; set; }
        public int Assay_ID { get; set; }
        public int Test_ID { get; set; }
        public string ScheduledDate { get; set; }
    }
}