using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using VistasSSyPC.Models;

namespace VistasSSyPC.Controllers
{
    public class StartController : Controller

    {
        private BD_SSyPCEntities2 objeto = new BD_SSyPCEntities2();

        
        //
        // GET: /Start/

        public ActionResult IniciaSesion()
        {
            return View();
        }



        [HttpPost]
        public ActionResult IniciaSesion(Usuario usuario)
        {

            if (usuario.Nombre == null)
            {
                ModelState.AddModelError("usuario", "No ha ingresado ningún usuario");
            }
            if (usuario.Usuario1 == null)
            {
                ModelState.AddModelError("cargo", "el campo cargo es obligatorio");
            }
            if (usuario.Nombre != null && usuario.Password == null)
            {
                ModelState.AddModelError("contraseña", "No ha ingresado la contraseña");
            }
            else
            {
                //try
                //{
                var consulta = (from c in objeto.Usuario
                                where c.Password == usuario.Password
                                && c.Nombre == usuario.Nombre && c.Usuario1 == usuario.Usuario1 && usuario.Usuario1 == "Operador" || usuario.Usuario1 == "principal" || usuario.Usuario1 == "operador"
                                select c.Nombre);


                var resultadoConsulta = consulta.First();

                if (resultadoConsulta != null)
                {

                    return RedirectToAction("operador", "Start");
                    // el primer valor es una vista, el segundo es el
                }
                else
                {
                    return RedirectToAction("no exist", "controlador");


                }                                                    // nombre del controlador o carpeta donde esta
                //}
                //catch (InvalidOperationException)
                //{
                //ModelState.AddModelError("login", "Usuario o contraseña no valido");
                //}
            }
            return View();
        }
        public ActionResult Operador()
        {
            return View();
        }



    }
}
