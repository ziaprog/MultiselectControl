using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace MultiselectDropdown
{
    public partial class Dropdown : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StringBuilder sb=new StringBuilder();
           
            foreach (ListItem listItem in lblMultiSelect.Items)
            {
                if (listItem.Selected)
                {
                  sb.Append( " " +listItem.Value);
                }
            }
            Label1.Text = sb.ToString();
        }
    }
}