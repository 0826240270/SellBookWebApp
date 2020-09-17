using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanSach.Models;

namespace WebBanSach.Controllers
{
    public class GioHangController : Controller
    {
        //
        // GET: /GioHang/

        DBBanSachEntities2 db = new DBBanSachEntities2();
        //public ActionResult Giohang()
        //{
        //    ViewBag.sl = TongSL();
        //    ViewBag.tt = TongTien();
        //    return PartialView();
        //}
        public ActionResult GioHang()
        {
           

            if (Session["GioHangSach"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            List<GioHangSach> listGH = LayGioHang();
            ViewBag.sl = TongSL();
              ViewBag.tt = TongTien();
            return View(listGH);


        }
       

        public ActionResult XemGiohang()
        {
            List<GioHangSach> listGH = LayGioHang();
            if (listGH.Count == 0)
            {
                return RedirectToAction("Index", "Home");
            }
            ViewBag.sl = TongSL();
            ViewBag.tt = TongTien();
            return View(listGH);
        }
       
        public List<GioHangSach> LayGioHang()
        {
            List<GioHangSach> listGH = Session["GioHangSach"] as List<GioHangSach>;
            if (listGH == null)
            {
                listGH = new List<GioHangSach>();
                Session["GioHangSach"] = listGH;
            }
            return listGH;
        }
       
        public ActionResult ThemGioHang(string sMASACH, string strURL)
        {
            SACH s = db.SACHes.SingleOrDefault(n => n.MASACH == sMASACH);
            if (s == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            List<GioHangSach> listGH = LayGioHang();
            GioHangSach sp = listGH.Find(n => n.sMASACH == sMASACH);
            if (sp == null)
            {
                sp = new GioHangSach(sMASACH);
                listGH.Add(sp);
                return Redirect(strURL);
            }
            else
            {
                sp.iSOLUONG++;
                return Redirect(strURL);
            }
        }

        private int TongSL()
        {
            int iTongSL = 0;
            List<GioHangSach> listGH = LayGioHang();
            if (listGH.Count != 0)
            {
                iTongSL = listGH.Sum(t => t.iSOLUONG);
            }

            return iTongSL;
        }
        public float TongTien()
        {
            List<GioHangSach> listGH = LayGioHang();
            float Tongtien = 0;
            if (listGH.Count != 0)
            {
                Tongtien = listGH.Sum(t => t.fTHANHTIEN);

            }
            return Tongtien;
        }
 
        public ActionResult CapNhatGioHang(string sMASACH, FormCollection f)
        {
            SACH s = db.SACHes.SingleOrDefault(n => n.MASACH == sMASACH);
            if (s == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            List<GioHangSach> listGH = LayGioHang();
            GioHangSach sp = listGH.SingleOrDefault(n => n.sMASACH == sMASACH);
            if (sp != null)
            {
                sp.iSOLUONG = int.Parse(f["txtSoLuong"].ToString());
            }
            return View("GioHangSach");
        }
        public ActionResult XoaGioHang(string sMASACH)
        {
            SACH s = db.SACHes.SingleOrDefault(n => n.MASACH == sMASACH);
            if (s == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            List<GioHangSach> listGH = LayGioHang();
            GioHangSach sp = listGH.SingleOrDefault(n => n.sMASACH == sMASACH);
            if (sp != null)
            {
                listGH.RemoveAll(n => n.sMASACH == sMASACH);
                return View(s);
            }
            if (listGH.Count == 0)
            {
                return RedirectToAction("Index", "Home");
            }
            return RedirectToAction("GioHangSach");

        }
       
     

       
    }
}
