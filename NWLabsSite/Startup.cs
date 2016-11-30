using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NWLabsSite.Startup))]
namespace NWLabsSite
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
