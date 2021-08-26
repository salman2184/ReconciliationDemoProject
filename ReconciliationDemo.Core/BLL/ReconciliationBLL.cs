using ReconciliationDemo.Core.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReconciliationDemo.Core.BLL
{
    public class ReconciliationBLL
    {
        public DataTable GetReadonlyData(int year,int type)
        {
            return new ReconciliationDAL().GetReadonlyData(year,type);
        }

        public DataSet GetBookkeepingData(int year,int type)
        {
            return new ReconciliationDAL().GetBookkeepingData(year,type);
        }

        public int SaveOrUpdateBookkeepingData(int typeId, decimal amount, int monthNumber,int year)
        {
            return new ReconciliationDAL().SaveOrUpdateBookkeepingData(typeId, amount, monthNumber,year);
        }
    }
}
