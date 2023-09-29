DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS teams;

CREATE TABLE users(
  -- id INT PRIMARY KEY AUTO_INCREMENT, --mysql
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(250) NOT NULL,
  last_name VARCHAR(250) NOT NULL,
  age INT NOT NULL,
  date_of_birth TIMESTAMP NOT NULL,
  email VARCHAR(200) UNIQUE
);

CREATE TABLE company(
  -- id INT PRIMARY KEY AUTO_INCREMENT, --mysql
  id SERIAL PRIMARY KEY,
  company_name VARCHAR(300) NOT NULL,
  company_address VARCHAR(300) NOT NULL,
  description VARCHAR(1000) NOT NULL
);


CREATE TABLE teams(
  id SERIAL PRIMARY KEY,
  team_name VARCHAR(300) NOT NULL,
  total_projects INT NOT NULL,
  total_members INT CHECK (total_members > 20) DEFAULT 30,
  company_id VARCHAR(100) NOT NULL);

