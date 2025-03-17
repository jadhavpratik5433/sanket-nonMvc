using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class About : System.Web.UI.Page
    {
        public List<Book> Books { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Books = new List<Book>
            {
                new Book { BookId = 1, BookTitle = "C# Programming", BookDescription = "Learn C# from basics to advanced.", BookAuthor = "John Doe" },
                new Book { BookId = 2, BookTitle = "ASP.NET MVC", BookDescription = "Master ASP.NET MVC Framework.", BookAuthor = "Jane Smith" }
            };
            
        }
    }

    public class Book
    {
        public int BookId { get; set; }
        public string BookTitle { get; set; }
        public string BookDescription { get; set; }
        public string BookAuthor { get; set; }
    }

}
