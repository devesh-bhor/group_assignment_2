CREATE TABLE Cashier (
    Employee_ID     INT  NOT NULL,

    PRIMARY KEY (Employee_ID),

    CONSTRAINT fk_cashier_employee
      FOREIGN KEY (Employee_ID)
      REFERENCES Employees(Employee_ID)
      ON UPDATE CASCADE
      ON DELETE CASCADE
) ENGINE = InnoDB;