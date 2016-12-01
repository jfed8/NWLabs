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

        //Method: Pharmacology. It returns the Pharmacology report
        // GET:
        public ActionResult Pharmacology()
        {
            return View();
        }

        //Method: Pharmacology. It returns the Protocol Notebook
        // GET:
        public ActionResult Protocol()
        {
            return View();
        }

        //Method: Quote. Returns the view for user to select available compounds for selected Assay
        // GET:
        [HttpGet]
        public ActionResult Quote()
        {
            
            ViewBag.Assay = "Lipoxygenase";
            //List of available compounds for specified assay, used for dropdownlist in view
            List<SelectListItem> items = new List<SelectListItem>();

            items.Add(new SelectListItem { Text = "Magnesium", Value = "0" });

            items.Add(new SelectListItem { Text = "Phenolic", Value = "1" });

            items.Add(new SelectListItem { Text = "Trisilate", Value = "2" });

            items.Add(new SelectListItem { Text = "Carboxylate", Value = "3" });

            items.Add(new SelectListItem { Text = "Not Selected", Value = "4", Selected = true });

            ViewBag.Compound = items;

            return View();
        }

        //Method: ConfirmedQuote. Returns the view with estimated price for an assay and a specific compound
        public ActionResult ConfirmedQuote()
        {
            ViewBag.Assay = "Lipoxygenase";
            ViewBag.Compound = "Magnesium";
            ViewBag.Price = "$100.00";


            return View();
        }
    }
}