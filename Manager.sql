CREATE TABLE Manager (
    Employee_ID  INT NOT NULL,

    Inventory_ID INT NOT NULL,

    PRIMARY KEY (Employee_ID),

    CONSTRAINT fk_manager_employee
      FOREIGN KEY (Employee_ID)
      REFERENCES Employees(Employee_ID)
      ON UPDATE CASCADE
      ON DELETE CASCADE,

    CONSTRAINT fk_manager_inventory
      FOREIGN KEY (Inventory_ID)
      REFERENCES Inventory(Inventory_ID)
      ON UPDATE CASCADE
      ON DELETE CASCADE
) ENGINE = InnoDB;