class Person {
  String name;
  String email;

  Person(this.name, this.email);
}


class Author extends Person {
  static int _counter = 1; 
  int id;

  Author(String name, String email)
      : id = _counter++,
        super(name, email);
}


class Book {
  String name;
  String ISBN;
  int editionNumber;
  Author author;

  Book(this.name, this.ISBN, this.editionNumber, this.author);
}


class Customer extends Person {
  List<Book> bookList = [];

  Customer(String name, String email) 
  : super(name, email);


  void addBook(Book book) {
    bookList.add(book);
  }


  void printInformation() {
    print('Customer Name: $name');
    print('Customer Email: $email');
    print('Purchased Books:');

    for (var book in bookList) {
      print('--------------------');
      print('Book Name: ${book.name}');
      print('ISBN: ${book.ISBN}');
      print('Edition: ${book.editionNumber}');
      print(
          'Author: ${book.author.name} (ID: ${book.author.id}, Email: ${book.author.email})');
    }
  }
}
void main() {

  Author author1 = Author('Author One', 'author1@email.com');
  Author author2 = Author('Author Two', 'author2@email.com');
  Author author3 = Author('Author Three', 'author3@email.com');


  print('Author IDs:');
  print(author1.id);
  print(author2.id);
  print(author3.id);


  Book book1 = Book('Book One', 'ISBN-111', 1, author1);
  Book book2 = Book('Book Two', 'ISBN-222', 2, author2);
  Book book3 = Book('Book Three', 'ISBN-333', 3, author3);


  Customer customer1 =
      Customer('Customer One', 'customer1@email.com');


  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.addBook(book3);


  customer1.printInformation();
}