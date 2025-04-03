CREATE DATABASE HMS; 
USE HMS; 

CREATE TABLE Patient( 
    email VARCHAR(50) PRIMARY KEY, 
    password VARCHAR(30) NOT NULL, 
    name VARCHAR(50) NOT NULL, 
    address VARCHAR(60) NOT NULL, 
    gender VARCHAR(20) NOT NULL 
); 

CREATE TABLE MedicalHistory( 
    id INT PRIMARY KEY AUTO_INCREMENT, 
    patient_email VARCHAR(50) NOT NULL, 
    date DATE NOT NULL, 
    conditions VARCHAR(100) NOT NULL, 
    surgeries VARCHAR(100) NOT NULL, 
    medication VARCHAR(100) NOT NULL, 
    FOREIGN KEY (patient_email) REFERENCES Patient(email) ON DELETE CASCADE 
); 

CREATE TABLE Doctor( 
    email VARCHAR(50) PRIMARY KEY, 
    gender VARCHAR(20) NOT NULL, 
    password VARCHAR(30) NOT NULL, 
    name VARCHAR(50) NOT NULL 
); 

CREATE TABLE Appointment( 
    id INT PRIMARY KEY AUTO_INCREMENT, 
    patient_email VARCHAR(50) NOT NULL, 
    doctor_email VARCHAR(50) NOT NULL, 
    date DATE NOT NULL, 
    starttime TIME NOT NULL, 
    endtime TIME NOT NULL, 
    status VARCHAR(15) NOT NULL, 
    FOREIGN KEY (patient_email) REFERENCES Patient(email) ON DELETE CASCADE, 
    FOREIGN KEY (doctor_email) REFERENCES Doctor(email) ON DELETE CASCADE 
); 
