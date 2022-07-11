CREATE SCHEMA dummy_data;

use dummy_data;

CREATE TABLE employee(
  employee_id INT,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  birth_date DATE,
  gender VARCHAR(1),
  salary NUMERIC(10, 2),
  spv_id INT,
  branch_id INT,
  constraint employee primary key(employee_id)
);

CREATE TABLE branch (
  branch_id INT PRIMARY KEY,
  branch_name VARCHAR(40),
  mgr_id INT,
  start_date DATE,
  FOREIGN KEY(mgr_id) REFERENCES employee(employee_id) ON DELETE SET NULL
);

CREATE TABLE customer(
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(40),
  branch_id INT,
  FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL
);

CREATE TABLE customer_pr(
  employee_id INT,
  customer_id INT,
  total_sales INT,
  PRIMARY KEY(employee_id, customer_id),
  FOREIGN KEY(employee_id) REFERENCES employee(employee_id) ON DELETE CASCADE,
  FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

CREATE TABLE branch_supplier(
  branch_id INT,
  supplier_name VARCHAR(40),
  supply_type VARCHAR(40),
  PRIMARY KEY(branch_id, supplier_name),
  FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);


-- -----------------------------------------------------------------------------

-- Head Office
INSERT INTO employee VALUES(1000, 'Asraf', 'Rumae', '1967-11-17', 'L', 25000000, NULL, NULL);

INSERT INTO branch VALUES(1, 'Kantor Pusat', 1000, '2006-02-09');

INSERT INTO employee VALUES(1001, 'Andi', 'Zulkifli', '1961-05-11', 'L', 11000000, 1000, 1);
INSERT INTO employee VALUES(1009, 'Fitriani', NULL, '1968-05-11', 'P', 9000000, 1000, 1);

-- Sumatera
INSERT INTO employee VALUES(1002, 'Fais', 'Wahid', '1964-03-15', 'L', 7500000, 1000, NULL);

INSERT INTO branch VALUES(2, 'Sumatera', 1002, '1992-04-06');

UPDATE employee
SET branch_id = 2
WHERE employee_id = 1002;

INSERT INTO employee VALUES(1003, 'Fawziah', 'Maswah', '1971-06-25', 'P', 6300000, 1002, 2);
INSERT INTO employee VALUES(1004, 'Dessy', 'Putri', '1980-02-05', 'P', 5500000, 1002, 2);
INSERT INTO employee VALUES(1005, 'Rahmat', 'Riyadi', '1958-02-19', 'L', 6900000, 1002, 2);

-- Sulawesi
INSERT INTO employee VALUES(1006, 'Arif', 'Nasir', '1969-09-05', 'L', 7800000, 1000, NULL);

INSERT INTO branch VALUES(3, 'Sulawesi', 1006, '1998-02-13');

UPDATE employee
SET branch_id = 3
WHERE employee_id = 1006;

INSERT INTO employee VALUES(1007, 'Abdul', 'Muin', '1973-07-22', 'L', 6500000, 1006, 3);
INSERT INTO employee VALUES(1008, 'Rizky', 'Hidayat', '1978-10-01', 'L', 7100000, 1006, 3);


-- BRANCH SUPPLIER
INSERT INTO branch_supplier VALUES(2, 'Mufida', 'Kertas');
INSERT INTO branch_supplier VALUES(2, 'Az-Zahra', 'Alat Tulis');
INSERT INTO branch_supplier VALUES(3, 'Agung Mart', 'Kertas');
INSERT INTO branch_supplier VALUES(2, 'Makro', 'Custom Forms');
INSERT INTO branch_supplier VALUES(3, 'Sama Jaya', 'Alat Tulis');
INSERT INTO branch_supplier VALUES(3, 'Toko Ira', 'Kertas');
INSERT INTO branch_supplier VALUES(3, 'Karsa Utama', 'Custom Forms');

-- CUSTOMER
INSERT INTO customer VALUES(400, 'SMK Bina Mandiri', 2);
INSERT INTO customer VALUES(401, 'Litha & Co', 2);
INSERT INTO customer VALUES(402, 'Garuda Mas', 3);
INSERT INTO customer VALUES(403, 'Polahi Adventure', 3);
INSERT INTO customer VALUES(404, 'Santika', 2);
INSERT INTO customer VALUES(405, 'Salem Jaya', 3);
INSERT INTO customer VALUES(406, 'Garuda Mas', 2);

-- WORKS_WITH
INSERT INTO customer_pr VALUES(1005, 400, 5500000);
INSERT INTO customer_pr VALUES(1002, 401, 26700000);
INSERT INTO customer_pr VALUES(1008, 402, 2250000);
INSERT INTO customer_pr VALUES(1007, 403, 500000);
INSERT INTO customer_pr VALUES(1008, 403, 1200000);
INSERT INTO customer_pr VALUES(1005, 404, 3300000);
INSERT INTO customer_pr VALUES(1007, 405, 2600000);
INSERT INTO customer_pr VALUES(1002, 406, 1500000);
INSERT INTO customer_pr VALUES(1005, 406, 13000000);

SHOW databases;

ALTER TABLE employee
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;

ALTER TABLE employee
ADD FOREIGN KEY(spv_id)
REFERENCES employee(employee_id)
ON DELETE SET NULL;