DROP TABLE goodreads;

CREATE TABLE goodreads(
	bookID INTEGER,
	title VARCHAR(250),
	authors VARCHAR(1000),
	average_ranting DECIMAL(3,2),
	isbn VARCHAR(100),
	isbn13 	VARCHAR(100),
	language_code VARCHAR(25),
	num_pages INTEGER,
	ratings_count INTEGER,
	text_reviews_count INTEGER,
	publication_date DATE,
	publisher VARCHAR(100)	
);

COPY goodreads
FROM 'C:\Users\Public\books.csv'
WITH (FORMAT CSV, HEADER);

SELECT*
FROM goodreads;