using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace VistasSSyPC.Controllers
{
    public class InventtarioABCController : Controller
    {
        //
        // GET: /AltaInventtarioABC/

        public ActionResult AltaProducto()
        {
            return View();
        }

        [HttpPost]

        //public ActionResult AltaProducto() { }
        public ActionResult BajaProducto()
        {
            return View();
        }
        public ActionResult CosultaProducto()
        {
            return View();
        }
    }
}
