using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Routing;
using DataLogic;

namespace JodahBot
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            GlobalConfiguration.Configure(WebApiConfig.Register);

            ////Set up Synergy logicals from AppSettings in Web.config
            ////Code by Steve Ives
            ////This will also set unneeded logicals like the Bot ID and password,
            ////but I don't anticipate any problems with that.

            //Dictionary<String, String> settings = new Dictionary<string, string>();
            //foreach (string key in ConfigurationManager.AppSettings)
            //{
            //    if (key=="DAT")
            //        settings.Add(key, Server.MapPath(ConfigurationManager.AppSettings[key]));
            //    else
            //        settings.Add(key, ConfigurationManager.AppSettings[key]);
            //}
            ////SynergyEnvironment.SetEnvironment(settings);
        }
    }
}
