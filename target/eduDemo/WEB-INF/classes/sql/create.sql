CREATE TABLE class
(
  id         INT AUTO_INCREMENT
    PRIMARY KEY,
  class_name VARCHAR(30)  NULL,
  spec_name  VARCHAR(100) NULL
);
CREATE TABLE course
(
  id INT AUTO_INCREMENT PRIMARY KEY,
  course_name VARCHAR(50)  NULL,
  spec_name   VARCHAR(100) NULL,
  type        VARCHAR(20)  NULL,
  credits     FLOAT        NULL
);
CREATE TABLE course_arrange
(
  id           INT AUTO_INCREMENT
    PRIMARY KEY,
  course_name  VARCHAR(50) NULL,
  teacher_name VARCHAR(50) NULL,
  limitCount   INT         NULL
);
CREATE TABLE department
(
  id              INT AUTO_INCREMENT
    PRIMARY KEY,
  department_name VARCHAR(100) NULL
);
CREATE TABLE role
(
  id          INT AUTO_INCREMENT
    PRIMARY KEY,
  role_name   VARCHAR(100)           NULL,
  description VARCHAR(100)           NULL,
  available   TINYINT(1) DEFAULT '0' NULL
);
CREATE TABLE speciality
(
  id              INT AUTO_INCREMENT
    PRIMARY KEY,
  speciality_name VARCHAR(100) NULL,
  dept_name       VARCHAR(100) NULL
);
CREATE TABLE student
(
  id           INT AUTO_INCREMENT
    PRIMARY KEY,
  student_id   VARCHAR(20) NULL,
  student_name VARCHAR(20) NULL,
  gender       VARCHAR(4)  NULL,
  grade        VARCHAR(10) NULL,
  department   VARCHAR(20) NULL,
  class        VARCHAR(10) NULL,
  originbase   VARCHAR(20) NULL
);
CREATE TABLE teacher
(
  id           INT AUTO_INCREMENT
    PRIMARY KEY,
  teacher_name VARCHAR(50) NULL
);
CREATE TABLE user
(
  id        INT AUTO_INCREMENT
    PRIMARY KEY,
  user_name VARCHAR(30)            NULL,
  password  VARCHAR(50)            NULL,
  salt      VARCHAR(100)           NULL,
  role_ids  VARCHAR(100)           NULL,
  locked    TINYINT(1) DEFAULT '0' NULL
);