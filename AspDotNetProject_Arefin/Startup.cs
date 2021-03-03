using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AspDotNetProject_Arefin.Startup))]
namespace AspDotNetProject_Arefin
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
