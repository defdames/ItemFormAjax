using System;

using System.Web;
using System.Web.UI;

namespace ItemFormAjax
{
    public partial class ItemControl : System.Web.UI.UserControl
    {

        private object _dataItem = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //empty on purpose
                    }

        public object DataItem
        {
            get
            {
                return this._dataItem;
            }
            set
            {
                this._dataItem = value;
            }
        }
        


    }
}