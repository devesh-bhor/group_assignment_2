CREATE TABLE Assists (
    Employee_ID INT NOT NULL,
    Customer_ID INT NOT NULL,

    PRIMARY KEY (Employee_ID, Customer_ID),

    CONSTRAINT fk_assists_employee
      FOREIGN KEY (Employee_ID)
      REFERENCES Employees(Employee_ID)
      ON UPDATE CASCADE
      ON DELETE CASCADE,

    CONSTRAINT fk_assists_customer
      FOREIGN KEY (Customer_ID)
      REFERENCES Customers(Customer_ID)
      ON UPDATE CASCADE
      ON DELETE CASCADE
) ENGINE = InnoDB;