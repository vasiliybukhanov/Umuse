using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Configuration;
using System.Security.Cryptography;

namespace WebApplication
{
    public partial class Default : System.Web.UI.Page
    {
        private string userPage = "Home.aspx";
        private string adminPage = "HomeAdmin.aspx";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["signout"] == "true")
            {
                Response.Cookies["token"].Value = null; 
                Response.Redirect("Default.aspx");
                return;
            }

            usernameText.Focus();
            submitButton.Click += SubmitButton_Click;

            authenticateAndRedirect();
        }

        private void SubmitButton_Click(object sender, EventArgs e)
        {
            bool isUser = usernameText.Text == ConfigurationManager.AppSettings["userLogin"]
                && passwordText.Text == ConfigurationManager.AppSettings["userPassword"];
            bool isAdmin = usernameText.Text == ConfigurationManager.AppSettings["adminLogin"]
                    && passwordText.Text == ConfigurationManager.AppSettings["adminPassword"];

            if (isUser || isAdmin)
            {
                Response.Cookies["token"].Value = createToken(usernameText.Text, passwordText.Text);
                Session["Username"] = usernameText.Text;

                if (isUser)
                {                    
                    Response.Redirect(userPage);
                    return;
                }
                else
                {
                    Response.Redirect(adminPage);
                    return;
                }
            }
            else
            {
                outputLabel.Text = "User with such password does not exist";
            }


        }

        private void authenticateAndRedirect()
        {
            if (Request.Cookies["token"] != null && !string.IsNullOrEmpty(Request.Cookies["token"].Value))
            {
                var userLogin = ConfigurationManager.AppSettings["userLogin"];
                var userPassword = ConfigurationManager.AppSettings["userPassword"];                
                var userToken = createToken(userLogin, userPassword);

                var adminLogin = ConfigurationManager.AppSettings["adminLogin"];
                var adminPassword = ConfigurationManager.AppSettings["adminPassword"];
                var adminToken = createToken(adminLogin, adminPassword);

                if (userToken == Request.Cookies["token"].Value)
                {
                    Session["Username"] = userLogin;
                    Response.Redirect(userPage);
                    return;
                }
                else
                {
                    if (adminToken == Request.Cookies["token"].Value)
                    {
                        Session["Username"] = adminLogin;
                        Response.Redirect(adminPage);
                        return;
                    }
                }
            }
        }

        private string createToken(string login, string password)
        {
            var alg = MD5.Create();
            var bytes = Encoding.ASCII.GetBytes(login + password);
            return Convert.ToBase64String(alg.ComputeHash(bytes));
        }
    }
}