CREATE TABLE Authors (
  author_id INT PRIMARY KEY,
  author_name VARCHAR(50) NOT NULL,
  author_country VARCHAR(50)
);

CREATE TABLE Books (
  book_id INT PRIMARY KEY,
  book_title VARCHAR(100) NOT NULL,
  book_author_id INT NOT NULL,
  FOREIGN KEY (book_author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Readers (
  reader_id INT PRIMARY KEY,
  reader_name VARCHAR(50) NOT NULL,
  reader_phone VARCHAR(20)
);

CREATE TABLE Borrowings (
  borrowing_id INT PRIMARY KEY,
  borrowing_book_id INT NOT NULL,
  FOREIGN KEY (borrowing_book_id) REFERENCES Books(book_id),
  borrowing_reader_id INT NOT NULL,
  FOREIGN KEY (borrowing_reader_id) REFERENCES Readers(reader_id),
  borrowing_date DATE NOT NULL,
  return_date DATE
);
