CREATE TABLE Payments (
    Payment_ID      INT AUTO_INCREMENT,
    Payment_Method  VARCHAR(50)              NOT NULL,
    Payment_Amount  DECIMAL(10,2)            NOT NULL CHECK (Payment_Amount >= 0),
    Payment_Date    DATE                     NOT NULL,

    PRIMARY KEY (Payment_ID)
) ENGINE = InnoDB;