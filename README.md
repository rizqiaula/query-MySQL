# Query MySQL
#### This is a code repository for learning some advanced SQL queries using MySQL, the data used are [dummy_data](https://github.com/rizqiaula/query-MySQL/blob/main/dummy_data.sql) and [3_odds](https://github.com/rizqiaula/query-MySQL/blob/main/3_odds.sql).
----
## Setup
#### Copy the code inside the [dummy_data](https://github.com/rizqiaula/query-MySQL/blob/main/dummy_data.sql) and [3_odds](https://github.com/rizqiaula/query-MySQL/blob/main/3_odds.sql) file, paste it into MySQL Workbench, and run it.
#### Note:
- Use `dummy_data` database to answer numbers 1-3
- Use `3_odds` database to answer numbers 4-8

## Exercises

### 1. Show employee information (employee_id, employee_name, branch_name, total_sales) whose total_sales amount is more than Rp. 10.000.000. Sort by column total_sales from smallest to largest.

[solution](https://github.com/rizqiaula/query-MySQL/blob/main/solutions/1.sql)
| employee_id  | employee_name | branch_name | total_sales |
| -------- | -------- | -------- | -------- |
| 1005 | Rahmat Riyadi | Sumatera | 21800000 |
| 1002 | Fais Wahid | Sumatera | 28200000 |

### 2. Show information on the number of employees handled by each manager.
Note: show column `manager_id`, `branch_name`, `total_employee`

[solution](https://github.com/rizqiaula/query-MySQL/blob/main/solutions/2.sql)
| manager_id  | branch_name | total_employee |
| -------- | -------- | -------- |
| 1000 | Kantor Pusat | 4 |
| 1002 | Sumatera | 3 |
| 1006 | Sulawesi | 2 |

### 3. Show information on the highest sales successfully carried out by each branch.
Note: show column `branch_name`, `employee_name`, `max_sales`

[solution](https://github.com/rizqiaula/query-MySQL/blob/main/solutions/3.sql)
| branch_name | employee_name | max_sales |
| -------- | -------- | -------- |
| Sumatera | Fais Wahid | 26700000 |
| Sulawesi | Abdul Muin | 2600000 |

### 4. Make a query to get information about the names of employees who handle more than 7 customers
Note:
- Show column : `employeeNumber`, `employeeName`
- employeeName : combination of `first_nnme` and `last_name`

[solution](https://github.com/rizqiaula/query-MySQL/blob/main/solutions/4.sql)
| employeeNumber | employeeName |
| -------- | -------- |
| 1323 | George Vanauf |
| 1401 | Pamela Castillo |
| 1501 | Larry Bott |
| 1504 | Barry Jones |

### 5. Using CTE(Common Table Expression). Make a query to get the number of employees from every country other than America.
Note: show column `country`, `numberOfEmployee`

[solution](https://github.com/rizqiaula/query-MySQL/blob/main/solutions/5.sql)
| country | numberOfEmployee |
| -------- | -------- |
| France | 5 |
| Japan | 2 |
| Australia | 4 |
| UK | 2 |

### 6. Make a statement to get the customer's continental origin based on the country information. For example, if the name of the country is USA, then the continent is America.
Note: show column `customerName`, `country`, `continent`

[solution](https://github.com/rizqiaula/query-MySQL/blob/main/solutions/6.sql)
| customerName | country | continent |
| -------- | -------- | -------- |
| Atelier graphique | France | Europe |
| Signal Gift Stores | USA | America |
| Australian Collectors, Co. | Australia | Australia |
| ... | ... | ... |
| Double Decker Gift Stores, Ltd | UK | Europe |
| Diecast Collectables | USA | America |
| Kelly's Gift Shop | New Zealand | Oceania |

### 7. Make a statement to categorize the average price of goods (priceEach). If the price of the item is above 100, it is included in the high price category, otherwise it is in the low price category
Note : show column `productCode`, `avgPrice`, `category`

[solution](https://github.com/rizqiaula/query-MySQL/blob/main/solutions/7.sql)
| productCode | avgPrice | category |
| -------- | -------- | -------- |
| S10_1678 | 85.174286 | Low price |
| S10_1949 | 197.309286 | High price |
| S10_2016 | 110.018929 | High price |
| ... | ... | ... |
| S700_4002 | 65.967857 | Low price |
| S72_1253 | 44.427143 | Low price |
| S72_3212 | 49.402593 | Low price |

### 8. Create a stored function that can categorize customers based on their credit limit. If the credit limit is more than 50000 then it is included in the `PLATINUM` category, if it is in the range of 10000 to 50000 then it is in the `GOLD` category, and below 10000, it is in the `SILVER` category.
Using the stored function that has been created, show segmentation information from customers in the customers table.
Note : show column `customerName`, `creditLimit`, `customerSegmen`

[solution](https://github.com/rizqiaula/query-MySQL/blob/main/solutions/8.sql)
| customerName | creditLimit | customerSegmen |
| -------- | -------- | -------- |
| Atelier graphique | 21000.00 | GOLD |
| Signal Gift Stores | 71800.00 | PLATINUM |
| Australian Collectors, Co. | 117300.00 | PLATINUM |
| ... | ... | ... |
| Double Decker Gift Stores, Ltd | 43300.00 | GOLD |
| Diecast Collectables | 85100.00 | PLATINUM |
| Kelly's Gift Shop | 110000.00 | PLATINUM |
