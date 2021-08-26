using ReconciliationDemo.Core.Utility;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReconciliationDemo.Core.DAL
{
    public class ReconciliationDAL
    {
        internal DataTable GetReadonlyData(int year,int type)
        {
            try
            {
                List<SqlParameter> sqlParameters = new List<SqlParameter>
                {
                    new SqlParameter("@Year",year),
                    new SqlParameter("@Type",type)
                };
                return new SqlManager().FillDataTable("GetReadOnlyData", sqlParameters);
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        internal int SaveOrUpdateBookkeepingData(int typeId, decimal amount, int monthNumber,int year)
        {
            try
            {
                List<SqlParameter> sqlParameters = new List<SqlParameter>
                {
                    new SqlParameter("@TypeId",typeId),
                    new SqlParameter("@Amount",amount),
                    new SqlParameter("@Month",monthNumber),
                    new SqlParameter("@Year",year)
                };
                return new SqlManager().ExecuteNonQuery("SaveOrUpdateBookkeepingValue", sqlParameters);
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        internal DataSet GetBookkeepingData(int year,int type)
        {
            try
            {
                List<SqlParameter> sqlParameters = new List<SqlParameter>
                {
                    new SqlParameter("@Year",year),
                    new SqlParameter("@Type",type)
                };
                return new SqlManager().FillDataSet("GetBookkeepingData", sqlParameters);
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}
