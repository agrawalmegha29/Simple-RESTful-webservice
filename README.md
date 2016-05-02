Project Description
======================
- This project develops a RESTful webservice that takes data from PHP and converts it into JSON format.
- PHP fetches the data of books from database and as per the URL request it either shares the Book Titles (for generic URL) or the entire detail of a particular book (URL with Book ID appended).
- This data is then encoded to JSON format in PHP and is echoed with proper HTTP header and 200 status message as a part of REST.

Installation
========================
- Deploy index.php on to PHP application server
- Hit the URL : localhost/books, to get the book titles for all books
- And URL : localhost/books/id (where id is a number for e.g. 1/2/3) to get the entire book details for that particular ID.
