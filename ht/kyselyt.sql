-- Kuka käyttää dronea
SELECT Drone.nimi AS Drone, Käyttäjä.nimi AS Käyttäjä
FROM Drone
JOIN Käyttäjä ON Drone.id = Käyttäjä.drone_kaytossa_id;

-- Onko drone vapaana 
SELECT nimi, 
       CASE 
           WHEN id IN (SELECT drone_kaytossa_id FROM Käyttäjä WHERE drone_kaytossa_id IS NOT NULL) 
           THEN 'Käytössä' 
           ELSE 'Vapaa' 
       END AS Tila
FROM Drone;

-- Dronen ottamat kuvat ja niiden käyttäjät
SELECT Drone.nimi AS Drone, Kuva.nimi AS Kuva, Käyttäjä.nimi AS Käyttäjä
FROM Kuva
JOIN Drone ON Kuva.drone_id = Drone.id
JOIN Käyttäjä ON Kuva.kayttaja_id = Käyttäjä.id;


-- Kuvan ottanut drone, kuvan analyysi, käyttäjä, ajankohta ja paikkatiedot
SELECT Kuva.nimi AS Kuva, Drone.nimi AS Drone, Käyttäjä.nimi AS Käyttäjä, 
       Kuva.analyysi_kuvaus, Kuva.ajankohta, Kuva.paikkatieto_lat, Kuva.paikkatieto_lon
FROM Kuva
JOIN Drone ON Kuva.drone_id = Drone.id
JOIN Käyttäjä ON Kuva.kayttaja_id = Käyttäjä.id;
