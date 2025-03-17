using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string title = Request.Form["BookTitle"];
                string description = Request.Form["BookDescription"];
                string author = Request.Form["BookAuthor"];

                if (!string.IsNullOrEmpty(title) && !string.IsNullOrEmpty(description) && !string.IsNullOrEmpty(author))
                {
                    List<Book> books = (List<Book>)Session["Books"];

                    var newBook = new Book
                    {
                        BookId = books.Count + 1,
                        BookTitle = title,
                        BookDescription = description,
                        BookAuthor = author
                    };

                    books.Add(newBook);
                    Session["Books"] = books;

                    //Response.Redirect("About.aspx");
                    Server.Transfer("About.aspx");
                }
            }
        }
    }
}
