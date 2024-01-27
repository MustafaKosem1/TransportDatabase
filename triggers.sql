------------------CREATE TRIGGER------------------------------------
CREATE OR REPLACE FUNCTION update_ride_price_function()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE izban_ride AS ir
    SET price = (
        SELECT starting_price
        FROM izban_station AS ist
        WHERE ist.name = NEW.departure_station
    )
    WHERE ir.number = NEW.number;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER update_ride_price_trigger
AFTER INSERT ON izban_ride
FOR EACH ROW
EXECUTE FUNCTION update_ride_price_function();


CREATE OR REPLACE FUNCTION update_balance_for_izban_function()
RETURNS TRIGGER AS $$
DECLARE new_balance NUMERIC;
BEGIN
    SELECT (balance - (
        SELECT starting_price
        FROM izban_station AS ist
        WHERE ist.name = NEW.departure_station) )
    INTO new_balance
    FROM customer
    WHERE tc_passport=NEW.tc_passport;

    UPDATE customer
    SET balance = new_balance
    WHERE tc_passport = NEW.tc_passport;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_balance_trigger
BEFORE INSERT ON izban_ride
FOR EACH ROW
EXECUTE FUNCTION update_balance_for_izban_function();

---------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION add_martı_vehicle()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO rentable (type) VALUES ('Martı') RETURNING rentable_id INTO NEW.rentable_id;

    RETURN NEW;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION add_rental_car()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO rentable (type) VALUES ('Car') RETURNING rentable_id INTO NEW.rentable_id;

    RETURN NEW;
END
$$ LANGUAGE plpgsql;

CREATE TRIGGER before_insert_martı_vehicle
BEFORE INSERT ON martı_vehicle
FOR EACH ROW
EXECUTE FUNCTION add_martı_vehicle();

CREATE TRIGGER before_insert_rental_car
BEFORE INSERT ON rental_car
FOR EACH ROW
EXECUTE FUNCTION add_rental_car();

---------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION generate_random_pnr()
RETURNS VARCHAR(6) AS $$
DECLARE
    chars VARCHAR(62) := 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    result VARCHAR(6) := '';
    i INTEGER;
BEGIN
    FOR i IN 1..6 LOOP
        result := result || substr(chars, floor(random() * length(chars) + 1)::integer, 1);
    END LOOP;
    RETURN result;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION add_flight_seat_ticket()
RETURNS TRIGGER AS $$
DECLARE total_seats NUMERIC;
    new_pnr VARCHAR(6);
BEGIN
    SELECT total_no_of_seats
    FROM AIRPLANE AS ap
    WHERE ap.airplane_id = NEW.airplane_id
    INTO total_seats;
    for seat_numara in 1..total_seats loop
        SELECT generate_random_pnr() INTO new_pnr;
        INSERT INTO ticket(pnr,type, total_fee) VALUES (new_pnr,'Flight', 0);
        INSERT INTO flight_seat_ticket(pnr,number, seat_no, type, window_side, extra_fee) VALUES (new_pnr,NEW.number,seat_numara,'Economy',True,500.0);
    end loop;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER add_flight_ticket_trigger
AFTER INSERT ON flight
FOR EACH ROW
EXECUTE FUNCTION add_flight_seat_ticket();

-- Trigger to calculate total_fee when a new flight_seat_ticket is added
CREATE OR REPLACE FUNCTION update_ticket_and_calculate_fee()
RETURNS TRIGGER AS $$
DECLARE
    calculated_total_fee NUMERIC;
    flight_fare NUMERIC;
BEGIN
    SELECT fare INTO flight_fare
    FROM flight
    WHERE number = NEW.number;

    calculated_total_fee := flight_fare + NEW.extra_fee;
    UPDATE ticket
    SET total_fee = calculated_total_fee
    WHERE pnr = NEW.pnr;

    RETURN NEW;
END
$$ LANGUAGE plpgsql;

-- Trigger to execute the function when a new flight_seat_ticket is added
CREATE TRIGGER update_ticket_trigger
AFTER INSERT ON flight_seat_ticket
FOR EACH ROW
EXECUTE FUNCTION update_ticket_and_calculate_fee();