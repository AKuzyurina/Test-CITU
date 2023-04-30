import psycopg2
from psycopg2 import sql

# Подключение к базе данных
conn = psycopg2.connect(
    host="localhost",
    database="library",
    user="postgres",
    password="password"
)

# Получение информации о книгах, которые сейчас на руках у каждого читателя
with conn.cursor() as cur:
    cur.execute(sql.SQL("""
        SELECT 
            r.reader_name, 
            COUNT(*) AS books_on_hand 
        FROM 
            readers r 
            JOIN borrowings b ON r.reader_id = b.borrowing_reader_id 
        WHERE 
            b.return_date IS NULL 
        GROUP BY 
            r.reader_name;
    """))
    rows = cur.fetchall()

# Вывод информации в консоль
for row in rows:
    print(f'{row[0]} | {row[1]}')

# Отключение от базы данных
conn.close()

# Получение самого предпочитаемого жанра у каждого читателя
with conn.cursor() as cur:
    cur.execute(sql.SQL("""
        SELECT 
            r.reader_name, 
            b.book_genre, 
            COUNT(*) AS num_borrowings 
        FROM 
            readers r 
            JOIN borrowings br ON r.reader_id = br.borrowing_reader_id 
            JOIN books b ON br.borrowing_book_id = b.book_id 
        WHERE 
            br.return_date IS NOT NULL 
        GROUP BY 
            r.reader_name, 
            b.book_genre 
        ORDER BY 
            r.reader_name, 
            num_borrowings DESC;
    """))
    rows = cur.fetchall()

# Вывод информации в консоль
for name, genre, count in rows:
    print(f'{name} | {genre} | {count}')

# Отключение от базы данных
conn.close()
