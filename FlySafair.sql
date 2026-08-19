-- Create FlySafir database
IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE name = 'FlySafir')
BEGIN
    CREATE DATABASE FlySafir;
END;
GO

USE FlySafir;
GO

-- Create Flights table
IF OBJECT_ID('dbo.Flights', 'U') IS NOT NULL
    DROP TABLE dbo.Flights;
GO

CREATE TABLE dbo.Flights
(
    FlightID        INT IDENTITY(1,1) PRIMARY KEY,
    FlightNumber    VARCHAR(20),
    Airline         VARCHAR(100),
    DepartureCity   VARCHAR(100),
    ArrivalCity     VARCHAR(100),
    DepartureDate   DATE,
    TicketPrice     DECIMAL(10,2)
);
GO

-- Insert sample data
INSERT INTO dbo.Flights
(
    FlightNumber,
    Airline,
    DepartureCity,
    ArrivalCity,
    DepartureDate,
    TicketPrice
)
VALUES
('FS101', 'FlySafair', 'Johannesburg', 'Cape Town', '2026-08-20', 1299.00),
('FS102', 'FlySafair', 'Cape Town', 'Johannesburg', '2026-08-21', 1399.00),
('FS103', 'FlySafair', 'Durban', 'Johannesburg', '2026-08-22', 999.00),
('FS104', 'FlySafair', 'Johannesburg', 'Durban', '2026-08-23', 1099.00),
('FS105', 'FlySafair', 'Cape Town', 'Durban', '2026-08-24', 1199.00),
('FS106', 'FlySafair', 'Durban', 'Cape Town', '2026-08-25', 1249.00),
('FS107', 'FlySafair', 'Johannesburg', 'Port Elizabeth', '2026-08-26', 1149.00),
('FS108', 'FlySafair', 'Port Elizabeth', 'Johannesburg', '2026-08-27', 1199.00),
('FS109', 'FlySafair', 'Cape Town', 'George', '2026-08-28', 899.00),
('FS110', 'FlySafair', 'George', 'Cape Town', '2026-08-29', 949.00);
GO

-- Check the data
SELECT *
FROM dbo.Flights;