﻿using System;
using System.Data;
using System.Reflection;

namespace GroupAssignment.Items
{
    public class clsItemsSQL
    {
        /// <summary>
        /// Association with the class that directly opens the database
        /// </summary>
        ConnectDB db;

        public clsItemsSQL()
        {
            try
            {
                db = new ConnectDB();
            }
            catch (Exception ex)
            {
                throw new Exception(MethodInfo.GetCurrentMethod().DeclaringType.Name + "." + MethodInfo.GetCurrentMethod().Name + " -> " + ex.Message);
            }
        }

        /// <summary>
        /// Adds an Item to the database
        /// </summary>
        /// <param name="pKey"></param>
        /// <param name="ItemDesc"></param>
        /// <param name="cost"></param>
        /// <returns>Number of rows affected or -1 if the pKey is already used</returns>
        public int AddItem(string pKey, string ItemDesc, double cost)
        {
            try
            {
                string result = db.ExecuteScalarSQL("SELECT * FROM ItemDesc WHERE ItemCode = '" + pKey + "';");
                if (result == "")
                {
                    return db.ExecuteNonQuery("INSERT INTO ItemDesc (ItemCode, ItemDesc, Cost) VALUES('" + pKey + "','" + ItemDesc + "','" + cost.ToString() + "');");
                }
                else return -1;
            }
            catch (Exception ex)
            {
                throw new Exception(MethodInfo.GetCurrentMethod().DeclaringType.Name + "." + MethodInfo.GetCurrentMethod().Name + " -> " + ex.Message);
            }
        }
        /// <summary>
        /// Deletes an ItemCode pKey from the database
        /// </summary>
        /// <param name="pKey"></param>
        /// <returns>Number of rows affected</returns>
        public int DeleteItem(string pKey)
        {
            try
            {
                if (db.ExecuteScalarSQL("select * from LineItems where ItemCode = '" + pKey + "';") != "") return -1;
                return db.ExecuteNonQuery("DELETE FROM ItemDesc WHERE ItemCode = '" + pKey + "';");
            }
            catch (Exception ex)
            {
                throw new Exception(MethodInfo.GetCurrentMethod().DeclaringType.Name + "." + MethodInfo.GetCurrentMethod().Name + " -> " + ex.Message);
            }
        }

        /// <summary>
        /// Updates an Item
        /// </summary>
        /// <param name="pKey"></param>
        /// <param name="ItemDesc"></param>
        /// <param name="cost"></param>
        /// <returns>Number of rows affected or -1 if pKey doesn't exist</returns>
        public int UpdateItem(string pKey, string ItemDesc, double cost)
        {
            try
            {

                string result = db.ExecuteScalarSQL("SELECT * FROM ItemDesc WHERE ItemCode = '" + pKey + "';");
                if (result != "")
                {
                    return db.ExecuteNonQuery("UPDATE ItemDesc SET ItemDesc = '" + ItemDesc + "', Cost = '" + cost.ToString() + "' WHERE ItemCode='" + pKey + "';");
                }
                else return -1;
            }
            catch (Exception ex)
            {
                throw new Exception(MethodInfo.GetCurrentMethod().DeclaringType.Name + "." + MethodInfo.GetCurrentMethod().Name + " -> " + ex.Message);
            }
        }

        /// <summary>
        /// Returns all Items in the table
        /// </summary>
        /// <param name="rows"></param>
        /// <returns>Dataset of all columns in ItemDesc</returns>
        public DataSet DisplayItemDescTable(ref int rows)
        {
            try
            {
                return db.ExecuteSQLStatement("SELECT * FROM ItemDesc ORDER BY ItemCode", ref rows);
            }

            catch (Exception ex)
            {
                throw new Exception(MethodInfo.GetCurrentMethod().DeclaringType.Name + "." + MethodInfo.GetCurrentMethod().Name + " -> " + ex.Message);
            }
        }
    }
}

