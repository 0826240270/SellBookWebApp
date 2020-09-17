using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using PagedList.Mvc;
using System.IO;
using WebBanSach.Models;

namespace WebBanSach.Controllers
{
    public class AdminController : Controller
    {
        //
        // GET: /Admin/
        DBBanSachEntities2 db = new DBBanSachEntities2();
        public ActionResult QuanLy()
        {
            return View();
        }
        [HttpGet]    
        public ActionResult ThemSanPham()
        { 
            return View(db.SACHes.ToList());
        }

        public ActionResult QuanLyKhachHang()
        {
            return View();
        }
        public ActionResult QLTacGia()
        {
            return View();
        }

        public ActionResult AdminDangNhap()
        {
            return View();
        }
    }
}
