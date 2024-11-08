-- Drone taulu
CREATE TABLE Drone (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nimi VARCHAR(50) NOT NULL,
    merkki VARCHAR(50) NOT NULL,
    malli VARCHAR(50) NOT NULL,
    lisäinfo TEXT
);

-- Käyttäjä taulu
CREATE TABLE Käyttäjä (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nimi VARCHAR(50) NOT NULL,
    tunnus VARCHAR(50) NOT NULL UNIQUE,
    salasana VARCHAR(255) NOT NULL,  -- Hashattu salasana
    token VARCHAR(255),
    drone_kaytossa_id INT,
    FOREIGN KEY (drone_kaytossa_id) REFERENCES Drone(id)
);

-- Kuva taulu
CREATE TABLE Kuva (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nimi VARCHAR(50) NOT NULL,
    analyysi_kuvaus TEXT,
    paikkatieto_lat DECIMAL(9,6) NOT NULL,   -- Leveysaste
    paikkatieto_lon DECIMAL(9,6) NOT NULL,   -- Pituusaste
    ajankohta DATETIME NOT NULL,
    drone_id INT,
    kayttaja_id INT,
    FOREIGN KEY (drone_id) REFERENCES Drone(id),
    FOREIGN KEY (kayttaja_id) REFERENCES Käyttäjä(id)
);
