-- Create the freelancemanagement2 database
CREATE DATABASE freelancemanagement2;

-- Switch to the freelancemanagement2 database
USE freelancemanagement2;

-- Create the freelancer table
CREATE TABLE freelancer (
    freelancers_id INT NOT NULL PRIMARY KEY,
    f_name VARCHAR(40),
    contact_info BIGINT(12),
    skills VARCHAR(40),
    rating INT
);

-- Describe the freelancer table
DESC freelancer;

-- Insert data into the freelancer table
INSERT INTO freelancer VALUES
(1, 'akash', 8217027365, 'java', 3),
(2, 'adarsh', 9845673465, 'php', 2),
(3, 'abhishake', 6762825382, 'javascript', 3),
(4, 'bhuvan', 9845689564, 'aws', 1),
(5, 'vaibhav', 7895672518, 'linux', 4),
(6, 'chaitanya', 9845230184, 'python', 5),
(7, 'mukesh', 6823625370, 'fullstack', 2),
(8, 'tejas', 7892531456, 'css', 1),
(9, 'varadha', 6906273826, 'automation_testing', 3);

-- Select data from the freelancer table
SELECT * FROM freelancer;

-- Create the clients table
CREATE TABLE clients (
    user_id INT,
    company_name VARCHAR(40),
    contact_person VARCHAR(40)
);

-- Insert data into the clients table
INSERT INTO clients VALUES
(111, 'Corp', 'John Doe'),
(222, 'assure', 'mahindra'),
(333, 'mustang', 'forguson'),
(444, 'nestle', 'messi'),
(555, 'itc', 'ronaldo'),
(666, 'cruser', 'justin'),
(777, 'roaver', 'barber'),
(888, 'bidden', 'angle');

-- Select data from the clients table
SELECT * FROM clients;

-- Create the newproject table
CREATE TABLE newproject (
    client_id INT PRIMARY KEY NOT NULL,
    title VARCHAR(40),
    budget INT,
    deadline DATE,
    freelancers_id INT
);

-- Insert data into the newproject table
INSERT INTO newproject VALUES
(111, 'Web Development Project', 5000, '2024-03-01', 1),
(222, 'frontend development project', 7000, '2024-03-05', 2),
(333, 'backend Development Project', 3000, '2024-04-03', 3),
(444, 'fullstack Development Project', 6000, '2024-03-03', 4),
(555, 'salesforce Development Project', 10000, '2024-03-09', 6),
(666, 'sql Development Project', 11000, '2024-04-15', 7),
(777, 'excel Development Project', 8000, '2024-03-20', 5),
(888, 'financial Development Project', 4000, '2024-03-03', 6);
select* from newproject;

-- Create the transactions table
CREATE TABLE transactions (
    project_id INT PRIMARY KEY,
    freelancer_id INT,
    client_id INT,
    amount INT,
    payment_status VARCHAR(40)
);

-- Insert data into the transactions table
INSERT INTO transactions VALUES
(101, 1, 111, 5000, 'Pending'),
(102, 2, 222, 7000, 'Pending'),
(103, 3, 333, 3000, 'completed'),
(104, 4, 444, 6000, 'Pending'),
(105, 5, 555, 10000, 'completed'),
(106, 6, 666, 11000, 'completed'),
(107, 7, 777, 8000, 'Pending'),
(108, 8, 888, 4000, 'Pending');

-- Select data from the transactions table
SELECT * FROM transactions;

-- Create the location table
CREATE TABLE location (
    country VARCHAR(40),
    state VARCHAR(40),
    project_id INT,
    freelancers_id INT
);

-- Insert data into the location table
INSERT INTO location VALUES
('UAE', 'oman', 106, 2),
('USA', 'NYC', 105, 3),
('INDIA', 'GUJARAT', 104, 5),
('CANADA', 'ALBERTA', 102, 1),
('AUSTRALIA', 'QUEENSLAND', 103, 4),
('NEWZELAND', 'WELLINGTON', 101, 7),
('INDIA', 'MAHARASHTRA', 107, 6);
