CREATE TABLE Writes (
    Author_ID INT NOT NULL,
    Book_ID   INT NOT NULL,

    PRIMARY KEY (Author_ID, Book_ID),

    CONSTRAINT fk_writes_author
      FOREIGN KEY (Author_ID)
      REFERENCES Authors(Author_ID)
      ON UPDATE CASCADE
      ON DELETE CASCADE,

    CONSTRAINT fk_writes_book
      FOREIGN KEY (Book_ID)
      REFERENCES Books(Book_ID)
      ON UPDATE CASCADE
      ON DELETE CASCADE
) ENGINE = InnoDB;
