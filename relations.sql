CREATE TYPE BUS_TYPE AS ENUM('2+1', '2+2');
CREATE TYPE USER_TYPE AS ENUM('Student', 'Tam');
CREATE TYPE SEX AS ENUM('f', 'm');
CREATE TYPE MARTI_VEHICLE_TYPE AS ENUM('scooter', 'motosiklet', 'elektrikli_bisiklet');
CREATE TYPE CAR_TYPE AS ENUM('yemek', 'yatak', 'business', 'economy');
CREATE TYPE DIRECTION AS ENUM('South', 'North');
CREATE TYPE DELIVERY_TYPE AS ENUM('Office', 'Delivery to Address', 'Valet Service');
CREATE TYPE RENTABLE_TYPE AS ENUM('Martı', 'Car');
CREATE TYPE SEAT_TYPE AS ENUM('Business', 'Economy');
CREATE TYPE RENTAL_CAR_TYPE AS ENUM('SUV', 'SEDAN', 'Pick-up', 'Hatchback', 'Van');
CREATE TYPE FUEL_TYPE AS ENUM('Diesel', 'LPG', 'Petrol', 'Electricity', 'Hybrid');
CREATE TYPE TRANSMISSION_TYPE AS ENUM('Automatic', 'Manuel');
CREATE TYPE TICKET_TYPE AS ENUM('Flight', 'Bus', 'Ferry', 'Train');


-- STATIONS
CREATE TABLE airport (
    code VARCHAR(3),
    name VARCHAR(100) UNIQUE NOT NULL,
    city VARCHAR(30) NOT NULL,
    country VARCHAR(30) NOT NULL,
    PRIMARY KEY (code)
);

CREATE TABLE bus_station (
    name VARCHAR(100),
    city VARCHAR(30) NOT NULL,
    district VARCHAR(30) NOT NULL,
    PRIMARY KEY (name)
);

CREATE TABLE train_station (
    name VARCHAR(100),
    city VARCHAR(30) NOT NULL,
    PRIMARY KEY (name)
);

CREATE TABLE dock (
    name VARCHAR(100),
    city VARCHAR(30) NOT NULL,
    PRIMARY KEY (name)
);

CREATE TABLE izban_station (
    name VARCHAR(100),
    starting_price NUMERIC NOT NULL,
    PRIMARY KEY (name)
);

-- VEHICLES
CREATE TABLE airplane (
    airplane_id VARCHAR(6),
    type VARCHAR(50) NOT NULL,
    total_no_of_seats INT NOT NULL,
    PRIMARY KEY (airplane_id)
);

CREATE TABLE bus (
    plate_number VARCHAR(10),
    type BUS_TYPE NOT NULL,
    total_no_of_seats INT NOT NULL,
    PRIMARY KEY (plate_number)
);

CREATE TABLE train (
    train_id VARCHAR(10),
    type VARCHAR(50) NOT NULL,
    total_no_of_seats INT NOT NULL,
    PRIMARY KEY (train_id)
);

CREATE TABLE ferry (
    name VARCHAR(50),
    type VARCHAR(50) NOT NULL,
    total_no_of_seats INT NOT NULL,
    vehicle_capacity INT NOT NULL,
    PRIMARY KEY (name)
);

CREATE TABLE izban_train (
    train_id VARCHAR(10),
    no_of_cars INT NOT NULL,
    total_no_of_seats INT NOT NULL,
    PRIMARY KEY (train_id)
);

-- USER
CREATE TABLE customer (
    tc_passport VARCHAR(11),
    type USER_TYPE NOT NULL,
    date_of_birth DATE NOT NULL,
    age INT NOT NULL, -- TODO CALCULATE AGE
    foreigner BOOLEAN NOT NULL,
    name VARCHAR(50) NOT NULL,
    sex SEX NOT NULL,
    license VARCHAR(20),
    email VARCHAR(50),
    phone VARCHAR(20),
    balance NUMERIC CHECK (balance >= 0) NOT NULL,
    PRIMARY KEY (tc_passport)
);

-- MARTI
CREATE TABLE vehicle_type (
    type_name MARTI_VEHICLE_TYPE,
    activation_fee NUMERIC NOT NULL,
    per_minute_rate NUMERIC NOT NULL,
    requires_license BOOLEAN NOT NULL,
    PRIMARY KEY (type_name)
);


-- YOLCU360
CREATE TABLE branch (
    name VARCHAR(50),
    company_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    city VARCHAR(50) NOT NULL,
    location POINT NOT NULL,
    PRIMARY KEY (name)
);

-- TRIPS
CREATE TABLE flight (
    number SERIAL,
    departure_airport VARCHAR(3),
    arrival_airport VARCHAR(3),
    dep_time TIMESTAMPTZ NOT NULL,
    arr_time TIMESTAMPTZ NOT NULL,
    airplane_id VARCHAR(6),
    date DATE NOT NULL,
    airline VARCHAR(30) NOT NULL,
    fare NUMERIC NOT NULL,
    travel_duration TIME GENERATED ALWAYS AS (arr_time - dep_time) STORED,
    CHECK (departure_airport <> arrival_airport),
    CHECK (arr_time > dep_time),
    PRIMARY KEY (number),
    CONSTRAINT fk_dep_airport FOREIGN KEY
        (departure_airport) REFERENCES airport(code)
        ON DELETE SET NULL
        ON UPDATE CASCADE ,
    CONSTRAINT fk_arr_airport FOREIGN KEY
        (arrival_airport) REFERENCES airport(code)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_airplane FOREIGN KEY
        (airplane_id) REFERENCES airplane(airplane_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE bus_trip (
    number SERIAL,
    departure_station VARCHAR(100),
    arrival_station VARCHAR(100),
    dep_time TIMESTAMP NOT NULL,
    arr_time TIMESTAMP NOT NULL,
    plate_number VARCHAR(10),
    date DATE NOT NULL,
    company VARCHAR(50) NOT NULL,
    fare NUMERIC NOT NULL,
    travel_duration TIME GENERATED ALWAYS AS (arr_time - dep_time) STORED,
    CHECK (departure_station <> arrival_station),
    PRIMARY KEY (number),
    CHECK (arr_time > dep_time),
    CONSTRAINT fk_dep_station FOREIGN KEY
        (departure_station) REFERENCES bus_station(name)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_arr_station FOREIGN KEY
        (arrival_station) REFERENCES bus_station(name)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_plate_number FOREIGN KEY
        (plate_number) REFERENCES bus(plate_number)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE train_trip (
    number SERIAL,
    departure_station VARCHAR(100),
    arrival_station VARCHAR(100),
    dep_time TIMESTAMP NOT NULL,
    arr_time TIMESTAMP NOT NULL,
    train_id VARCHAR(10),
    date DATE NOT NULL,
    fare NUMERIC NOT NULL,
    travel_duration TIME GENERATED ALWAYS AS (arr_time - dep_time) STORED,
    CHECK (departure_station <> arrival_station),
    CHECK (arr_time > dep_time),
    PRIMARY KEY (number),
    CONSTRAINT fk_dep_station FOREIGN KEY
        (departure_station) REFERENCES train_station(name)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_arr_station FOREIGN KEY
        (arrival_station) REFERENCES train_station(name)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_plate_number FOREIGN KEY
        (train_id) REFERENCES train(train_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE ferry_trip (
    number SERIAL,
    departure_dock VARCHAR(100),
    arrival_dock VARCHAR(100),
    dep_time TIMESTAMP NOT NULL,
    arr_time TIMESTAMP NOT NULL,
    ferry_name VARCHAR(50),
    date DATE NOT NULL,
    company VARCHAR(50) NOT NULL,
    fare NUMERIC NOT NULL,
    available_vehicle_capacity INT, -- TODO CALCULATE
    travel_duration TIME GENERATED ALWAYS AS (arr_time - dep_time) STORED,
    CHECK (departure_dock <> arrival_dock),
    PRIMARY KEY (number),
    CHECK (arr_time > dep_time),
    CONSTRAINT fk_dep_dock FOREIGN KEY
        (departure_dock) REFERENCES dock(name)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_arr_dock FOREIGN KEY
        (arrival_dock) REFERENCES dock(name)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_ferry_name FOREIGN KEY
        (ferry_name) REFERENCES ferry(name)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE car (
    car_id SERIAL,
    train_id VARCHAR(10),
    car_type CAR_TYPE NOT NULL,
    no_of_seats INT NOT NULL,
    PRIMARY KEY (car_id),
    CONSTRAINT fk_train_id FOREIGN KEY
        (train_id) REFERENCES train(train_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE izban_trip (
    number INT,
    train_id  VARCHAR(10),
    date TIMESTAMP NOT NULL,
    direction DIRECTION NOT NULL,
    PRIMARY KEY (number),
    CONSTRAINT fk_train_id FOREIGN KEY
        (train_id) REFERENCES izban_train(train_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE izban_leg (
    number INT,
    leg_no INT,
    departure_station VARCHAR(100),
    arrival_station VARCHAR(100),
    dep_time TIMESTAMP NOT NULL,
    arr_time TIMESTAMP NOT NULL,
    CHECK (arr_time > dep_time),
    CHECK (departure_station <> arrival_station),
    PRIMARY KEY (number, leg_no),
    CONSTRAINT fk_number FOREIGN KEY
        (number) REFERENCES izban_trip(number)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_dep_station FOREIGN KEY
        (departure_station) REFERENCES izban_station(name)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_arr_station FOREIGN KEY
        (arrival_station) REFERENCES izban_station(name)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE izban_ride (
    number INT,
    departure_station VARCHAR(100),
    arrival_station VARCHAR(100),
    dep_time TIMESTAMP NOT NULL,
    arr_time TIMESTAMP,
    tc_passport VARCHAR(11),
    date DATE NOT NULL,
    price NUMERIC, -- TODO price
    PRIMARY KEY (number),
    CHECK (arr_time > dep_time),
    CONSTRAINT fk_dep_station FOREIGN KEY
        (departure_station) REFERENCES izban_station(name)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_arr_station FOREIGN KEY
        (arrival_station) REFERENCES izban_station(name)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_tc_passport FOREIGN KEY
        (tc_passport) REFERENCES customer(tc_passport)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE branch_delivery_type (
    branch_name VARCHAR(50),
    delivery_type DELIVERY_TYPE NOT NULL,
    PRIMARY KEY (branch_name, delivery_type),
    CONSTRAINT fk_branch_name FOREIGN KEY
        (branch_name) REFERENCES branch(name)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE rentable (
    rentable_id SERIAL,
    type RENTABLE_TYPE NOT NULL,
    PRIMARY KEY (rentable_id)
);

-- TICKETS
CREATE TABLE ticket(
    pnr VARCHAR(6),
    type TICKET_TYPE NOT NULL,
    total_fee NUMERIC, --TODO HESAPLAMA
    PRIMARY KEY (pnr)
);

CREATE TABLE sold_ticket(
    pnr VARCHAR(6),
    tc_passport VARCHAR(11) NOT NULL,
    PRIMARY KEY (pnr),
    CONSTRAINT fk_pnr FOREIGN KEY
        (pnr) REFERENCES ticket(pnr)
        ON DELETE CASCADE -- TODO BURAYA BAK
        ON UPDATE CASCADE,
    CONSTRAINT fk_tc_passport FOREIGN KEY
        (tc_passport) REFERENCES customer(tc_passport)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE flight_seat_ticket(
    pnr VARCHAR(6),
    number INT NOT NULL,
    seat_no INT NOT NULL,
    type SEAT_TYPE NOT NULL,
    window_side BOOLEAN NOT NULL,
    extra_fee NUMERIC NOT NULL,
    PRIMARY KEY (pnr),
    CONSTRAINT fk_pnr FOREIGN KEY
        (pnr) REFERENCES ticket(pnr)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_number FOREIGN KEY
        (number) REFERENCES flight(number)
        ON DELETE CASCADE  -- TODO buraya bakın wuhu
        ON UPDATE CASCADE
);

CREATE TABLE bus_seat_ticket(
    pnr VARCHAR(6),
    number INT NOT NULL,
    seat_no INT NOT NULL,
    single_seat BOOLEAN NOT NULL,
    window_side BOOLEAN NOT NULL,
    extra_fee NUMERIC NOT NULL,
    PRIMARY KEY (pnr),
    CONSTRAINT fk_pnr FOREIGN KEY
        (pnr) REFERENCES ticket(pnr)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_number FOREIGN KEY
        (number) REFERENCES bus_trip(number)
        ON DELETE CASCADE -- TODO BURAYA DA BAK
        ON UPDATE CASCADE
);

CREATE TABLE train_seat_ticket(
    pnr VARCHAR(6),
    number INT NOT NULL,
    seat_no INT NOT NULL,
    type SEAT_TYPE NOT NULL,
    window_side BOOLEAN NOT NULL,
    single_seat BOOLEAN NOT NULL,
    PRIMARY KEY (pnr),
    CONSTRAINT fk_pnr FOREIGN KEY
        (pnr) REFERENCES ticket(pnr)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_number FOREIGN KEY
        (number) REFERENCES train_trip(number)
        ON DELETE CASCADE  -- TODO buraya bakın wuhu
        ON UPDATE CASCADE
);

CREATE TABLE ferry_seat_ticket(
    pnr VARCHAR(6),
    number INT NOT NULL,
    seat_no INT NOT NULL,
    type SEAT_TYPE NOT NULL,
    window_side BOOLEAN NOT NULL,
    vehicle_plate_number VARCHAR(10) NOT NULL,
    PRIMARY KEY (pnr),
    CONSTRAINT fk_pnr FOREIGN KEY
        (pnr) REFERENCES ticket(pnr)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_number FOREIGN KEY
        (number) REFERENCES ferry_trip(number)
        ON DELETE CASCADE  -- TODO buraya bakın wuhu
        ON UPDATE CASCADE
);

CREATE TABLE martı_vehicle(
    vehicle_id INT,
    rentable_id INT NOT NULL,
    type_name MARTI_VEHICLE_TYPE NOT NULL,
    available BOOLEAN NOT NULL,
    current_location POINT NOT NULL,
    battery INT NOT NULL CHECK (battery BETWEEN 0 AND 100),
    PRIMARY KEY (vehicle_id),
    CONSTRAINT fk_rentable_id FOREIGN KEY
        (rentable_id) REFERENCES rentable(rentable_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_type_name FOREIGN KEY
        (type_name) REFERENCES vehicle_type(type_name)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE rental_car (
    plate_number VARCHAR(10),
    rentable_id INT NOT NULL,
    branch_name VARCHAR(50),
    car_type RENTAL_CAR_TYPE NOT NULL,
    daily_fee NUMERIC NOT NULL,
    deposit_fee NUMERIC NOT NULL,
    minimum_driver_age INT NOT NULL,
    minimum_license_age INT NOT NULL,
    seat_count INT NOT NULL,
    fuel_type FUEL_TYPE NOT NULL,
    transmission_type TRANSMISSION_TYPE NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    km_limit INT NOT NULL,
    PRIMARY KEY (plate_number),
    CONSTRAINT fk_rentable_id FOREIGN KEY
        (rentable_id) REFERENCES rentable(rentable_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_branch_name FOREIGN KEY
        (branch_name) REFERENCES branch(name)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE rents(
    tc_passport VARCHAR(10),
    rentable_id INT,
    rent_number INT,
    distance NUMERIC, -- TODO CALCULATE
    duration TIMESTAMP, -- TODO CALCULATE
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    start_location VARCHAR(50), -- TODO TYPE?
    end_location VARCHAR(50), -- TODO TYPE?
    total_fee NUMERIC, -- TODO CALCULATE
    PRIMARY KEY (tc_passport, rentable_id, rent_number),
    CONSTRAINT fk_tc_passport FOREIGN KEY
        (tc_passport) REFERENCES customer(tc_passport)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_rentable_id FOREIGN KEY
        (rentable_id) REFERENCES rentable(rentable_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);