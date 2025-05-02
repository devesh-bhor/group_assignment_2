CREATE TABLE Inventory (
    Inventory_ID       INT AUTO_INCREMENT,
    Inventory_Quantity INT  NOT NULL CHECK (Inventory_Quantity >= 0),
    Restock_Threshold  INT  NOT NULL CHECK (Restock_Threshold  >= 0),

    PRIMARY KEY (Inventory_ID)
) ENGINE = InnoDB;

