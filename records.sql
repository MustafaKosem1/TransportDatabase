-- Insert 10 values into airport table
INSERT INTO airport (code, name, city, country) VALUES
    ('IST', 'Istanbul Airport', 'Istanbul', 'Turkey'),
    ('ESB', 'Esenboğa Airport', 'Ankara', 'Turkey'),
    ('SAW', 'Sabiha Gökçen International Airport', 'Istanbul', 'Turkey'),
    ('ADB', 'Adnan Menderes Airport', 'Izmir', 'Turkey'),
    ('AYT', 'Antalya Airport', 'Antalya', 'Turkey'),
    ('JFK', 'John F. Kennedy International Airport', 'New York', 'USA'),
    ('LHR', 'Heathrow Airport', 'London', 'UK'),
    ('DXB', 'Dubai International Airport', 'Dubai', 'UAE'),
    ('FRA', 'Frankfurt Airport', 'Frankfurt', 'Germany'),
    ('SIN', 'Singapore Changi Airport', 'Singapore', 'Singapore');

-- Insert 10 values into airport table
INSERT INTO airplane (airplane_id, type, total_no_of_seats) VALUES
    ('A12345', 'Boeing 737', 150),
    ('B67890', 'Airbus A320', 120),
    ('C54321', 'Boeing 777', 200),
    ('D98765', 'Embraer E190', 100),
    ('E45678', 'Airbus A380', 500),
    ('F23456', 'Bombardier CRJ900', 90),
    ('G78901', 'Boeing 747', 400),
    ('H56789', 'Airbus A330', 250),
    ('I12345', 'Boeing 737', 4),
    ('J67890', 'Boeing 747', 92);

-- Insert 20 values into flight table
INSERT INTO flight (departure_airport, arrival_airport, dep_time, arr_time, airplane_id, date, airline, fare)
VALUES
    ('IST', 'JFK', '2024-01-01 12:00:00+03', '2024-01-01 15:00:00-05', 'A12345', '2024-01-01', 'Turkish Airlines', 500.00),
    ('JFK', 'IST', '2024-01-02 18:00:00-05', '2024-01-03 09:00:00+03', 'B67890', '2024-01-02', 'Delta Airlines', 550.00),
    ('ESB', 'LHR', '2024-01-05 16:30:00+03', '2024-01-05 19:45:00+00', 'C54321', '2024-01-05', 'British Airways', 600.00),
    ('SIN', 'DXB', '2024-01-10 10:00:00+08', '2024-01-10 13:15:00+04', 'D98765', '2024-01-10', 'Singapore Airlines', 450.00),
    ('AYT', 'LHR', '2024-01-15 20:30:00+03', '2024-01-15 23:45:00+00', 'E45678', '2024-01-15', 'British Airways', 700.00),
    ('FRA', 'IST', '2024-01-20 08:15:00+01', '2024-01-20 11:30:00+03', 'F23456', '2024-01-20', 'Lufthansa', 480.00),
    ('DXB', 'IST', '2024-01-03 14:30:00+04', '2024-01-03 17:45:00+03', 'G78901', '2024-01-03', 'Emirates', 550.00),
    ('ADB', 'LHR', '2024-01-08 10:00:00+03', '2024-01-08 13:15:00+00', 'H56789', '2024-01-08', 'Turkish Airlines', 620.00),
    ('IST', 'SIN', '2024-01-12 18:45:00+03', '2024-01-13 09:00:00+08', 'I12345', '2024-01-12', 'Singapore Airlines', 800.00),
    ('LHR', 'FRA', '2024-01-18 13:30:00+00', '2024-01-18 16:45:00+01', 'J67890', '2024-01-18', 'Lufthansa', 350.00),
    ('IST', 'DXB', '2024-01-22 06:00:00+03', '2024-01-22 09:15:00+04', 'A12345', '2024-01-22', 'Emirates', 600.00),
    ('JFK', 'AYT', '2024-01-07 20:15:00-05', '2024-01-08 12:30:00+03', 'B67890', '2024-01-07', 'Delta Airlines', 700.00),
    ('FRA', 'SIN', '2024-01-11 14:45:00+01', '2024-01-12 06:00:00+08', 'C54321', '2024-01-11', 'Lufthansa', 900.00),
    ('IST', 'ADB', '2024-01-16 08:30:00+03', '2024-01-16 11:45:00+03', 'D98765', '2024-01-16', 'Turkish Airlines', 400.00),
    ('LHR', 'DXB', '2024-01-21 12:00:00+00', '2024-01-22 00:15:00+04', 'E45678', '2024-01-21', 'Emirates', 750.00),
    ('SIN', 'IST', '2024-01-04 03:30:00+08', '2024-01-04 14:45:00+03', 'F23456', '2024-01-04', 'Singapore Airlines', 650.00),
    ('FRA', 'AYT', '2024-01-09 18:15:00+01', '2024-01-09 21:30:00+03', 'G78901', '2024-01-09', 'Lufthansa', 550.00),
    ('DXB', 'JFK', '2024-01-14 14:00:00+04', '2024-01-14 17:15:00-05', 'H56789', '2024-01-14', 'Emirates', 680.00),
    ('IST', 'LHR', '2024-01-19 08:30:00+03', '2024-01-19 11:45:00+00', 'I12345', '2024-01-19', 'British Airways', 520.00),
    ('LHR', 'SIN', '2024-01-20 14:00:00+00', '2024-01-21 06:30:00+08', 'J67890', '2024-01-20', 'Singapore Airlines', 800.00);


---------------FERRY---------------
-- Insert values into dock table for İDO docks
INSERT INTO dock (name, city)
VALUES
    ('Yenikapı', 'İstanbul'),
    ('Bakırköy', 'İstanbul'),
    ('Bostancı', 'İstanbul'),
    ('Büyükada', 'İstanbul'),
    ('Burgazada', 'İstanbul'),
    ('Kumla', 'Bursa'),
    ('Avşa Adası', 'Balıkesir'),
    ('Esenköy', 'Yalova'),
    ('Eskihisar', 'Kocaeli'),
    ('Armutlu', 'Yalova');

-- Insert values into ferry table for İDO ferries
INSERT INTO ferry (name, type, total_no_of_seats, vehicle_capacity)
VALUES
    ('Adnan Menderes', 'Araba ferisi', 300, 50),
    ('Burak Reis-3', 'Yüksek hızlı hafif yolcu feribotu', 200, 30),
    ('Sadabat', 'Yüksek hızlı hafif yolcu gemisi', 250, 40),
    ('Barbaros Hayrettin Paşa', 'Hafif yolcu feribotu', 350, 60),
    ('Hezarfen Çelebi', 'Hafif yolcu feribotu', 180, 25),
    ('Kanuni Sultan Süleyman', 'Yüksek hızlı hafif yolcu gemisi', 220, 35),
    ('Sahilbent', 'Araba ferisi', 320, 55),
    ('Sultanahmet', 'Hafif yolcu feribotu', 200, 30),
    ('Sarıca Bey', 'Yüksek hızlı hafif yolcu feribotu', 280, 45),
    ('Temel Reis-2', 'Araba ferisi', 240, 40);

-- Insert values into ferry_trip table for İDO ferry trips with realistic times and durations
INSERT INTO ferry_trip (departure_dock, arrival_dock, dep_time, arr_time, ferry_name, date, company, fare, available_vehicle_capacity)
VALUES
    ('Yenikapı', 'Bakırköy', '2024-01-01 08:30:00', '2024-01-01 09:30:00', 'Adnan Menderes', '2024-01-01', 'İDO', 10.0, 40),
    ('Bakırköy', 'Bostancı', '2024-01-02 09:45:00', '2024-01-02 11:00:00', 'Burak Reis-3', '2024-01-02', 'İDO', 12.0, 20),
    ('Bostancı', 'Büyükada', '2024-01-03 11:15:00', '2024-01-03 12:10:00', 'Sadabat', '2024-01-03', 'İDO', 15.0, 30),
    ('Büyükada', 'Burgazada', '2024-01-04 12:45:00', '2024-01-04 14:30:00', 'Barbaros Hayrettin Paşa', '2024-01-04', 'İDO', 13.0, 50),
    ('Burgazada', 'Kumla', '2024-01-05 14:15:00', '2024-01-05 15:15:00', 'Hezarfen Çelebi', '2024-01-05', 'İDO', 14.0, 25),
    ('Kumla', 'Avşa Adası', '2024-01-06 15:45:00', '2024-01-06 16:20:00', 'Kanuni Sultan Süleyman', '2024-01-06', 'İDO', 11.0, 35),
    ('Avşa Adası', 'Esenköy', '2024-01-07 17:15:00', '2024-01-07 18:30:00', 'Sahilbent', '2024-01-07', 'İDO', 13.0, 45),
    ('Esenköy', 'Eskihisar', '2024-01-08 18:45:00', '2024-01-08 19:45:00', 'Sultanahmet', '2024-01-08', 'İDO', 12.0, 20),
    ('Eskihisar', 'Armutlu', '2024-01-09 20:15:00', '2024-01-09 21:30:00', 'Sarıca Bey', '2024-01-09', 'İDO', 15.0, 30),
    ('Armutlu', 'Yenikapı', '2024-01-10 21:45:00', '2024-01-10 22:50:00', 'Temel Reis-2', '2024-01-10', 'İDO', 14.0, 25),
    ('Yenikapı', 'Bostancı', '2024-01-11 09:15:00', '2024-01-11 09:55:00', 'Adnan Menderes', '2024-01-11', 'İDO', 11.0, 35),
    ('Bakırköy', 'Esenköy', '2024-01-12 10:45:00', '2024-01-12 12:00:00', 'Burak Reis-3', '2024-01-12', 'İDO', 13.0, 40),
    ('Bostancı', 'Büyükada', '2024-01-13 12:15:00', '2024-01-13 13:10:00', 'Sadabat', '2024-01-13', 'İDO', 10.0, 20),
    ('Büyükada', 'Burgazada', '2024-01-14 13:45:00', '2024-01-14 14:20:00', 'Barbaros Hayrettin Paşa', '2024-01-14', 'İDO', 12.0, 30),
    ('Burgazada', 'Kumla', '2024-01-15 15:15:00', '2024-01-15 16:10:00', 'Hezarfen Çelebi', '2024-01-15', 'İDO', 15.0, 50),
    ('Kumla', 'Avşa Adası', '2024-01-16 16:45:00', '2024-01-16 18:00:00', 'Kanuni Sultan Süleyman', '2024-01-16', 'İDO', 13.0, 25),
    ('Avşa Adası', 'Esenköy', '2024-01-17 18:15:00', '2024-01-17 19:00:00', 'Sahilbent', '2024-01-17', 'İDO', 14.0, 35),
    ('Esenköy', 'Eskihisar', '2024-01-18 19:45:00', '2024-01-18 21:20:00', 'Sultanahmet', '2024-01-18', 'İDO', 12.0, 45),
    ('Eskihisar', 'Armutlu', '2024-01-19 21:15:00', '2024-01-19 22:00:00', 'Sarıca Bey', '2024-01-19', 'İDO', 14.0, 40),
    ('Armutlu', 'Yenikapı', '2024-01-20 22:30:00', '2024-01-20 23:55:00', 'Temel Reis-2', '2024-01-20', 'İDO', 13.0, 15);


-- ------------------------------TRAIN------------------------------
-- train stations
INSERT INTO train_station (name, city) VALUES
('Ankara', 'Ankara'),
('Istanbul Haydarpasa', 'Istanbul'),
('Eskisehir', 'Eskisehir'),
('Konya', 'Konya'),
('Izmir Basmane', 'Izmir'),
('Adana', 'Adana'),
('Bursa', 'Bursa'),
('Kayseri', 'Kayseri'),
('Sivas', 'Sivas'),
('Erzurum', 'Erzurum'),
('Gaziantep', 'Gaziantep'),
('Denizli', 'Denizli'),
('Trabzon', 'Trabzon'),
('Antalya', 'Antalya'),
('Mersin', 'Mersin'),
('Diyarbakir', 'Diyarbakir'),
('Malatya', 'Malatya'),
('Van', 'Van'),
('Batman', 'Batman'),
('Kars', 'Kars');

-- trains
INSERT INTO train (train_id, type, total_no_of_seats) VALUES
    ('T001', 'Yüksek Hızlı Tren', 20),
    ('T002', 'TCDD Tren', 20),
    ('T003', 'Yüksek Hızlı Tren', 20),
    ('T004', 'TCDD Tren', 20),
    ('T005', 'Yüksek Hızlı Tren', 20),
    ('T006', 'TCDD Tren', 20);


-- add cars
INSERT INTO car(train_id, car_type, no_of_seats)
VALUES
    ('T001', 'yemek', 0),
    ('T001', 'yatak', 5),
    ('T001', 'business', 5),
    ('T001', 'economy', 10),
    ('T002', 'yemek', 0),
    ('T002', 'yatak', 5),
    ('T002', 'business', 5),
    ('T002', 'economy', 10),
    ('T003', 'yemek', 0),
    ('T003', 'yatak', 5),
    ('T003', 'business', 5),
    ('T003', 'economy', 10),
    ('T004', 'yemek', 0),
    ('T004', 'yatak', 5),
    ('T004', 'business', 5),
    ('T004', 'economy', 10),
    ('T005', 'yemek', 0),
    ('T005', 'yatak', 5),
    ('T005', 'business', 5),
    ('T005', 'economy', 10),
    ('T006', 'yemek', 0),
    ('T006', 'yatak', 5),
    ('T006', 'business', 5),
    ('T006', 'economy', 10);

-- train trips
INSERT INTO train_trip (departure_station, arrival_station, dep_time, arr_time, train_id, date, fare)
VALUES
    ('Ankara', 'Istanbul Haydarpasa', '2024-03-01 08:00:00', '2024-03-01 12:00:00', 'T001', '2024-03-01', 150.00),
    ('Istanbul Haydarpasa', 'Ankara', '2024-03-02 09:00:00', '2024-03-02 13:00:00', 'T002', '2024-03-02', 120.00),
    ('Eskisehir', 'Izmir Basmane', '2024-03-03 10:00:00', '2024-03-03 15:00:00', 'T003', '2024-03-03', 180.00),
    ('Izmir Basmane', 'Eskisehir', '2024-03-04 11:00:00', '2024-03-04 16:00:00', 'T004', '2024-03-04', 160.00),
    ('Ankara', 'Konya', '2024-03-05 12:00:00', '2024-03-05 15:00:00', 'T005', '2024-03-05', 100.00),
    ('Konya', 'Ankara', '2024-03-06 13:00:00', '2024-03-06 16:00:00', 'T006', '2024-03-06', 110.00),
    ('Istanbul Haydarpasa', 'Eskisehir', '2024-03-07 14:00:00', '2024-03-07 18:00:00', 'T001', '2024-03-07', 130.00),
    ('Eskisehir', 'Istanbul Haydarpasa', '2024-03-08 15:00:00', '2024-03-08 19:00:00', 'T002', '2024-03-08', 140.00),
    ('Izmir Basmane', 'Adana', '2024-03-09 16:00:00', '2024-03-09 21:00:00', 'T003', '2024-03-09', 200.00),
    ('Adana', 'Izmir Basmane', '2024-03-10 17:00:00', '2024-03-10 22:00:00', 'T004', '2024-03-10', 190.00),
    ('Ankara', 'Sivas', '2024-03-11 18:00:00', '2024-03-11 22:30:00', 'T005', '2024-03-11', 120.00),
    ('Sivas', 'Ankara', '2024-03-12 19:00:00', '2024-03-12 23:30:00', 'T006', '2024-03-12', 130.00),
    ('Istanbul Haydarpasa', 'Antalya', '2024-03-13 20:00:00', '2024-03-14 01:00:00', 'T001', '2024-03-13', 220.00),
    ('Antalya', 'Istanbul Haydarpasa', '2024-03-14 21:00:00', '2024-03-15 02:00:00', 'T002', '2024-03-14', 210.00),
    ('Eskisehir', 'Mersin', '2024-03-15 22:00:00', '2024-03-16 03:00:00', 'T003', '2024-03-15', 180.00),
    ('Mersin', 'Eskisehir', '2024-03-16 23:00:00', '2024-03-17 04:00:00', 'T004', '2024-03-16', 170.00),
    ('Izmir Basmane', 'Diyarbakir', '2024-03-17 00:00:00', '2024-03-17 05:30:00', 'T005', '2024-03-17', 200.00),
    ('Diyarbakir', 'Izmir Basmane', '2024-03-18 01:00:00', '2024-03-18 06:30:00', 'T006', '2024-03-18', 190.00),
    ('Ankara', 'Malatya', '2024-03-19 02:00:00', '2024-03-19 06:30:00', 'T001', '2024-03-19', 150.00),
    ('Malatya', 'Ankara', '2024-03-20 03:00:00', '2024-03-20 07:30:00', 'T002', '2024-03-20', 160.00);


-- ------------------------------BUS------------------------------
INSERT INTO bus_station (name, city, district)
VALUES
    ('Konya Otogar', 'Konya', 'Meram'),
    ('Gaziantep Otogar', 'Gaziantep', 'Şahinbey'),
    ('Trabzon Otogar', 'Trabzon', 'Ortahisar'),
    ('Erzurum Otogar', 'Erzurum', 'Yakutiye'),
    ('Kayseri Otogar', 'Kayseri', 'Kocasinan'),
    ('Samsun Otogar', 'Samsun', 'İlkadım'),
    ('Diyarbakır Otogar', 'Diyarbakır', 'Bağlar'),
    ('Eskişehir Otogar', 'Eskişehir', 'Tepebaşı'),
    ('AŞTİ', 'Ankara', 'Yenimahalle'),
    ('Antakya Otogar', 'Hatay', 'Antakya');

INSERT INTO bus (plate_number, type, total_no_of_seats)
VALUES
    ('ABC123', '2+1', 30),
    ('DEF456', '2+2', 40),
    ('GHI789', '2+1', 35),
    ('JKL012', '2+2', 45),
    ('MNO345', '2+1', 50);

INSERT INTO bus_trip (departure_station, arrival_station, dep_time, arr_time, plate_number, date, company, fare)
VALUES
    ('Konya Otogar', 'Gaziantep Otogar', '2024-01-01 08:00:00', '2024-01-01 14:30:00', 'ABC123', '2024-01-01', 'Metro Turizm', 800.00),
    ('Trabzon Otogar', 'Eskişehir Otogar', '2024-01-01 10:15:00', '2024-01-01 22:45:00', 'DEF456', '2024-01-01', 'Pamukkale Turizm', 110.00),
    ('Kayseri Otogar', 'AŞTİ', '2024-01-01 09:30:00', '2024-01-02 06:00:00', 'GHI789', '2024-01-01', 'Kamil Koç', 100.00),
    ('Diyarbakır Otogar', 'Antakya Otogar', '2024-01-01 12:45:00', '2024-01-01 19:20:00', 'JKL012', '2024-01-01', 'Ulusoy Turizm', 600.00),
    ('Erzurum Otogar', 'Samsun Otogar', '2024-01-01 14:00:00', '2024-01-01 22:30:00', 'MNO345', '2024-01-01', 'Varan Turizm', 400.00),
    ('Gaziantep Otogar', 'Eskişehir Otogar', '2024-01-01 07:20:00', '2024-01-01 20:45:00', 'ABC123', '2024-01-01', 'Metro Turizm', 85.00),
    ('Kayseri Otogar', 'Antakya Otogar', '2024-01-01 11:10:00', '2024-01-01 23:30:00', 'GHI789', '2024-01-01', 'Kamil Koç', 500.00),
    ('Trabzon Otogar', 'AŞTİ', '2024-01-01 13:20:00', '2024-01-02 05:45:00', 'DEF456', '2024-01-01', 'Pamukkale Turizm', 120.00);


-- ------------------------------MARTI------------------------------
INSERT INTO vehicle_type (type_name, activation_fee, per_minute_rate, requires_license)
VALUES
    ('scooter', 2.5, 0.2, TRUE),
    ('motosiklet', 3.0, 0.25, TRUE),
    ('elektrikli_bisiklet', 1.5, 0.15, FALSE);


INSERT INTO branch (name, company_name, phone, city, location)
VALUES
('İstanbul Avis', 'Avis', '123-456-7890', 'İstanbul', POINT(41.0082, 28.9784)),
('Ankara Budget', 'Budget', '111-222-3333', 'Ankara', POINT(39.9334, 32.8597)),
('İzmir Sixt', 'Sixt', '444-555-6666', 'İzmir', POINT(38.4192, 27.1287)),
('İstanbul EuropCar', 'EuropCar', '777-888-9999', 'İstanbul', POINT(36.8969, 30.7133)),
('Bursa Budget', 'Budget', '000-111-2222', 'Bursa', POINT(37.0359, 27.4303)),
('Edirne Avis', 'Avis', '999-888-7777', 'Edirne', POINT(40.9799, 39.7192)),
('Kapadokya Budget', 'Budget', '333-222-1111', 'Nevşehir', POINT(38.6431, 34.8303)),
('Kuşadası EuropCar', 'EuropCar', '666-555-4444', 'Aydın', POINT(37.8554, 27.2568)),
('Adana EuropCar', 'EuropCar', '222-333-4444', 'Adana', POINT(37.0017, 35.3289)),
('Marmaris Avis', 'Avis', '888-999-0000', 'Muğla', POINT(36.8554, 28.2744));


INSERT INTO branch_delivery_type (branch_name, delivery_type) VALUES
('İstanbul Avis', 'Office'),
('İstanbul Avis', 'Valet Service'),
('Ankara Budget', 'Delivery to Address'),
('Ankara Budget', 'Valet Service'),
('İzmir Sixt', 'Office'),
('İzmir Sixt', 'Delivery to Address'),
('İstanbul EuropCar', 'Valet Service'),
('İstanbul EuropCar', 'Delivery to Address'),
('Bursa Budget', 'Office'),
('Bursa Budget', 'Valet Service'),
('Edirne Avis', 'Office'),
('Edirne Avis', 'Delivery to Address'),
('Kapadokya Budget', 'Office'),
('Kapadokya Budget', 'Valet Service'),
('Kuşadası EuropCar', 'Delivery to Address'),
('Kuşadası EuropCar', 'Valet Service'),
('Adana EuropCar', 'Office'),
('Adana EuropCar', 'Delivery to Address'),
('Marmaris Avis', 'Office'),
('Marmaris Avis', 'Valet Service');


-- ------------------------------RENTAL CAR------------------------------
INSERT INTO martı_vehicle (vehicle_id, type_name, available, current_location, battery)
VALUES
    -- Scooters
    (101, 'scooter', TRUE, '(40.7128, -74.0060)', 80),
    (102, 'scooter', TRUE, '(34.0522, -118.2437)', 70),
    (103, 'scooter', FALSE, '(51.5074, -0.1278)', 60),
    (104, 'scooter', TRUE, '(41.8781, -87.6298)', 50),
    (105, 'scooter', FALSE, '(37.7749, -122.4194)', 75),
    (106, 'scooter', TRUE, '(45.4215, -75.6994)', 90),
    (107, 'scooter', TRUE, '(35.6895, 139.6917)', 85),
    (108, 'scooter', FALSE, '(40.7128, -74.0060)', 70),
    (109, 'scooter', TRUE, '(34.0522, -118.2437)', 80),
    (110, 'scooter', FALSE, '(51.5074, -0.1278)', 65),
    -- Motosiklets
    (111, 'motosiklet', TRUE, '(40.7128, -74.0060)', 75),
    (112, 'motosiklet', TRUE, '(34.0522, -118.2437)', 95),
    (113, 'motosiklet', FALSE, '(41.8781, -87.6298)', 70),
    (114, 'motosiklet', TRUE, '(37.7749, -122.4194)', 70),
    (115, 'motosiklet', TRUE, '(45.4215, -75.6994)', 85),
    -- elektrikli_bisiklet
    (116, 'elektrikli_bisiklet', TRUE, '(35.6895, 139.6917)', 75),
    (117, 'elektrikli_bisiklet', FALSE, '(40.7128, -74.0060)', 60),
    (118, 'elektrikli_bisiklet', TRUE, '(34.0522, -118.2437)', 70),
    (119, 'elektrikli_bisiklet', TRUE, '(51.5074, -0.1278)', 80),
    (120, 'elektrikli_bisiklet', FALSE, '(48.8566, 2.3522)', 55);



INSERT INTO rental_car(plate_number,branch_name,car_type,daily_fee,deposit_fee,minimum_driver_age,minimum_license_age,seat_count,fuel_type,transmission_type,manufacturer,model,km_limit)
VALUES ('TR00BGL', 'Marmaris Avis', 'Van', '960.00', '864.00', 24, 3, 3, 'Hybrid', 'Automatic', 'Mercedes Benz', 'LeBaron', 34515),
('TR26OFR', 'Edirne Avis', 'SEDAN', '350.00', '161.00', 22, 4, 6, 'LPG', 'Automatic', 'Tesla', 'Fortwo', 95981),
('TR28TKS', 'Bursa Budget', 'Van', '136.00', '57.00', 23, 2, 3, 'LPG', 'Manuel', 'Fiat', 'Mustang', 24818),
('TR88ARX', 'Kuşadası EuropCar', 'Hatchback', '547.00', '530.00', 25, 4, 8, 'Hybrid', 'Manuel', 'Tesla', 'Model Y', 47321),
('TR45DIH', 'Kuşadası EuropCar', 'SUV', '593.00', '220.00', 18, 5, 3, 'Diesel', 'Automatic', 'Nissan', 'Cruze', 96792),
('TR84IYT', 'Bursa Budget', 'Pick-up', '781.00', '751.00', 18, 5, 5, 'Diesel', 'Manuel', 'Land Rover', 'Model X', 60402),
('TR49YEK', 'İstanbul Avis', 'SEDAN', '999.00', '391.00', 22, 3, 4, 'LPG', 'Automatic', 'Chevrolet', 'Cruze', 4206),
('TR69AXN', 'Marmaris Avis', 'SUV', '913.00', '616.00', 21, 2, 7, 'LPG', 'Automatic', 'BMW', 'Challenger', 31631),
('TR38DQR', 'Adana EuropCar', 'Van', '385.00', '307.00', 23, 1, 2, 'Petrol', 'Automatic', 'Chrysler', 'Alpine', 17403),
('TR67ACH', 'Adana EuropCar', 'Van', '399.00', '808.00', 20, 4, 7, 'Hybrid', 'Manuel', 'Honda', 'F-150', 14462),
('TR33KKG', 'Kapadokya Budget', 'Hatchback', '583.00', '473.00', 23, 2, 5, 'Electricity', 'Manuel', 'Fiat', 'Model T', 14130),
('TR83BYA', 'İstanbul Avis', 'Hatchback', '666.00', '325.00', 19, 2, 7, 'Diesel', 'Manuel', 'Kia', 'Mercielago', 10862),
('TR22QKT', 'Marmaris Avis', 'Hatchback', '158.00', '963.00', 20, 5, 7, 'LPG', 'Automatic', 'Ferrari', 'Wrangler', 97240),
('TR63LNI', 'Marmaris Avis', 'Van', '758.00', '369.00', 18, 4, 5, 'Electricity', 'Manuel', 'Hyundai', 'V90', 71833),
('TR96WDT', 'Ankara Budget', 'Hatchback', '834.00', '68.00', 23, 4, 8, 'LPG', 'Automatic', 'BMW', 'F-150', 80002),
('TR47GZA', 'Ankara Budget', 'Pick-up', '60.00', '956.00', 18, 1, 8, 'LPG', 'Automatic', 'Land Rover', 'Expedition', 48250),
('RT58LBS', 'İzmir Sixt', 'Van', '747.00', '45.00', 23, 4, 4, 'Petrol', 'Automatic', 'Bentley', 'Fortwo', 70781),
('TR24VJF', 'İstanbul Avis', 'Hatchback', '247.00', '326.00', 21, 4, 6, 'Diesel', 'Automatic', 'Ferrari', '911', 47761),
('TR88QOB', 'Marmaris Avis', 'SEDAN', '674.00', '946.00', 20, 3, 5, 'LPG', 'Automatic', 'Aston Martin', 'Explorer', 96918),
('TR68FVX', 'Kapadokya Budget', 'Van', '155.00', '667.00', 18, 2, 8, 'LPG', 'Manuel', 'Fiat', 'Model 3', 33278);


-- ------------------------------İZBAN------------------------------
INSERT INTO customer (tc_passport, type, date_of_birth, age, foreigner, name, sex, license, email, phone, balance)
VALUES
    ('11111111111', 'Student', '1998-04-23', 25, false, 'Sarah Lee', 'f', 'SL111', 'sarah@example.com', '+1122334455', 725.00),
    ('22222222222', 'Tam', '1990-08-12', 33, true, 'David Chen', 'm', 'DC222', 'david@example.com', '+1987654321', 850.50),
    ('33333333333', 'Student', '2001-01-05', 21, false, 'Emily Wang', 'f', 'EW333', 'emily@example.com', '+1234567890', 800.00),
    ('44444444444', 'Tam', '1994-11-18', 29, true, 'Michael Kim', 'm', 'MK444', 'michael@example.com', '+1357924680', 700.25),
    ('55555555555', 'Student', '1997-07-30', 26, false, 'Olivia Garcia', 'f', 'OG555', 'olivia@example.com', '+1650487321', 550.00),
    ('66666666666', 'Tam', '1993-02-14', 29, true, 'Daniel Rodriguez', 'm', 'DR666', 'daniel@example.com', '+1789054321', 920.75),
    ('77777777777', 'Student', '2000-09-10', 22, false, 'Sophia Martinez', 'f', 'SM777', 'sophia@example.com', '+1432987654', 480.25),
    ('88888888888', 'Tam', '1989-05-27', 34, true, 'Matthew Nguyen', 'm', 'MN888', 'matthew@example.com', '+1876543210', 780.50),
    ('99999999999', 'Student', '1996-12-03', 27, false, 'Ava Hernandez', 'f', 'AH999', 'ava@example.com', '+1765432890', 670.00),
    ('10101010101', 'Tam', '1992-03-20', 31, true, 'William Lopez', 'm', 'WL1010', 'william@example.com', '+1543217890', 890.25),
    ('12121212121', 'Student', '2003-08-15', 19, false, 'Mia Smith', 'f', 'MS1212', 'mia@example.com', '+1324354657', 320.75),
    ('13131313131', 'Tam', '1988-10-08', 33, true, 'James Johnson', 'm', 'JJ1313', 'james@example.com', '+1982736450', 660.50),
    ('14141414141', 'Student', '1999-05-25', 24, false, 'Charlotte Brown', 'f', 'CB1414', 'charlotte@example.com', '+1876543210', 720.00),
    ('15151515151', 'Tam', '1991-11-29', 32, true, 'Ethan Davis', 'm', 'ED1515', 'ethan@example.com', '+1654321870', 550.25),
    ('16161616161', 'Student', '1995-02-18', 28, false, 'Amelia Wilson', 'f', 'AW1616', 'amelia@example.com', '+1324765980', 810.75),
    ('17171717171', 'Tam', '1987-06-12', 34, true, 'Alexander Miller', 'm', 'AM1717', 'alexander@example.com', '+1987654321', 740.50),
    ('18181818181', 'Student', '2002-01-30', 20, false, 'Harper Moore', 'f', 'HM1818', 'harper@example.com', '+1650432789', 430.25),
    ('19191919191', 'Tam', '1990-09-07', 33, true, 'Benjamin Taylor', 'm', 'BT1919', 'benjamin@example.com', '+1876532098', 920.00),
    ('20202020202', 'Student', '1994-04-12', 29, false, 'Luna Thomas', 'f', 'LT2020', 'luna@example.com', '+1987456321', 680.25),
    ('21212121212', 'Tam', '1986-12-28', 35, true, 'Henry White', 'm', 'HW2121', 'henry@example.com', '+1987234567', 770.50);


INSERT INTO izban_station (name, starting_price) VALUES
('Karşıyaka 1', 35),
('Alaybey 2', 30),
('Naldöken 3', 25),
('Turan 4', 25),
('Bayraklı 5', 20),
('Salhane 6', 20),
('Halkapınar 7', 25),
('Alsancak 8', 25),
('Hilal 9', 30),
('Adnan Menderes Havalimanı 10', 35);

INSERT INTO izban_train (train_id, no_of_cars, total_no_of_seats) VALUES
('T001', 5, 250),
('T002', 4, 200),
('T003', 6, 300),
('T004', 5, 250),
('T005', 4, 200),
('T006', 6, 300),
('T007', 5, 250),
('T008', 4, 200),
('T009', 6, 300),
('T010', 5, 250);

INSERT INTO izban_trip (number, train_id, date, direction) VALUES
(1, 'T001', '2024-01-01 08:00:00', 'North'),
(2, 'T002', '2024-01-02 10:00:00', 'South'),
(3, 'T003', '2024-01-03 12:00:00', 'North'),
(4, 'T004', '2024-01-04 14:00:00', 'South'),
(5, 'T005', '2024-01-05 16:00:00', 'North'),
(6, 'T006', '2024-01-06 18:00:00', 'South'),
(7, 'T007', '2024-01-07 20:00:00', 'North'),
(8, 'T008', '2024-01-08 22:00:00', 'South'),
(9, 'T009', '2024-01-09 00:00:00', 'North'),
(10, 'T010', '2024-01-10 02:00:00', 'South');

INSERT INTO izban_leg (number, leg_no, departure_station, arrival_station, dep_time, arr_time) VALUES
(1, 1, 'Adnan Menderes Havalimanı 10', 'Hilal 9', '2024-01-01 08:00:00', '2024-01-01 08:30:00'),
(1, 2, 'Hilal 9', 'Alsancak 8', '2024-01-01 08:30:00', '2024-01-01 09:00:00'),
(1, 3, 'Alsancak 8', 'Halkapınar 7', '2024-01-01 09:00:00', '2024-01-01 09:30:00'),
(1, 4, 'Halkapınar 7', 'Salhane 6', '2024-01-01 09:30:00', '2024-01-01 10:00:00'),
(1, 5, 'Salhane 6', 'Bayraklı 5', '2024-01-01 10:00:00', '2024-01-01 10:30:00'),
(2, 1, 'Karşıyaka 1', 'Alaybey 2', '2024-01-02 10:00:00', '2024-01-02 10:30:00'),
(2, 2, 'Alaybey 2', 'Naldöken 3', '2024-01-02 10:30:00', '2024-01-02 11:00:00'),
(2, 3, 'Naldöken 3', 'Turan 4', '2024-01-02 11:00:00', '2024-01-02 11:30:00'),
(2, 4, 'Turan 4', 'Bayraklı 5', '2024-01-02 11:30:00', '2024-01-02 12:00:00'),
(2, 5, 'Bayraklı 5', 'Salhane 6', '2024-01-02 12:00:00', '2024-01-02 12:30:00'),
(2, 6, 'Salhane 6', 'Halkapınar 7', '2024-01-02 12:30:00', '2024-01-02 13:00:00'),
(2, 7, 'Halkapınar 7', 'Alsancak 8', '2024-01-02 13:00:00', '2024-01-02 13:30:00'),
(2, 8, 'Alsancak 8', 'Hilal 9', '2024-01-02 13:30:00', '2024-01-02 14:00:00'),
(2, 9, 'Hilal 9', 'Adnan Menderes Havalimanı 10', '2024-01-02 14:00:00', '2024-01-02 14:30:00'),
(3, 1, 'Adnan Menderes Havalimanı 10', 'Hilal 9', '2024-01-03 12:00:00', '2024-01-03 12:30:00'),
(3, 2, 'Hilal 9', 'Alsancak 8', '2024-01-03 12:30:00', '2024-01-03 13:00:00'),
(3, 3, 'Alsancak 8', 'Halkapınar 7', '2024-01-03 13:00:00', '2024-01-03 13:30:00'),
(3, 4, 'Halkapınar 7', 'Salhane 6', '2024-01-03 13:30:00', '2024-01-03 14:00:00'),
(3, 5, 'Salhane 6', 'Bayraklı 5', '2024-01-03 14:00:00', '2024-01-03 14:30:00'),
(3, 6, 'Bayraklı 5', 'Turan 4', '2024-01-03 14:30:00', '2024-01-03 15:00:00'),
(3, 7, 'Turan 4', 'Naldöken 3', '2024-01-03 15:00:00', '2024-01-03 15:30:00'),
(3, 8, 'Naldöken 3', 'Alaybey 2', '2024-01-03 15:30:00', '2024-01-03 16:00:00'),
(3, 9, 'Alaybey 2', 'Karşıyaka 1', '2024-01-03 16:00:00', '2024-01-03 16:30:00'),
(4, 1, 'Karşıyaka 1', 'Alaybey 2', '2024-01-04 14:00:00', '2024-01-04 14:30:00'),
(4, 2, 'Alaybey 2', 'Naldöken 3', '2024-01-04 14:30:00', '2024-01-04 15:00:00'),
(4, 3, 'Naldöken 3', 'Turan 4', '2024-01-04 15:00:00', '2024-01-04 15:30:00'),
(4, 4, 'Turan 4', 'Bayraklı 5', '2024-01-04 15:30:00', '2024-01-04 16:00:00');

INSERT INTO izban_ride (number, departure_station, arrival_station, dep_time, arr_time, tc_passport, date)
VALUES
(1, 'Halkapınar 7', 'Bayraklı 5', '2024-01-01 09:25:00', '2024-01-01 10:30:00', '11111111111', DATE '2024-01-01'),
(2, 'Karşıyaka 1', 'Alsancak 8', '2024-01-02 09:58:00', '2024-01-02 13:30:00', '22222222222', DATE '2024-01-02'),
(3, 'Bayraklı 5', 'Alaybey 2', '2024-01-03 14:25:00', '2024-01-03 16:00:00', '33333333333', DATE '2024-01-03');

INSERT INTO izban_ride (number, departure_station, dep_time, tc_passport, date)
VALUES
(4, 'Naldöken 3', '2024-01-04 14:35:00', '33333333333', DATE '2024-01-04');
