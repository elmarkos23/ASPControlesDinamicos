using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Linq.Expressions;
using System.Web.UI.WebControls;

namespace ASPControlesDinamicos
{
    public partial class Default : System.Web.UI.Page
    {
        public Dictionary<string,string> dictionary = new Dictionary<string, string>();
        public Dictionary<string, string> dicResult = new Dictionary<string, string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            dictionary.Add("a", "Gen-txt-a");
            dictionary.Add("b", "Gen-txt-b");
            dicResult.Add("c", "Gen-lbl-b");
        }
        protected void Page_PreInit(object sender, EventArgs e)
        {
            List<string> keytxt = Request.Form.AllKeys.Where(key => key.Contains("Gen")).ToList();
            foreach (string key in keytxt)
            {
                string[] authorsList = key.Split('-');

                if (authorsList[1].Equals("txt"))
                {
                    GenerarButton(authorsList[2].ToString());
                }
            }
        }
        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (ddlTipo.SelectedValue.Equals("txt"))
            {
                GenerarButton(txtNombre.Text);
            }
        }
        private void GenerarButton(string nombre)
        {
            var textBox = new TextBox
            {
                ID = "Gen" + "-" + "txt" + "-" + nombre,
                CssClass = "form-control",
                TextMode = TextBoxMode.Number,
                Text = "0"
            };
            phFormulario.Controls.Add(textBox);
        }

        protected void btnEjecutar_Click(object sender, EventArgs e)
        {
            string result = "a+b";
            foreach (KeyValuePair<string, string> pair in dictionary)
            {
                TextBox t1 = (TextBox)phFormulario.FindControl(pair.Value);
                result = result.Replace(pair.Key,t1.Text);
            }
            DataTable dt = new DataTable();
            int answer = (int)dt.Compute(result, "");
            lblResult.Text = answer.ToString("F2");
        }
    }
}