
-- Drone-tauluun lisättävä data
INSERT INTO Drone (nimi, merkki, malli, lisäinfo) VALUES 
('Drone Alpha', 'DJI', 'Phantom 4', 'Kestävä ja tarkka drone'),
('Drone Beta', 'Parrot', 'Anafi', 'Sopii matalalentokuvaukseen'),
('Drone Gamma', 'DJI', 'Mavic Air 2', 'Pitkä akunkesto'),
('Drone Delta', 'Autel', 'Evo Lite+', 'Hyvä yökuvauskyky'),
('Drone Epsilon', 'Skydio', 'Skydio 2', 'Itsenäinen ohjausjärjestelmä');

-- Käyttäjä-tauluun lisättävä data
INSERT INTO Käyttäjä (nimi, tunnus, salasana, token, drone_kaytossa_id) VALUES 
('Kalle Virtanen', 'kvirtanen', 'salasana123', 'token123', 1),
('Milla Niemi', 'mniemi', 'salasana456', 'token456', 2),
('Teemu Koskinen', 'tkoskinen', 'salasana789', 'token789', NULL),
('Elina Laine', 'elaine', 'salasana111', 'token111', 3),
('Jari Korhonen', 'jkorhonen', 'salasana222', 'token222', NULL);

-- Kuva-tauluun lisättävä data
INSERT INTO Kuva (nimi, analyysi_kuvaus, paikkatieto_lat, paikkatieto_lon, ajankohta, drone_id, kayttaja_id) VALUES 
('Metsäalue 1', 'Tiheä metsä, havaittu polkuja', 60.192059, 24.945831, '2023-08-01 10:00:00', 1, 1),
('Peltoalue 1', 'Analysoitu kosteustasoa', 60.205490, 25.018810, '2023-08-01 11:30:00', 2, 2),
('Järvimaisema', 'Veden laatu analysoitu', 60.209900, 24.964200, '2023-08-02 09:15:00', 3, 4),
('Metsäalue 2', 'Havaittu riistaeläimiä', 60.171530, 24.941020, '2023-08-02 14:00:00', 1, 1),
('Ranta-alue', 'Vesirajan tila analysoitu', 60.161930, 24.946880, '2023-08-03 13:45:00', 2, 2);
