using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NWLabsSite.Controllers
{
    public class WorkOrderController : Controller
    {
        // Method: Index. This will query the database and return a dynamic view with a list of WorkOrders
        // GET: WorkOrder
        public ActionResult Index()
        {
            return View();
        }

        // Method: Results. This will query the database and return a dynamic view with a list of Results for specified Workorder
        // GET: WorkOrder
        public ActionResult Results()
        {
            return View();
        }

        // Method: UploadResults. This will return a view with a form for the employee to upload Raw Results
        // GET: WorkOrder
        public ActionResult UploadResults()
        {
            return View();
        }

        // Method: Reports. This will return a dynamaic view with links to available reports
        // GET: WorkOrder
        public ActionResult Reports()
        {
            return View();
        }

        // Method: CreateWorkOrder. This will return a view with a form for the employee to Create WorkOrder
        // GET: WorkOrder
        public ActionResult CreateWorkOrder()
        {
            return View();
        }


    }
}