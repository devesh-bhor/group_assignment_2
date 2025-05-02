CREATE TABLE Books (
    Book_ID           INT AUTO_INCREMENT,
    Title             VARCHAR(255) NOT NULL,
    Genre             VARCHAR(100),
    Publication_Year  YEAR,
    Price             DECIMAL(8,2) NOT NULL CHECK (Price >= 0),
    Stock_Quantity    INT          NOT NULL CHECK (Stock_Quantity >= 0),
    Publisher_Name    VARCHAR(255),
    Contact_Information VARCHAR(255),
    Inventory_ID      INT NULL,             

    PRIMARY KEY (Book_ID)
) ENGINE = InnoDB;

ALTER TABLE Books
ADD CONSTRAINT fk_books_inventory
    FOREIGN KEY (Inventory_ID)
    REFERENCES Inventory(Inventory_ID)
    ON UPDATE CASCADE
    ON DELETE SET NULL;
