CREATE DATABASE IF NOT EXISTS ip10_lab CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE ip10_lab;
CREATE TABLE IF NOT EXISTS students (
 id CHAR(36) NOT NULL PRIMARY KEY, first_name VARCHAR(100) NOT NULL, middle_name VARCHAR(100) NULL,
 last_name VARCHAR(100) NOT NULL, birthday DATE NOT NULL, sex ENUM('Male','Female') NOT NULL,
 email VARCHAR(255) NOT NULL, student_number VARCHAR(50) NULL, program VARCHAR(200) NULL,
 enrolment_date DATE NOT NULL, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO students (id,first_name,middle_name,last_name,birthday,sex,email,student_number,program,enrolment_date) VALUES
(UUID(),'Remus','Aimiel','Marasigan','2004-05-12','Male','remus@example.com','20230001','BS Information Technology','2026-09-01'),
(UUID(),'Joaquin','P.','Celis','2004-08-20','Male','joaquin@example.com','20230002','BS Information Technology','2026-09-05'),
(UUID(),'Amiel','S.','Santos','2005-01-15','Male','amiel@example.com','20230003','BS Information Technology','2026-09-10');
