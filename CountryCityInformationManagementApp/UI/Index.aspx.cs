using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CountryCityInformationManagementApp.UI
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cityEntryLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CityEntryUI.aspx");
        }

        protected void countryEntryLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CountryEntryUI.aspx");
        }

        protected void viewCitiesLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCitiesUI.aspx");
        }

        protected void viewCountryLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCountries.aspx");
        }
    }
}