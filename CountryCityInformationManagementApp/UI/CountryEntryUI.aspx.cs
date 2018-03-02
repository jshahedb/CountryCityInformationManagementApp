using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using CountryCityInformationManagementApp.BLL;
using CountryCityInformationManagementApp.Models;

namespace CountryCityInformationManagementApp.UI
{
    public partial class CountryEntryUI : System.Web.UI.Page
    {
        CountryManager countryManager=new CountryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            PopulatedGridView();
        }

        private void PopulatedGridView()
        {
            List<Country> countries=new List<Country>();
            countries=countryManager.GetAllCountryList();
            countryGridView.DataSource =countries;
            countryGridView.DataBind();
        }

        protected void SaveButton_OnClick(object sender, EventArgs e)
        {
            Country country=new Country();
            country.Name = nameTextBox.Text;
            country.About = WebUtility.HtmlEncode(aboutTextArea.InnerText); 
            Response.Write(countryManager.Save(country));
            PopulatedGridView();
        }

        protected void CancelButton_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

       
    }
}