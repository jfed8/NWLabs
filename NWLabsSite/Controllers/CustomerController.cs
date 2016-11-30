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

        public ActionResult CustAccount()
        {
            return View();
        }

        public ActionResult WorkOrderDetails()
        {
            return View();
        }

        public ActionResult WorkOrderDetailsPending()
        {
            return View();
        }

        public ActionResult Create()
        {
            return View();
        }

        
    }
}