INSERT INTO vet (first_name, last_name, email, hourly_rate) SELECT 'James', 'Carter', 'j.carter@petclinic.org', 30 WHERE NOT EXISTS (SELECT * FROM vet WHERE id=1);
INSERT INTO vet (first_name, last_name, email, hourly_rate) SELECT 'Helen', 'Leary', 'h.leary@petclinic.org',  40 WHERE NOT EXISTS (SELECT * FROM vet WHERE id=2);
INSERT INTO vet (first_name, last_name, email, hourly_rate) SELECT 'Linda', 'Douglas', 'l.douglas@petclinic.org', 25 WHERE NOT EXISTS (SELECT * FROM vet WHERE id=3);
INSERT INTO vet (first_name, last_name, email, hourly_rate) SELECT 'Rafael', 'Ortega', 'r.ortega@petclinic.org', 24 WHERE NOT EXISTS (SELECT * FROM vet WHERE id=4);
INSERT INTO vet (first_name, last_name, email, hourly_rate) SELECT 'Henry', 'Stevens', 'h.stevens@petclinic.org', 35 WHERE NOT EXISTS (SELECT * FROM vet WHERE id=5);
INSERT INTO vet (first_name, last_name, email, hourly_rate) SELECT 'Sharon', 'Jenkins', 's.jenkins@petclinic.org', 38 WHERE NOT EXISTS (SELECT * FROM vet WHERE id=6);

INSERT INTO speciality (name) SELECT 'radiology' WHERE NOT EXISTS (SELECT * FROM speciality WHERE id=1);
INSERT INTO speciality (name) SELECT 'surgery' WHERE NOT EXISTS (SELECT * FROM speciality WHERE id=2);
INSERT INTO speciality (name) SELECT 'dentistry' WHERE NOT EXISTS (SELECT * FROM speciality WHERE id=3);

INSERT INTO vet_specialities (vet_id, specialities_id) VALUES (2, 1) ON CONFLICT (vet_id, specialities_id) DO NOTHING;
INSERT INTO vet_specialities (vet_id, specialities_id) VALUES (3, 2) ON CONFLICT (vet_id, specialities_id) DO NOTHING;
INSERT INTO vet_specialities (vet_id, specialities_id) VALUES (3, 3) ON CONFLICT (vet_id, specialities_id) DO NOTHING;
INSERT INTO vet_specialities (vet_id, specialities_id) VALUES (4, 2) ON CONFLICT (vet_id, specialities_id) DO NOTHING;
INSERT INTO vet_specialities (vet_id, specialities_id) VALUES (5, 1) ON CONFLICT (vet_id, specialities_id) DO NOTHING;
