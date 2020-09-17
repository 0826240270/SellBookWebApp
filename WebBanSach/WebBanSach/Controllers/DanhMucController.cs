using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanSach.Models;

namespace WebBanSach.Controllers
{
    public class DanhMucController : Controller
    {
        //
        // GET: /DanhMuc/
        DBBanSachEntities2 db = new DBBanSachEntities2();
        public PartialViewResult DanhMuc()
        {
            var danhmuc = db.LOAISACHes.Take(10).ToList();
            return PartialView(danhmuc);
        }
        //public ActionResult Loai()
        //{
        //    return PartialView(db.LOAISACHes.Take(10).ToList());
        //}
        public ActionResult SachTheoLoai(string MALOAI="0")
        {
            LOAISACH l = db.LOAISACHes.SingleOrDefault(n => n.MALOAI == MALOAI);
            if (l == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            List<SACH> s = db.SACHes.Where(n => n.MALOAI == MALOAI).OrderBy(n=>n.GIABAN).ToList();
            if ( s.Count == 0)
            {
                ViewBag.sach = "Không có sách nào thuộc loại này";
            }
            return View(s);
        }
       
    }
}
