using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Configuration;
using CountryCityInformationManagementApp.Models;

namespace CountryCityInformationManagementApp.DAL.Gateways
{
    public class CountryGateway
    {
        private SqlConnection connection = new SqlConnection();

        private string connectionstring =
            WebConfigurationManager.ConnectionStrings["ContryDbConnectionstring"].ConnectionString;
        public int Save(Country country)
        {
            connection.ConnectionString = connectionstring;
            string query = "INSERT INTO Countries VALUES('" + country.Name + "','" + country.About +"')";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }

        public bool IsCountryExist(string name)
        {
            connection.ConnectionString = connectionstring;
            string query = "SELECT * FROM Countries Where name ='" + name + "'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            bool isCityExist = false;
            if (reader.HasRows)
            {
                isCityExist = true;
            }
            connection.Close();
            return isCityExist;
        }

        public List<Country> GetAllCountryList()
        {
            connection.ConnectionString = connectionstring;
            string query = "Select * from Countries";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            List<Country> countries = new List<Country>();
            while (reader.Read())
            {
                Country country = new Country();
                country.Name = reader["Name"].ToString();
                country.About = WebUtility.HtmlDecode(reader["About"].ToString());
                countries.Add(country);
            }
            reader.Close();
            connection.Close();
            return countries;
        }
    }
}