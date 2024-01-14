using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//using System.Data.Odbc;
using System.Data;
using MySql.Data.MySqlClient;

/// <summary>
/// Summary description for DataLayer
/// </summary>
public class DataLayer
{
    public MySqlConnection myConn;


    public int ConnectionTimeOut = 0;

    public DataLayer()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void DmlCmd(string qstr)
    {
        if (OpenSQLConnection())
        {

            //  SqlCommand objCommand = new SqlCommand();
            MySqlCommand objCommand = new MySqlCommand();
            try
            {
                objCommand.Connection = myConn;
                objCommand.CommandText = qstr;
                //objCommand.CommandType = CommandType.Text;
                objCommand.ExecuteNonQuery();
                objCommand.Dispose();
                // return string.Empty;

            }
            catch (Exception ex)
            {

                //return ex.Message;
            }
        }

    }
    # region Routine to get Connection String from Web.Config
    /*---------------------------------------------------
        ' Routine to get Connection String from Web.Config
        '---------------------------------------------------*/
    public string GetConnectionString()
    {


        string strConnectionString = "Data Source=localhost;initial catalog=fireDetection;Uid=root;Password=";

        return strConnectionString;
    }
    #  endregion



    # region Routine to Establish SQL Connection
    /*-------------------------------------
         Routine to establish SQL Connection
        -------------------------------------*/
    public bool OpenSQLConnection()
    {
        bool bAttemptToConnect = false;
        try
        {
            if (myConn == null)
                bAttemptToConnect = true;
            if (bAttemptToConnect == false)
            {
                if ((myConn.State == ConnectionState.Open) || (myConn.State == ConnectionState.Open))
                    bAttemptToConnect = true;
            }
            if (bAttemptToConnect)
            {
                //  myConn = new SqlConnection();
                myConn = new MySqlConnection();
                myConn.ConnectionString = GetConnectionString();
                myConn.Open();
            }
        }
        catch (Exception ex)
        {
            ex.Data.Clear();
        }
        return bAttemptToConnect;
    }
    #endregion



    #region Routine to Close SQL Connection
    /*-------------------------------------
        ' Routine to Close Connection
        '-------------------------------------*/
    public void CloseConnection()
    {
        try
        {
            if (myConn.State == ConnectionState.Open)
                myConn.Close();
        }
        catch (Exception ex)
        {
            ex.Data.Clear();
        }
    }
    # endregion
    # region Routine to Get DataSet for Passed SQL Command
    /*-----------------------------------------------
        ' Routine to Get DataSet for Passed SQL Command
        '-----------------------------------------------*/
    public DataSet GetDataSet(string a_strDataSource)
    {
        MySqlDataAdapter myAdapter = new MySqlDataAdapter();
        //OdbcDataAdapter myAdapter;
        DataSet DS;
        try
        {
            DS = new DataSet();
            //  myAdapter = new SqlDataAdapter(a_strDataSource, GetConnectionString());
            myAdapter = new MySqlDataAdapter(a_strDataSource, GetConnectionString());
            // myAdapter.SelectCommand.CommandTimeout = ConnectionTimeOut;
            myAdapter.Fill(DS);
            myAdapter.Dispose();
            myAdapter = null;
            return DS;
        }
        catch (Exception ex)
        {
            ex.Data.Clear();
            return null;
        }
        finally
        {
            // DS.Dispose();
        }
    }
    # endregion
}