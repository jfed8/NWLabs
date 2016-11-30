using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NWLabsSite.Controllers
{
    public class CatalogController : Controller
    {
        // GET: Catalog
        public ActionResult Index()
        {
            return View();
        }

        // GET:
        public ActionResult Pharmacology()
        {
            return View();
        }

        // GET:
        public ActionResult Protocol()
        {
            return View();
        }

        // GET:
        public ActionResult Quote()
        {
            return View();
        }
    }
}