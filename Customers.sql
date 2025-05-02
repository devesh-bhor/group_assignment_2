DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    Customer_ID    INT AUTO_INCREMENT,
    First_Name     VARCHAR(50)  NOT NULL,
    Last_Name      VARCHAR(50)  NOT NULL,
    Email_Address  VARCHAR(100) NOT NULL UNIQUE,
    Phone          VARCHAR(25),
    State          VARCHAR(40),
    City           VARCHAR(60),
    Street         VARCHAR(120),
    Zip_Code       VARCHAR(15),

    PRIMARY KEY (Customer_ID)
) ENGINE = InnoDB;