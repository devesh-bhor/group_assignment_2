CREATE TABLE Orders (
    Order_ID        INT AUTO_INCREMENT,

    Payment_Record  TEXT,                             
    Payment_Status  VARCHAR(50),
    Order_Date      DATE NOT NULL,
    Shipping_Date   DATE,
    Shipping_Address VARCHAR(255),

    Employee_ID     INT NULL,
    Customer_ID     INT NOT NULL,
    Payment_ID      INT NULL,

    PRIMARY KEY (Order_ID),

    CONSTRAINT fk_orders_employee
      FOREIGN KEY (Employee_ID)
      REFERENCES Employees(Employee_ID)
      ON UPDATE CASCADE
      ON DELETE SET NULL,

    CONSTRAINT fk_orders_customer
      FOREIGN KEY (Customer_ID)
      REFERENCES Customers(Customer_ID)
      ON UPDATE CASCADE
      ON DELETE CASCADE,

    CONSTRAINT fk_orders_payment
      FOREIGN KEY (Payment_ID)
      REFERENCES Payments(Payment_ID)
      ON UPDATE CASCADE
      ON DELETE SET NULL
) ENGINE = InnoDB;