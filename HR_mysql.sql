create database HR_Analysis;
use HR_Analysis;
CREATE TABLE employees (
    employee_id VARCHAR(20) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    state VARCHAR(50),
    city VARCHAR(50),
    education_level VARCHAR(50),
    birthdate DATE,
    hiredate DATE,
    termdate DATE NULL,
    department VARCHAR(50),
    job_title VARCHAR(100),
    salary DECIMAL(10,2),
    performance_rating VARCHAR(50)
);

TRUNCATE TABLE employees;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/HR_Workforce_Raw_Data.csv'
INTO TABLE employees
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    employee_id,
    first_name,
    last_name,
    gender,
    state,
    city,
    education_level,
    @birthdate,
    @hiredate,
    @termdate,
    department,
    job_title,
    salary,
    performance_rating
)
SET
    birthdate = STR_TO_DATE(@birthdate, '%d/%m/%Y'),
    hiredate  = STR_TO_DATE(@hiredate,  '%d/%m/%Y'),
    termdate  = IF(@termdate = '' OR @termdate IS NULL,
                   NULL,
                   STR_TO_DATE(@termdate, '%d/%m/%Y'));
select count(*) from employees;
SELECT birthdate, hiredate, termdate
FROM employees
LIMIT 5;


SELECT
    COUNT(*) AS total,
    SUM(termdate IS NULL) AS active,
    SUM(termdate IS NOT NULL) as ex
FROM employees;
