using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FruitsprojectPractice
{
    public class AccessLayer
    {
        static string cs = ConfigurationManager.ConnectionStrings["DBSeason"].ConnectionString;
        public static List<Season> GetSeasons()
        {
            List<Season> seasons = new List<Season>();
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "Select ID , SeasonName, SeasonDate from seasonTable";
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                Season sea = new Season();
                sea.ID = Convert.ToInt32(sdr["ID"]);
                sea.SeasonName = sdr["SeasonName"].ToString();
                sea.SeasonDate = Convert.ToDateTime(sdr["SeasonDate"]);
                seasons.Add(sea);
            }
            con.Close();
            return seasons;
        }


        public static int InsertMethod(int Id, string seasonName, DateTime seasonDate)
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = $"INSERT INTO seasonTable VALUES ({Id},'{seasonName}','{seasonDate}')";
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }


        public static int UpdateMethod(int Id, string SeasonName, DateTime SeasonDate)
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = $"UPDATE seasonTable SET SeasonName='{SeasonName}', SeasonDate='{SeasonDate}' WHERE ID={Id}";
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }



        public static Season SelectMethod(int Id)
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = $"SELECT ID, SeasonName, SeasonDate from seasonTable WHERE ID = {Id}";
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            Season sea = new Season();
            while (sdr.Read())
            {
                sea.ID = Convert.ToInt32(sdr["Id"]);
                sea.SeasonName = sdr["SeasonName"].ToString();
                sea.SeasonDate = Convert.ToDateTime(sdr["SeasonDate"]);
            }
            return sea;
        }


        public static int DeleteMethod(int Id)
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = $"DELETE from seasonTable WHERE ID = {Id}";
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }


    }
}