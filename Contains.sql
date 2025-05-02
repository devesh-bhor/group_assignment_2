CREATE TABLE Contains (
    Book_ID   INT NOT NULL,
    Order_ID  INT NOT NULL,
    Price     DECIMAL(10,2) NOT NULL CHECK (Price >= 0),
    Quantity  INT           NOT NULL CHECK (Quantity > 0),

    PRIMARY KEY (Book_ID, Order_ID),

    CONSTRAINT fk_contains_book
      FOREIGN KEY (Book_ID)
      REFERENCES Books(Book_ID)
      ON UPDATE CASCADE
      ON DELETE CASCADE,

    CONSTRAINT fk_contains_order
      FOREIGN KEY (Order_ID)
      REFERENCES Orders(Order_ID)
      ON UPDATE CASCADE
      ON DELETE CASCADE
) ENGINE = InnoDB;
