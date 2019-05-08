using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPControlesDinamicos
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_PreInit(object sender, EventArgs e)
        {
            List<string> keys = Request.Form.AllKeys.Where(key => key.Contains("txtDynamic")).ToList();
            int i = 1;
            foreach (string key in keys)
            {
                this.CreateTextBox("txtDynamic" + i);
                i++;
            }



            List<string> butt = Request.Form.AllKeys.Where(key => key.Contains("btnDynamic")).ToList();
            int j = 1;
            foreach (string key in keys)
            {
                this.CreateButton("btnDynamic" + j);
                j++;
            }


        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int index = pnlTextBoxes.Controls.OfType<TextBox>().ToList().Count + 1;
            this.CreateTextBox("txtDynamic" + index);
        }
        private void CreateTextBox(string id)
        {
            TextBox txt = new TextBox();
            txt.ID = id;
            txt.CssClass = "form-control col-sm-3";
            
            pnlTextBoxes.Controls.Add(txt);

            Literal lt = new Literal();
            lt.Text = "<br />";
            pnlTextBoxes.Controls.Add(lt);
        }
        protected void btnGet_Click(object sender, EventArgs e)
        {
            string message = "";
            foreach (TextBox textBox in pnlTextBoxes.Controls.OfType<TextBox>())
            {
                message += textBox.ID + ": " + textBox.Text + "\\n";
            }
            lblResulado.Text = message;
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('" + message + "');", true);
        }

        protected void btnAddButton_Click(object sender, EventArgs e)
        {
            int index = pnlButton.Controls.OfType<Button>().ToList().Count + 1;
            this.CreateButton("btnDynamic" + index);
        }
        private void CreateButton(string id)
        {
            Button txt = new Button();
            txt.ID = id;
            txt.Text = "Button "+id.ToString();
            txt.CssClass = "btn btn-primary col-sm-3";

            pnlButton.Controls.Add(txt);

            Literal lt = new Literal();
            lt.Text = "<br />";
            pnlButton.Controls.Add(lt);
        }
    }
}