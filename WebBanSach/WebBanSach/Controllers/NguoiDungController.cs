using System;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanSach.Models;


namespace WebBanSach.Controllers
{
    public class NguoiDungController : Controller
    {
        DBBanSachEntities2 db = new DBBanSachEntities2();
        //
        // GET: /NguoiDung/

        //public ActionResult Index()
        //{
        //    return View();
        //}
        [HttpGet]
        public ActionResult DangKy()
        {
            return View();
        }
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public ActionResult DangKy(KhachHang kh)
        {
            if (ModelState.IsValid)
            {
                db.KhachHangs.Add(kh);
                db.SaveChanges();
            }
            return View();
        } 
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangNhap(FormCollection f)
        {
            string ten = f["txtTaiKhoan"].ToString();
            string mk = f.Get("txtMatKhau").ToString();
            KhachHang kh = db.KhachHangs.SingleOrDefault(t => t.TENKH == ten && t.MATKHAU == mk);
            if (kh != null)
            {
                //ViewBag.ThongBao("Bạn đã đăng nhập thành công!!");
                Session["TaiKhoan"] = kh;
                return View();
            }
            else
            {
               
                //ViewBag.ThongBao("Tên tài khoản hoặc mật khẩu không đúng");
                return View();
            }


        }
    }
}
