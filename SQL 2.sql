-- Populate Aircrafts table
INSERT INTO Aircrafts (AircraftName, AircraftModel) VALUES 
('Aircraft 1', 'Model 1'), 
('Aircraft 2', 'Model 2'), 
('Aircraft 3', 'Model 3'), 
('Aircraft 4', 'Model 4'), 
('Aircraft 5', 'Model 5');

-- Populate Parts table
INSERT INTO Parts (PartName, PartNumber) SELECT 'Part ' || x, 'P' || x FROM (SELECT 1 + abs(random()) % 50 AS x);

