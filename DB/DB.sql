CREATE TABLE Account (
    acc_ID nvarchar(10) PRIMARY KEY,
    email nvarchar(50) NOT NULL,
    password nvarchar(50) NOT NULL,
    role nvarchar(20) NOT NULL
);

CREATE TABLE Customer (
    customer_ID nvarchar(10) PRIMARY KEY,
    customer_name nvarchar(50) NOT NULL,
    customer_phone nvarchar(15) NOT NULL,
    acc_ID nvarchar(10),
    FOREIGN KEY (acc_ID) REFERENCES Account(acc_ID)
);

CREATE TABLE Admin (
    admin_ID nvarchar(10) PRIMARY KEY,
    admin_name nvarchar(50) NOT NULL,
    admin_phone nvarchar(15) NOT NULL,
    acc_ID nvarchar(10),
    FOREIGN KEY (acc_ID) REFERENCES Account(acc_ID)
);

CREATE TABLE StadiumOwner (
    owner_ID nvarchar(10) PRIMARY KEY,
    owner_name nvarchar(50) NOT NULL,
    owner_phone nvarchar(15) NOT NULL,
    acc_ID nvarchar(10),
    FOREIGN KEY (acc_ID) REFERENCES Account(acc_ID)
);

CREATE TABLE Stadium (
    stadium_ID nvarchar(10) PRIMARY KEY,
    stadium_name nvarchar(50) NOT NULL,
    stadium_address nvarchar(50) NOT NULL,
    stadium_phone nvarchar(15) NOT NULL,
    opentime nvarchar(50) NOT NULL,
    stadium_image nvarchar(200),
    avg_ratingScore float,
    pricePerHour integer NOT NULL,
    QRCode nvarchar(200),
    owner_ID nvarchar(10),
    FOREIGN KEY (owner_ID) REFERENCES StadiumOwner(owner_ID)
);

CREATE TABLE Feedback (
    ratingScore integer NOT NULL,
    description nvarchar(500),
    customer_ID nvarchar(10),
    stadium_ID nvarchar(10),
    PRIMARY KEY (ratingScore),
    FOREIGN KEY (customer_ID) REFERENCES Customer(customer_ID),
    FOREIGN KEY (stadium_ID) REFERENCES Stadium(stadium_ID)
);

CREATE TABLE Court (
    court_ID nvarchar(10) PRIMARY KEY,
    number integer NOT NULL,
    stadium_ID nvarchar(10),
    FOREIGN KEY (stadium_ID) REFERENCES Stadium(stadium_ID)
);

CREATE TABLE Booking (
    booking_ID nvarchar(10) PRIMARY KEY,
    courtQuantity int NOT NULL,
    startTime float NOT NULL,
    endTime float NOT NULL,
    date date NOT NULL,
    total integer NOT NULL,
    bookingAccepted nvarchar(10) NOT NULL,
    customer_ID nvarchar(10),
    stadium_ID nvarchar(10),
    FOREIGN KEY (customer_ID) REFERENCES Customer(customer_ID),
    FOREIGN KEY (stadium_ID) REFERENCES Stadium(stadium_ID)
);

CREATE TABLE BookingDetail (
    bookingDetail_ID nvarchar(10) PRIMARY KEY,
    booking_ID nvarchar(10),
    court_ID nvarchar(10),
    FOREIGN KEY (booking_ID) REFERENCES Booking(booking_ID),
    FOREIGN KEY (court_ID) REFERENCES Court(court_ID)
);




INSERT INTO Account (acc_ID, email, password, role) 
VALUES ('ACC001', 'example1@email.com', 'password1', 'Admin'),
       ('ACC002', 'example2@email.com', 'password2', 'Customer'),
       ('ACC003', 'example3@email.com', 'password3', 'StadiumOwner');

INSERT INTO Customer (customer_ID, customer_name, customer_phone, acc_ID) 
VALUES ('CUST001', 'John Doe', '1234567890', 'ACC002');

INSERT INTO Admin (admin_ID, admin_name, admin_phone, acc_ID) 
VALUES ('ADMIN001', 'Admin Name', '9876543210', 'ACC001');

INSERT INTO StadiumOwner (owner_ID, owner_name, owner_phone, acc_ID) 
VALUES ('OWNER001', 'Owner Name', '8765432109', 'ACC003');

INSERT INTO Stadium (stadium_ID, stadium_name, stadium_address, stadium_phone, opentime, stadium_image, avg_ratingScore, pricePerHour, QRCode, owner_ID) 
VALUES ('STD001', 'Stadium A', '123 Main St.', '987654321', '08:00-22:00', 'image_url', 4.2, 100, 'QR_url', 'OWNER001');

INSERT INTO Feedback (ratingScore, description, customer_ID, stadium_ID) 
VALUES (4, 'Great experience!', 'CUST001', 'STD001'),
       (5, 'Excellent facilities', 'CUST002', 'STD001');

INSERT INTO Court (court_ID, number, stadium_ID) 
VALUES ('CRT001', 1, 'STD001'),
       ('CRT002', 2, 'STD001');

INSERT INTO Booking (booking_ID, courtQuantity, startTime, endTime, date, total, bookingAccepted, customer_ID, stadium_ID) 
VALUES ('BOOK001', 2, 10.00, 12.00, '2024-06-01', 200, 'true', 'CUST001', 'STD001');


INSERT INTO BookingDetail (bookingDetail_ID, booking_ID, court_ID) 
VALUES ('DET001', 'BOOK001', 'CRT001'),
       ('DET002', 'BOOK001', 'CRT002');

