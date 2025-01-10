CREATE DATABASE airline_management;

USE airline_management;

CREATE TABLE Airlines (
    airline_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE Flights (
    flight_id INT AUTO_INCREMENT PRIMARY KEY,
    flight_number VARCHAR(10),
    destination VARCHAR(50),
    departure_time DATETIME,
    arrival_time DATETIME,
    status VARCHAR(20)
);

CREATE TABLE Passengers (
    passenger_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    contact_info VARCHAR(100),
    passport_number VARCHAR(20)
);

CREATE TABLE Bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    booking_date DATE,
    seat_number VARCHAR(5),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

CREATE TABLE Schedule (
    schedule_id INT AUTO_INCREMENT PRIMARY KEY,
    flight_id INT,
    day VARCHAR(20),
    time TIME,
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

SELECT * FROM Flights;

SELECT * FROM  Bookings;

SELECT * FROM  Passengers;
SELECT passenger_id FROM Passengers WHERE passport_number = '123456';

