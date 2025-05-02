CREATE TABLE Authors (
    Author_ID     INT AUTO_INCREMENT,
    First_Name    VARCHAR(50)  NOT NULL,
    Last_Name     VARCHAR(50)  NOT NULL,
    Date_of_Birth DATE,
    Biography     TEXT,

    PRIMARY KEY (Author_ID)
) ENGINE = InnoDB;

