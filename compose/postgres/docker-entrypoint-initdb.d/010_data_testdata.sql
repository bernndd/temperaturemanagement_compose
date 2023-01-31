\c data;
DO
$$
    BEGIN
	
		INSERT INTO rooms (room_id, name, size, height)
        VALUES  ('room_1', 'Schlafzimmer Kind', 10.64, 2.3),
				('room_2', 'Schlafzimmer Eltern', 12.98, 2.3),
				('room_3', 'Küche', 4.67, 2.3),
				('room_4', 'Bad', 6.32, 2.3),
				('room_5', 'Flur', 6.95, 2.3),
				('room_6', 'Abstellraum', 2.54, 2.3),
				('room_7', 'Wohnzimmer', 23.73, 2.3);
				
		INSERT INTO sensor_config (sensor_id, name, unit, profil_id, room_id)
        VALUES 	('sensor_1', 'tempSensor1', '°C', 'profil_1', 'room_1'),
				('sensor_2', 'tempSensor2', '°C', 'profil_1', 'room_2'),
				('sensor_3', 'tempSensor3', '°C', 'profil_3', 'room_3'),
				('sensor_4', 'tempSensor4', '°C', 'profil_2', 'room_4'),
				('sensor_5', 'tempSensor5', '°C', 'profil_4', 'room_5'),
				('sensor_6', 'tempSensor6', '°C', 'profil_4', 'room_6'),
				('sensor_7', 'tempSensor7', '°C', 'profil_3', 'room_7');		
				
		INSERT INTO profil_config (profil_id, name)
		VALUES 	('profil_1', 'Schlafzimmer Profil'),
				('profil_2', 'Bad Profil'),
				('profil_3', 'Wohn Profil'),
				('profil_4', 'Sonstige Profil');
				

    END
$$ LANGUAGE plpgsql;
