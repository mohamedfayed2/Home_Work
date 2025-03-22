void main() {
  Library library = Library();

  library.addBook(Book('Dart Mastery', 'tharwat same', '54321'));
  library.addBook(Book('Flutter Advanced', 'tharwat same', '09876'));

  library.borrowBook('12345');

  List<Book> searchResults = library.searchByTitle('Dart');
  print('Search results: ${searchResults.map((b) => b.title).toList()}');

  library.returnBook('12345');
}

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn, {this.isAvailable = true});

  @override
  String toString() {
    return 'Title: $title, Author: $author, ISBN: $isbn, Available: $isAvailable';
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Book added: ${book.title}');
  }

  bool borrowBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn && book.isAvailable) {
        book.isAvailable = false;
        print('Book borrowed: ${book.title}');
        return true;
      }
    }
    print('Book not available or not found.');
    return false;
  }

  bool returnBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn && !book.isAvailable) {
        book.isAvailable = true;
        print('Book returned: ${book.title}');
        return true;
      }
    }
    print('Book not found or already available.');
    return false;
  }

  List<Book> searchByTitle(String title) {
    List<Book> foundBooks = books
        .where((book) => book.title.toLowerCase().contains(title.toLowerCase()))
        .toList();
    return foundBooks;
  }
}
