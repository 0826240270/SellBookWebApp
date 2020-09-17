using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebBanSach.Models
{
    public class GioHangSach
    {
        DBBanSachEntities2 db = new DBBanSachEntities2();
        public string sMASACH { get; set; }

         public string sTENSACH { get; set; }

         public string sHINHANH{ get; set; }

         public string sGIABAN { get; set; }

         public int iSOLUONG { get; set; }

         public float fGIABAN { get; set; }

         public float fTHANHTIEN
         {
             get { return iSOLUONG * fGIABAN; }
         }
         public GioHangSach(string MASACH)
         {
             sMASACH = MASACH;
             SACH s = db.SACHes.FirstOrDefault(n => n.MASACH == MASACH);
             sTENSACH = s.TENSACH;
             sHINHANH = s.HINHANH;
            // s.GIABAN = float.Parse(s.GIABAN.ToString());
             fGIABAN = (float) (s.GIABAN);

             iSOLUONG = 1;
         }
         
    }
}