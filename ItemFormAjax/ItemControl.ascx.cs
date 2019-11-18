using System;

using System.Web;
using System.Web.UI;

namespace ItemFormAjax
{
    public partial class ItemControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tblMGMT.Visible = false;
            tblMarketing.Visible = true;
        }

        
    }
}