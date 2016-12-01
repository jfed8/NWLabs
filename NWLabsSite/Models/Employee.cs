using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace NWLabsSite.Models
{
    [Table("Employee")]
    public class Employee
    {

        [Key]
        public int EmployeeID { get; set; }
        public string EmpFirstName { get; set; }
        public string EmpLastName { get; set; }
        public string EmpAddress { get; set; }
        public string EmpCity { get; set; }
        public string EmpState { get; set; }
        public string EmpZipCode { get; set; }
        public string EmpPhoneNumber { get; set; }
        public string EmpEmail { get; set; }


        public int OfficeID { get; set; }
        public int PositionID { get; set; }


    }
}