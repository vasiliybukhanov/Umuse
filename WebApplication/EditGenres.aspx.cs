using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Configuration;
using Models;

using RestSharp;

namespace WebApplication
{
    public partial class EditGenres : System.Web.UI.Page
    {
        private string ApiUrl = ConfigurationManager.AppSettings["APIServerURL"];
        private string ApiEnd = "api/genre";
        

        protected void Page_Load(object sender, EventArgs e)
        {
            List<GenreModel> genreList = null;
            try
            {                
                genreList = GetGenres();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            genresRepeater.DataSource = genreList;
            genresRepeater.DataBind();
        }
        
        private List<GenreModel> GetGenres()
        {
            List<GenreModel> res = null;
            var client = new RestClient(ApiUrl + ApiEnd);
            var response = client.Execute<List<GenreModel>>(new RestRequest());

            if (response.StatusCode == HttpStatusCode.OK)
            {
                res = response.Data;
            }

            return res;
        }
    }
}