using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NWLabsSite.Controllers
{
    public class CustomerController : Controller
    {
        // GET: Customer
        public ActionResult Index()
        {
            return View();
        }

        //Method: CustAccount.  Dashboard for the user. Shows overall information and common links
        public ActionResult CustAccount()
        {
            return View();
        }

        //Method: WorkOrderDetails.  This method would query the database and return a dynamic view with details to a specific WorkOrder
        public ActionResult WorkOrderDetails()
        {
            return View();
        }

        //Method: WorkOrderDetailsPending.  This method would query the database and return a dynamic view with details about needed additional tests
        public ActionResult WorkOrderDetailsPending()
        {
            return View();
        }

        //Method: WorkOrderDetailsPending.  This method returns a view notifying the customer that a verification email has been email to them.
        //They will need to read the verification email to continue creating account.
        public ActionResult Create()
        {
            return View();
        }

        
    }
}