using Newtonsoft.Json;
using ReconciliationDemo.Core.BLL;
using ReconciliationDemo.Core.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ReconciliationDemo.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        [HttpGet]
        public JsonResult GetReadonlyData(string year,string type)
        {
            string result = string.Empty;
            DataTable data = new ReconciliationBLL().GetReadonlyData(Convert.ToInt32(year),Convert.ToInt32(type));
            if (data.Rows.Count > 0)
            {
                result = JsonConvert.SerializeObject(data);
            }
            return Json(result,JsonRequestBehavior.AllowGet);
        }
        [HttpGet]
        public JsonResult GetBookkeepingData(string year,string type)
        {
            string result = string.Empty;
            DataSet data = new ReconciliationBLL().GetBookkeepingData(Convert.ToInt32(year),Convert.ToInt32(type));
            if (data.Tables.Count > 0)
            {
                result = JsonConvert.SerializeObject(data);
            }
            return Json(result, JsonRequestBehavior.AllowGet);
        }
        public JsonResult SaveOrUpdateBookkeepingData(string amount,string month,string typeId,string year)
        {
            string json = string.Empty;
            try
            {
                int monthNumber = DateTime.ParseExact(month, "MMMM", CultureInfo.CurrentCulture).Month;
                int result = new ReconciliationBLL().SaveOrUpdateBookkeepingData(Convert.ToInt32(typeId), Convert.ToDecimal(amount), monthNumber, Convert.ToInt32(year));
                if (result > 0)
                {
                    json = "1";
                }
            }
            catch (Exception ex)
            {

                json = ex.Message;
            }
            
            return Json(json, JsonRequestBehavior.AllowGet);
        }
    }
}