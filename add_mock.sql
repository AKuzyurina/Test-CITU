INSERT INTO Authors (author_id, author_name, author_country) VALUES
  (1, 'Ernest Hemingway', 'USA'),
  (2, 'Virginia Woolf', 'UK'),
  (3, 'Fyodor Dostoevsky', 'Russia'),
  (4, 'Jane Austen', 'UK'),
  (5, 'Gabriel Garcia Marquez', 'Colombia');

INSERT INTO Books (book_id, book_title, book_author_id) VALUES
  (1, 'The Old Man and the Sea', 1),
  (2, 'To the Lighthouse', 2),
  (3, 'Crime and Punishment', 3),
  (4, 'Pride and Prejudice', 4),
  (5, 'One Hundred Years of Solitude', 5),
  (6, 'A Farewell to Arms', 1),
  (7, 'Mrs. Dalloway', 2),
  (8, 'The Brothers Karamazov', 3),
  (9, 'Sense and Sensibility', 4),
  (10, 'Love in the Time of Cholera', 5);

INSERT INTO Readers (reader_id, reader_name, reader_phone) VALUES
  (1, 'John Smith', '555-1234'),
  (2, 'Jane Doe', '555-5678'),
  (3, 'Bob Johnson', '555-9012'),
  (4, 'Alice Brown', '555-3456'),
  (5, 'Tom Green', '555-7890');

INSERT INTO Borrowings (borrowing_id, borrowing_book_id, borrowing_reader_id, borrowing_date, return_date) VALUES
  (1, 1, 1, '2022-01-01', '2022-01-08'),
  (2, 2, 2, '2022-01-02', '2022-01-09'),
  (3, 3, 3, '2022-01-03', NULL),
  (4, 4, 4, '2022-01-04', '2022-01-11'),
  (5, 5, 5, '2022-01-05', NULL),
  (6, 1, 2, '2022-01-06', NULL),
  (7, 2, 3, '2022-01-07', NULL),
  (8, 3, 4, '2022-01-08', NULL),
  (9, 4, 5, '2022-01-09', NULL),
  (10, 5, 1, '2022-01-10', '2022-01-17');
