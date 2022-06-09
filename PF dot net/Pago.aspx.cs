using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PF_dot_net
{
    public partial class Pago : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Alumnos.aspx");
        }

        protected void Calendar1_DayRender(Object sender, DayRenderEventArgs e)
        {
            //no acepta dias de otro mes
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
            }

            //No acepta fines de semana
            if (e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
            }

            //no acepta dias siguientes a hoy
            if (e.Day.Date > DateTime.Today)
            {
                e.Day.IsSelectable = false;
            }
        }

        public DateTime TodaysDate { get; set; }

        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {
            //Para proximo pago tendria que aceptar dias siguientes

            //No acepta otros meses que se ven en calendario a menos que cambies de mes
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
            }

            //No acepta fines de semana
            if (e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
            }

            //No acepta dias pasados ni hoy, solo dias siguientes (para pago de proximo mes)
            if (e.Day.Date <= DateTime.Today)
            {
                e.Day.IsSelectable = false;
            }
        }
    }
}