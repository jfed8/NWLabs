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
        [HttpGet]
        public ActionResult Quote()
        {
            ViewBag.Assay = "Lipoxygenase";

            List<SelectListItem> items = new List<SelectListItem>();

            items.Add(new SelectListItem { Text = "Magnesium", Value = "0" });

            items.Add(new SelectListItem { Text = "Phenolic", Value = "1" });

            items.Add(new SelectListItem { Text = "Trisilate", Value = "2" });

            items.Add(new SelectListItem { Text = "Carboxylate", Value = "3" });

            items.Add(new SelectListItem { Text = "Not Selected", Value = "4", Selected = true });

            ViewBag.Compound = items;

            return View();
        }

        public ActionResult ConfirmedQuote()
        {
            ViewBag.Assay = "Lipoxygenase";
            ViewBag.Compound = "Magnesium";
            ViewBag.Price = "$100.00";


            return View();
        }
    }
}