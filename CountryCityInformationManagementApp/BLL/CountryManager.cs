using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CountryCityInformationManagementApp.DAL.Gateways;
using CountryCityInformationManagementApp.Models;

namespace CountryCityInformationManagementApp.BLL
{
    public class CountryManager
    {   
        CountryGateway countryGateway=new CountryGateway();
        public string Save(Country country)
        {
            if (!countryGateway.IsCountryExist(country.Name))
            {
                if (countryGateway.Save(country) > 0)
                {
                    return "Country Save Successfully";
                }
                else
                {
                    return "Country can not Save";
                }
            }
            else
            {
                return "Exists Already";
            } 
        }

        public List<Country> GetAllCountryList()
        {
            return countryGateway.GetAllCountryList();
        }
    }
}