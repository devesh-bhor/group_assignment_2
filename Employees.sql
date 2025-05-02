CREATE TABLE Employees (
    Employee_ID  INT AUTO_INCREMENT,
    First_Name   VARCHAR(50) NOT NULL,
    Last_Name    VARCHAR(50) NOT NULL,
    Hire_Date    DATE        NOT NULL,
    Inventory_ID INT NULL,

    PRIMARY KEY (Employee_ID)
) ENGINE = InnoDB;

ALTER TABLE Employees
ADD CONSTRAINT fk_employees_inventory
    FOREIGN KEY (Inventory_ID)
    REFERENCES Inventory(Inventory_ID)
    ON UPDATE CASCADE
    ON DELETE SET NULL;
    