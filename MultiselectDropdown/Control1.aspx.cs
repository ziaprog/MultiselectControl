using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Data.Schema.ScriptDom;
using Microsoft.Data.Schema.ScriptDom.Sql;
using System.IO;

namespace MultiselectDropdown
{
    public partial class Control1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void checkBoxes_SelcetedIndexChanged(object sender, EventArgs e)
        {

            selectedItemsPanel.Controls.Clear();

            foreach (ListItem item in (sender as ListControl).Items)
            {
                if (item.Selected)
                    selectedItemsPanel.Controls.Add(new System.Web.UI.WebControls.Literal() { Text = item.Text + " : " + item.Value + "<br/>" });
            }
       
        }
        public List<string> Parse(string sql)
        {
            TSql100Parser parser = new TSql100Parser(false);
            IScriptFragment fragment;
            IList<ParseError> errors;
            fragment = parser.Parse(new StringReader(sql), out errors);
            if (errors != null && errors.Count > 0)
            {
                List<string> errorList = new List<string>();
                foreach (var error in errors)
                {
                    errorList.Add(error.Message);
                }
                return errorList;
            }
            return null;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           List<string> errors= Parse(TextBox1.Text);
        }
    }
}