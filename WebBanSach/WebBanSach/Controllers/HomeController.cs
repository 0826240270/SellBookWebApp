using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.EntityClient;
using WebBanSach.Models;
using PagedList;
using PagedList.Mvc;

namespace WebBanSach.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        DBBanSachEntities2 db = new DBBanSachEntities2();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Trang(int? Page)
        {
            int PageNumber = (Page ?? 1);
            int PageSize = 10;
            return View(db.SACHes.ToList().OrderBy(n => n.MASACH).ToPagedList(PageNumber, PageSize));
            //var NoiBat = db.SACHes.Take(10).ToList();
            //return PartialView(NoiBat);
        }
        [HttpPost]
        public ActionResult TimKiem(FormCollection c)
        {
            var tukhoa = c["txtSearch"];
            List<SACH> lst = db.SACHes.ToList();
            List<SACH> lst1 = lst.Where(t => t.TENSACH.Contains(tukhoa) == true).ToList();
            return View(lst1);
        }


        public PartialViewResult SPNoiBat()
        {

            var NoiBat = db.SACHes.Take(50).ToList();
            return PartialView(NoiBat);
        }
        
        //view sản phẩm
        public ViewResult ChiTiet(string MASACH = "0")
        {
            SACH ct = db.SACHes.SingleOrDefault(n => n.MASACH == MASACH);
            if (ct == null)
            {
                Response.StatusCode = 404;
                return null;

            }
            return View(ct);
        }
        public ViewResult GioHang()
        {
            return View();
        }
    }
}
