-- Create Aircrafts table
CREATE TABLE Aircrafts (
    AircraftID INTEGER PRIMARY KEY,
    AircraftName TEXT NOT NULL,
    AircraftModel TEXT NOT NULL
);

-- Create Parts table
CREATE TABLE Parts (
    PartID INTEGER PRIMARY KEY,
    PartName TEXT NOT NULL,
    PartNumber TEXT NOT NULL
);

-- Create AircraftParts table
CREATE TABLE AircraftParts (
    AircraftID INTEGER,
    PartID INTEGER,
    Quantity INTEGER NOT NULL,
    PRIMARY KEY (AircraftID, PartID),
    FOREIGN KEY (AircraftID) REFERENCES Aircrafts (AircraftID),
    FOREIGN KEY (PartID) REFERENCES Parts (PartID)
);