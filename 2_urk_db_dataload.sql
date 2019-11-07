USE urk;

# ---------------------------------------------------------------------- #
# Oprettet data i rooms                                                  #
# ---------------------------------------------------------------------- #
INSERT INTO rooms (RoomID, RoomName, RoomCapacity) 
VALUES	(DEFAULT, 'Værelse 100', 6),
		(DEFAULT, 'Værelse 101', 6),
		(DEFAULT, 'Værelse 102', 6),
		(DEFAULT, 'Værelse 103', 6),
		(DEFAULT, 'Værelse 104', 6),
		(DEFAULT, 'Værelse 105', 6),
		(DEFAULT, 'Værelse 106', 6),
		(DEFAULT, 'Værelse 107', 6),
		(DEFAULT, 'Værelse 108', 6),
		(DEFAULT, 'Værelse 109', 6),
		(DEFAULT, 'Værelse 110', 6),
        (DEFAULT, 'Værelse 200', 6),
		(DEFAULT, 'Værelse 201', 6),
		(DEFAULT, 'Værelse 202', 6),
		(DEFAULT, 'Værelse 203', 6),
		(DEFAULT, 'Værelse 204', 6),
		(DEFAULT, 'Værelse 205', 6),
		(DEFAULT, 'Værelse 206', 6),
		(DEFAULT, 'Værelse 207', 6),
		(DEFAULT, 'Værelse 208', 6),
		(DEFAULT, 'Værelse 209', 6),
		(DEFAULT, 'Værelse 210', 6),
        (DEFAULT, 'Værelse 300', 6),
        (DEFAULT, 'Værelse 301', 6),
		(DEFAULT, 'Værelse 302', 6),
		(DEFAULT, 'Værelse 303', 6),
		(DEFAULT, 'Værelse 304', 6),
		(DEFAULT, 'Værelse 305', 6),
		(DEFAULT, 'Værelse 306', 6),
		(DEFAULT, 'Værelse 307', 6),
		(DEFAULT, 'Værelse 308', 6),
		(DEFAULT, 'Værelse 309', 6),
		(DEFAULT, 'Værelse 310', 6);
        
-- SELECT * FROM rooms;

# ---------------------------------------------------------------------- #
# Oprettet data i groups                                                 #
# ---------------------------------------------------------------------- #

INSERT INTO groups (GroupID, GroupName, AgeMin, AgeMax) 
VALUES	(DEFAULT, 'Killingerne', 6, 8),
		(DEFAULT, 'Hvalpene', 6, 8),
		(DEFAULT, 'Ællingerne', 6, 8),
		(DEFAULT, 'Kattene', 9, 11),
		(DEFAULT, 'Hundene', 9, 11),
		(DEFAULT, 'Ænderne', 9, 11),
		(DEFAULT, 'Bjørnene', 12, 13),
		(DEFAULT, 'Ulvene', 12, 13)
        ;
        
-- SELECT * FROM groups;

# ---------------------------------------------------------------------- #
# Oprettet data i shifts                                                 #
# ---------------------------------------------------------------------- #

INSERT INTO shifts (ShiftID, ShiftName, ShiftDate, ShiftBegin, ShiftEnd) 
VALUES (DEFAULT, 'Søndag eftermiddag', '2018-07-22', '12:00:00', '16:59:00');

INSERT INTO shifts VALUES (DEFAULT, 'Søndag aften', '2018-07-22', '17:00:00', '22:00:00');

INSERT INTO shifts VALUES (DEFAULT, 'Mandag formiddag', '2018-07-23', '07:00:00', '11:59:00');
INSERT INTO shifts VALUES (DEFAULT, 'Mandag eftermiddag', '2018-07-23', '12:00:00', '16:59:00');
INSERT INTO shifts VALUES (DEFAULT, 'Mandag aften', '2018-07-23', '17:00:00', '22:00:00');

INSERT INTO shifts VALUES (DEFAULT, 'Tirsdag formiddag', '2018-07-24', '07:00:00', '11:59:00');
INSERT INTO shifts VALUES (DEFAULT, 'Tirsdag eftermiddag', '2018-07-24', '12:00:00', '16:59:00');
INSERT INTO shifts VALUES (DEFAULT, 'Tirsdag aften', '2018-07-24', '17:00:00', '22:00:00');

INSERT INTO shifts VALUES (DEFAULT, 'Onsdag formiddag', '2018-07-25', '07:00:00', '11:59:00');
INSERT INTO shifts VALUES (DEFAULT, 'Onsdag eftermiddag', '2018-07-25', '12:00:00', '16:59:00');
INSERT INTO shifts VALUES (DEFAULT, 'Onsdag aften', '2018-07-25', '17:00:00', '22:00:00');

INSERT INTO shifts VALUES (DEFAULT, 'Torsdag formiddag', '2018-07-26', '07:00:00', '11:59:00');
INSERT INTO shifts VALUES (DEFAULT, 'Torsdag eftermiddag', '2018-07-26', '12:00:00', '16:59:00');
INSERT INTO shifts VALUES (DEFAULT, 'Torsdag aften', '2018-07-26', '17:00:00', '22:00:00');

INSERT INTO shifts VALUES (DEFAULT, 'Fredag formiddag', '2018-07-27', '07:00:00', '11:59:00');
INSERT INTO shifts VALUES (DEFAULT, 'Fredag eftermiddag', '2018-07-27', '12:00:00', '16:59:00');
INSERT INTO shifts VALUES (DEFAULT, 'Fredag aften', '2018-07-27', '17:00:00', '22:00:00');

INSERT INTO shifts VALUES (DEFAULT, 'Lørdag formiddag', '2018-07-28', '07:00:00', '11:59:00');
INSERT INTO shifts VALUES (DEFAULT, 'Lørdag eftermiddag', '2018-07-28', '12:00:00', '16:59:00');

-- SELECT * FROM shifts;


# ---------------------------------------------------------------------- #
# Oprettet data i roles                                                  #
# ---------------------------------------------------------------------- #

/*
INSERT INTO roles (RoleID, RoleName) 
VALUES	(DEFAULT, 'Lejrledelse'),
		(DEFAULT, 'Køkkenchef'),
        (DEFAULT, 'Køkkenpersonale'),
        (DEFAULT, 'Ansvarlig for aktivitet'),
        (DEFAULT, 'Voksen deltager i aktivitet'),
        (DEFAULT, 'Barn deltager i aktivitet');
*/

-- SELECT * FROM roles;

# ---------------------------------------------------------------------- #
# Oprettet data i activities                                             #
# ---------------------------------------------------------------------- #

INSERT INTO activities (ActivityID, ActivityName, ActivityDesc, ActivityDate, ActivityBegin, ActivityEnd)
VALUES (DEFAULT, 'Børn ankomst', 'Velkommen til alle årets deltagere', '2018-07-22', '12:00:00', '13:00:00');

INSERT INTO activities 
VALUES (DEFAULT, 'Vandkamp', 'Vi leger med vandpistoler og vandbalonner', '2018-07-22', '15:00:00', '17:00:00'),
       (DEFAULT, 'Beautysalon', 'Pigerne duller hår og lægger makeup', '2018-07-22', '15:00:00', '17:00:00'),
       (DEFAULT, 'Godnatlæsning', 'De voksne læser godnathistorier', '2018-07-22', '20:00:00', '21:00:00'),
       (DEFAULT, 'Godnatlæsning', 'De voksne læser godnathistorier', '2018-07-24', '20:00:00', '21:00:00'),
       (DEFAULT, 'Godnatlæsning', 'De voksne læser godnathistorier', '2018-07-25', '20:00:00', '21:00:00'),
       (DEFAULT, 'Aftenmøde', 'Obligatorisk for alle frivillige - vi evaluerer på dagen', '2018-07-22', '22:00:00', '23:59:00'),
	   (DEFAULT, 'Aftenmøde', 'Obligatorisk for alle frivillige - vi evaluerer på dagen', '2018-07-23', '22:00:00', '23:59:00'),
       (DEFAULT, 'Aftenmøde', 'Obligatorisk for alle frivillige - vi evaluerer på dagen', '2018-07-24', '22:00:00', '23:59:00'),
       (DEFAULT, 'Aftenmøde', 'Obligatorisk for alle frivillige - vi evaluerer på dagen', '2018-07-25', '22:00:00', '23:59:00'),
       (DEFAULT, 'Aftenmøde', 'Obligatorisk for alle frivillige - vi evaluerer på dagen', '2018-07-26', '22:00:00', '23:59:00'),
       (DEFAULT, 'Aftenmøde', 'Obligatorisk for alle frivillige - vi evaluerer på dagen', '2018-07-27', '22:00:00', '23:59:00'),
       (DEFAULT, 'Frokost', '', '2018-07-22', '13:00:00', '13:59:00'),
       (DEFAULT, 'Frokost', '', '2018-07-23', '12:00:00', '12:59:00'),
       (DEFAULT, 'Frokost', '', '2018-07-24', '12:00:00', '12:59:00'),
       (DEFAULT, 'Frokost', '', '2018-07-25', '12:00:00', '12:59:00'),
       (DEFAULT, 'Frokost', '', '2018-07-26', '12:00:00', '12:59:00'),
       (DEFAULT, 'Frokost', '', '2018-07-28', '12:00:00', '12:59:00'),
       (DEFAULT, 'Morgenmad', '', '2018-07-23', '08:00:00', '08:59:00'),
       (DEFAULT, 'Morgenmad', '', '2018-07-24', '08:00:00', '08:59:00'),
       (DEFAULT, 'Morgenmad', '', '2018-07-25', '08:00:00', '08:59:00'),
       (DEFAULT, 'Morgenmad', '', '2018-07-26', '08:00:00', '08:59:00'),
       (DEFAULT, 'Morgenmad', '', '2018-07-27', '08:00:00', '08:59:00'),
       (DEFAULT, 'Morgenmad', '', '2018-07-28', '08:00:00', '08:59:00'),
       (DEFAULT, 'Aftensmad', '', '2018-07-22', '18:00:00', '18:59:00'),
       (DEFAULT, 'Aftensmad', '', '2018-07-23', '18:00:00', '18:59:00'),
       (DEFAULT, 'Aftensmad', '', '2018-07-24', '18:00:00', '18:59:00'),
       (DEFAULT, 'Aftensmad', '', '2018-07-25', '18:00:00', '18:59:00'),
       (DEFAULT, 'Aftensmad', '', '2018-07-26', '18:00:00', '18:59:00'),
       (DEFAULT, 'Aftensmad', '', '2018-07-27', '18:00:00', '18:59:00'),
       (DEFAULT, 'Hatteworkshop', 'Byg din egen fantasifulde hat', '2018-07-23', '10:00:00', '12:00:00'),
	   (DEFAULT, 'Tegn & gæt', 'Kan du gætte hvad de andre tegner?', '2018-07-23', '14:00:00', '16:00:00'),
       (DEFAULT, 'Nak & Æd', 'Overlevelsestur i skoven. Prøv at skyde med luftgevær. Mad på bål.', '2018-07-23', '15:00:00', '22:00:00'),
       (DEFAULT, 'Fast & Furious', 'Mød racerkører Jason Watt. Prøv at køre i hurtige racerbiler (kun for store børn)', '2018-07-24', '10:00:00', '12:00:00'),
       (DEFAULT, 'Flødebolle workshop', 'Vi laver vores egne lækre flødeboller', '2018-07-25', '10:00:00', '12:00:00'),
       (DEFAULT, 'Fodboldturnering', 'Børne VM i fodbold. Hvem bliver mestre i år?', '2018-07-24', '14:00:00', '17:00:00'),
       (DEFAULT, 'Bondegårdstur', 'Klap alle dyrerne på bondegården', '2018-07-25', '13:00:00', '17:00:00'),
       (DEFAULT, 'Pokemon GO Live!', 'De voksne klæder sig ud som Pokemons. Kan du fange dem alle?', '2018-07-26', '10:00:00', '12:00:00'),
       (DEFAULT, 'Hike', '10km gåtur i skoven', '2018-07-26', '14:00:00', '17:00:00'),
       (DEFAULT, 'Børne MGP', 'Stil op og syng din favoritsang', '2018-07-26', '19:00:00', '22:00:00'),
       (DEFAULT, 'Sommerland Sjælland', 'Heldagstur til Sommerland Sjælland og vandland', '2018-07-27', '09:00:00', '17:00:00'),
       (DEFAULT, 'Børnedisco', 'Discokugler og fed musik den sidste aften', '2018-07-27', '19:00:00', '22:00:00'),
       (DEFAULT, 'Børn hjem', 'Vi krammer farvel og siger tak for I år', '2018-07-28', '15:00:00', '16:00:00');


-- SELECT * FROM activities ORDER BY ActivityDate, ActivityBegin ASC;


# ---------------------------------------------------------------------- #
# Oprettet data i children                                               #
# ---------------------------------------------------------------------- #

INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Thea', 'Kjærgaard', 'f', '2012-04-27');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Alvilda', 'Nikolajsen', 'f', '2012-03-05');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Hannah', 'Rohde', 'f', '2012-01-09');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Sofie', 'Dinesen', 'f', '2012-01-03');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Lennart', 'Justesen', 'm', '2011-12-14');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Ronnie', 'Clemmensen', 'm', '2011-12-10');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Martin', 'Daugaard', 'm', '2011-11-08');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Arnold', 'Skaarup', 'm', '2011-11-03');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Thora', 'Skou', 'f', '2011-09-14');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Lotte', 'Gregersen', 'f', '2011-08-29');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Erika', 'Jansen', 'f', '2011-08-17');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Stella', 'Kofod', 'f', '2011-07-05');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Claus', 'Kvist', 'm', '2011-03-11');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Gustav', 'Duus', 'm', '2011-03-02');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Paul', 'Axelsen', 'm', '2011-01-15');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Anette', 'Kirk', 'f', '2010-12-17');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Linette', 'Hjort', 'f', '2010-12-01');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Jane', 'Hviid', 'f', '2010-11-30');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Jenny', 'Hjorth', 'f', '2010-10-20');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Inge-Lise', 'Pallesen', 'f', '2010-10-17');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Gorm', 'Mikkelsen', 'm', '2010-10-06');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Troels', 'Simonsen', 'm', '2010-09-23');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Verner', 'Rohde', 'm', '2010-09-19');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Kenn', 'Dalgaard', 'm', '2010-05-10');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Olav', 'Thomsen', 'm', '2010-05-01');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Marina', 'Michaelsen', 'f', '2010-04-16');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Ruth', 'Christiansen', 'f', '2010-03-27');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Grethe', 'Buhl', 'f', '2010-02-08');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Mathilde', 'Nissen', 'f', '2009-12-27');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Valdemar', 'Lorentzen', 'm', '2009-08-23');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Tony', 'Pallesen', 'm', '2009-05-14');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Jytte', 'Bjerregaard', 'f', '2009-04-17');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Jesper', 'Borup', 'm', '2009-03-01');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Jacob', 'Fisker', 'm', '2009-03-01');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Bjarne', 'Christiansen', 'm', '2009-02-14');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Bjarne', 'Michaelsen', 'm', '2009-02-06');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Frans', 'Mørk', 'm', '2009-01-19');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Valdemar', 'Philipsen', 'm', '2009-01-13');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Ditte', 'Kjeldsen', 'f', '2008-11-28');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Josephine', 'Gade', 'f', '2008-11-10');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Nora', 'Fischer', 'f', '2008-11-09');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Nelly', 'Birk', 'f', '2008-10-16');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Jeanne', 'Mikkelsen', 'f', '2008-09-06');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Ann', 'Bay', 'f', '2008-08-31');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Dennis', 'Mølgaard', 'm', '2008-06-12');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Olav', 'Damgaard', 'm', '2008-06-11');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Peder', 'Hjort', 'm', '2008-05-31');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Loke', 'Bjerregaard', 'm', '2008-03-21');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Katharina', 'Elkjær', 'f', '2008-01-19');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Benjamin', 'Johannsen', 'm', '2007-12-31');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Gudrun', 'Ottesen', 'f', '2007-09-09');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Britta', 'Bach', 'f', '2007-08-05');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Esther', 'Steffensen', 'f', '2007-06-11');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Jonna', 'Eriksen', 'f', '2007-06-05');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Kristine', 'Isaksen', 'f', '2007-05-03');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Alex', 'Nielsen', 'm', '2007-04-25');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Ole', 'Borg', 'm', '2007-03-29');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Toke', 'Olesen', 'm', '2007-02-09');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Leif', 'Birch', 'm', '2007-01-26');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Erik', 'Kofoed', 'm', '2007-01-16');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Jeanette', 'Torp', 'f', '2006-05-11');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Anne-Sofie', 'Jakobsen', 'f', '2006-05-06');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Margit', 'Jepsen', 'f', '2006-07-26');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Linette', 'Johannesen', 'f', '2006-02-14');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Stella', 'Frost', 'f', '2006-01-26');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Hans', 'Markussen', 'm', '2005-12-01');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Søren', 'Birk', 'm', '2005-09-29');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Ludvig', 'Erichsen', 'm', '2005-07-24');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Jørgen', 'Steen', 'm', '2005-08-05');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Kaj', 'Troelsen', 'm', '2005-06-23');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Simone', 'Hougaard', 'f', '2005-06-08');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Martha', 'Skou', 'f', '2005-05-28');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Luna', 'Kragh', 'f', '2005-05-16');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Pia', 'Bendixen', 'f', '2005-04-22');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Ann', 'Abrahamsen', 'f', '2005-02-18');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Per', 'Mogensen', 'm', '2005-01-16');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Thor', 'Overgaard', 'm', '2005-01-06');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Benjamin', 'Mølgaard', 'm', '2004-07-20');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Valdemar', 'Bech', 'm', '2004-08-31');
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) VALUES (DEFAULT, 'Thorbjørn', 'Rohde', 'm', '2004-07-31');

-- SELECT *, TIMESTAMPDIFF(YEAR, Birthday, CURDATE()) AS Age FROM children;

# ---------------------------------------------------------------------- #
#   Put children in rooms                                                #
# ---------------------------------------------------------------------- #

INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (1, 1);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (2, 2);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (3, 3);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (4, 4);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (5, 5);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (6, 6);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (7, 7);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (8, 8);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (9, 1);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (10, 2);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (11, 3);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (12, 4);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (13, 5);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (14, 6);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (15, 7);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (16, 8);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (17, 1);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (18, 2);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (19, 3);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (20, 4);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (21, 5);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (22, 6);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (23, 7);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (24, 8);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (25, 1);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (26, 2);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (27, 3);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (28, 5);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (29, 6);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (30, 7);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (31, 11);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (32, 12);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (33, 13);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (34, 14);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (35, 15);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (36, 16);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (37, 17);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (38, 18);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (39, 11);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (40, 12);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (41, 13);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (42, 14);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (43, 15);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (44, 16);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (45, 17);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (46, 18);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (47, 11);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (48, 12);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (49, 13);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (50, 14);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (51, 15);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (52, 16);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (53, 17);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (54, 18);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (55, 11);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (56, 12);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (57, 13);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (58, 14);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (59, 15);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (60, 16);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (61, 17);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (62, 18);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (63, 22);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (64, 23);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (65, 24);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (66, 20);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (67, 21);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (68, 22);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (69, 23);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (70, 24);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (71, 20);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (72, 21);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (73, 22);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (74, 23);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (75, 24);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (76, 20);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (77, 21);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (78, 22);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (79, 23);
INSERT INTO children_in_rooms(ChildID, RoomID) VALUES (80, 24);

# ---------------------------------------------------------------------- #
#   Put children in groups                                               #
# ---------------------------------------------------------------------- #

INSERT INTO children_in_groups(ChildID, GroupID) VALUES (1, 1);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (2, 2);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (3, 3);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (4, 1);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (5, 2);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (6, 3);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (7, 1);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (8, 2);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (9, 3);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (10, 1);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (11, 2);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (12, 3);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (13, 1);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (14, 2);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (15, 3);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (16, 1);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (17, 2);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (18, 3);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (19, 1);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (20, 2);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (21, 3);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (22, 1);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (23, 2);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (24, 3);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (25, 1);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (26, 2);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (27, 3);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (28, 1);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (29, 2);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (30, 3);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (31, 4);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (32, 5);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (33, 6);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (34, 4);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (35, 5);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (36, 6);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (37, 4);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (38, 5);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (39, 6);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (40, 4);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (41, 5);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (42, 6);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (43, 4);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (44, 5);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (45, 6);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (46, 4);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (47, 5);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (48, 6);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (49, 4);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (50, 5);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (51, 6);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (52, 4);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (53, 5);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (54, 6);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (55, 4);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (56, 5);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (57, 6);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (58, 4);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (59, 5);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (60, 6);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (61, 7);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (62, 8);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (63, 7);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (64, 8);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (65, 7);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (66, 8);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (67, 7);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (68, 8);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (69, 7);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (70, 8);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (71, 7);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (72, 8);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (73, 7);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (74, 8);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (75, 7);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (76, 8);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (77, 7);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (78, 8);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (79, 7);
INSERT INTO children_in_groups(ChildID, GroupID) VALUES (80, 8);


# ---------------------------------------------------------------------- #
# Oprettet data i volunteers                                             #
# ---------------------------------------------------------------------- #

INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Torben', 'Abrahamsen', 'm', '1974-01-07');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Danny', 'Antonsen', 'm', '1980-04-06');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Viola', 'Jensen', 'f', '1985-07-27');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Lilly', 'Bang', 'f', '1987-11-23');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Bruno', 'Bendixen', 'm', '1976-04-18');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Alexander', 'Bertelsen', 'm', '1977-09-27');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Leif', 'Bisgaard', 'm', '1978-04-13');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Jenny', 'Bjerg', 'f', '1995-04-29');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Clara', 'Borg', 'f', '1992-05-09');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Connie', 'Brodersen', 'f', '1983-07-23');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Josefine', 'Nielsen', 'f', '1983-04-28');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Thomas', 'Buch', 'm', '1983-06-19');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Laura', 'Callesen', 'f', '1984-03-29');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Casper', 'Carstensen', 'm', '1984-12-21');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Susanne', 'Danielsen', 'f', '1985-01-08');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Eva', 'Erichsen', 'f', '1986-06-04');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Pernille', 'Fuglsang', 'f', '1988-05-19');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Nora', 'Hartmann', 'f', '1988-12-14');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Tina', 'Haugaard', 'f', '1990-03-04');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Mette', 'Hedegaard', 'f', '1990-08-15');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Georg', 'Holm', 'm', '1991-06-10');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Bo', 'Hougaard', 'm', '1993-05-31');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Tom', 'Sørensen', 'm', '1993-07-19');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Rita', 'Johannessen', 'f', '1994-07-17');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Diana', 'Johansen', 'f', '1995-05-20');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Isabella', 'Johnsen', 'f', '1981-12-31');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Knud', 'Kirkegaard', 'm', '1982-01-01');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Sally', 'Kragh', 'f', '1982-02-19');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Christina', 'Kristoffersen', 'f', '1982-02-24');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Mai', 'Ladefoged', 'f', '1983-02-19');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Lauritz', 'Lange', 'm', '1984-03-15');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Aske', 'Larsen', 'm', '1985-01-24');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Jens', 'Laugesen', 'm', '1987-03-26');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Jytte', 'Lauritzen', 'f', '1987-07-19');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Troels', 'Laursen', 'm', '1987-10-26');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Laila', 'Lind', 'f', '1987-11-17');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Gorm', 'Lund', 'm', '1988-03-05');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Jeanett', 'Matthiesen', 'f', '1989-06-17');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Christoffer', 'Nedergaard', 'm', '1989-10-30');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Sonja', 'Nikolajsen', 'f', '1990-01-08');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Jannie', 'Nygaard', 'f', '1990-04-20');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Ulf', 'Olsen', 'm', '1990-08-21');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Elisa', 'Ravn', 'f', '1991-02-23');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Caroline', 'Skovgaard', 'f', '1991-07-15');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Charlotte', 'Skaarup', 'f', '1992-05-17');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Jakob', 'Sloth', 'm', '1992-11-03');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Boje', 'Thorsen', 'm', '1994-09-14');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Therese', 'Thøgersen', 'f', '1995-06-16');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Hertha', 'Vester', 'f', '1996-07-15');
INSERT INTO volunteers(VolunteerID, VolunteerFirstName, VolunteerLastName, Gender, Birthday) VALUES (DEFAULT, 'Yrsa', 'Rasmussen', 'f', '1996-09-19');

-- SELECT *, TIMESTAMPDIFF(YEAR, Birthday, CURDATE()) AS Age FROM volunteers;


# ---------------------------------------------------------------------- #
#   Put volunteers in rooms                                              #
# ---------------------------------------------------------------------- #

INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (1, 30);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (2, 30);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (3, 33);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (4, 33);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (5, 31);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (6, 31);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (7, 31);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (8, 32);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (9, 32);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (10, 32);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (11, 9);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (12, 10);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (13, 9);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (14, 10);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (15, 9);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (16, 9);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (17, 9);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (18, 9);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (19, 25);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (20, 25);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (21, 10);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (22, 10);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (23, 10);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (24, 25);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (25, 25);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (26, 25);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (27, 10);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (28, 25);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (29, 26);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (30, 26);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (31, 27);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (32, 27);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (33, 27);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (34, 26);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (35, 27);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (36, 26);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (37, 27);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (38, 26);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (39, 27);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (40, 26);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (41, 28);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (42, 29);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (43, 28);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (44, 28);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (45, 28);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (46, 29);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (47, 29);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (48, 28);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (49, 28);
INSERT INTO volunteers_in_rooms(VolunteerID, RoomID) VALUES (50, 29);

# ---------------------------------------------------------------------- #
#   Put volunteers in groups                                             #
# ---------------------------------------------------------------------- #

/*
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (1, 9);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (2, 9);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (3, 9);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (4, 9);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (5, 10);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (6, 10);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (7, 10);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (8, 10);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (9, 10);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (10, 10);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (11, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (12, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (13, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (14, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (15, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (16, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (17, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (18, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (19, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (20, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (21, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (22, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (23, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (24, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (25, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (26, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (27, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (28, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (29, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (30, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (31, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (32, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (33, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (34, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (35, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (36, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (37, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (38, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (39, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (40, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (41, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (42, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (43, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (44, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (45, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (46, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (47, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (48, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (49, 11);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (50, 11);
*/
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (11, 1);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (12, 2);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (13, 3);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (14, 4);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (15, 5);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (16, 6);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (17, 7);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (18, 8);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (19, 1);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (20, 2);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (21, 3);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (22, 4);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (23, 5);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (24, 6);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (25, 7);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (26, 8);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (27, 1);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (28, 2);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (29, 3);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (30, 4);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (31, 5);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (32, 6);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (33, 7);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (34, 8);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (35, 1);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (36, 2);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (37, 3);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (38, 4);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (39, 5);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (40, 6);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (41, 7);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (42, 8);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (43, 1);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (44, 2);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (45, 3);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (46, 4);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (47, 5);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (48, 6);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (49, 7);
INSERT INTO volunteers_in_groups(VolunteerID, GroupID) VALUES (50, 8);


# ---------------------------------------------------------------------- #
#   Put volunteers in shift plan                                         #
# ---------------------------------------------------------------------- #

-- Shift plan 1
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (11, 1), (11, 2), (11, 4), (11, 5), (11, 7), (11, 9), (11, 10), (11, 12), (11, 13), (11, 15), (11, 16), (11, 18), (11, 19);
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (13, 1), (13, 2), (13, 4), (13, 5), (13, 7), (13, 9), (13, 10), (13, 12), (13, 13), (13, 15), (13, 16), (13, 18), (13, 19);
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (15, 1), (15, 2), (15, 4), (15, 5), (15, 7), (15, 9), (15, 10), (15, 12), (15, 13), (15, 15), (15, 16), (15, 18), (15, 19);
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (19, 1), (19, 2), (19, 4), (19, 5), (19, 7), (19, 9), (19, 10), (19, 12), (19, 13), (19, 15), (19, 16), (19, 18), (19, 19);
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (25, 1), (25, 2), (25, 4), (25, 5), (25, 7), (25, 9), (25, 10), (25, 12), (25, 13), (25, 15), (25, 16), (25, 18), (25, 19);

-- Shift plan 2
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (12, 1), (12, 2), (12, 3), (12, 5), (12, 6), (12, 8), (12, 10), (12, 11), (12, 13), (12, 14), (12, 16), (12, 17), (12, 19);
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (22, 1), (22, 2), (22, 3), (22, 5), (22, 6), (22, 8), (22, 10), (22, 11), (22, 13), (22, 14), (22, 16), (22, 17), (22, 19);
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (26, 1), (26, 2), (26, 3), (26, 5), (26, 6), (26, 8), (26, 10), (26, 11), (26, 13), (26, 14), (26, 16), (26, 17), (26, 19);
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (29, 1), (29, 2), (29, 3), (29, 5), (29, 6), (29, 8), (29, 10), (29, 11), (29, 13), (29, 14), (29, 16), (29, 17), (29, 19);
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (31, 1), (31, 2), (31, 3), (31, 5), (31, 6), (31, 8), (31, 10), (31, 11), (31, 13), (31, 14), (31, 16), (31, 17), (31, 19);

-- Shift plan 3
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (14, 1), (14, 3), (14, 4), (14, 6), (14, 7), (14, 9), (14, 12), (14, 14), (14, 15), (14, 17), (14, 19);
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (16, 1), (16, 3), (16, 4), (16, 6), (16, 7), (16, 9), (16, 12), (16, 14), (16, 15), (16, 17), (16, 19);
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (17, 1), (17, 3), (17, 4), (17, 6), (17, 7), (17, 9), (17, 12), (17, 14), (17, 15), (17, 17), (17, 19);
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (27, 1), (27, 3), (27, 4), (27, 6), (27, 7), (27, 9), (27, 12), (27, 14), (27, 15), (27, 17), (27, 19);
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (28, 1), (28, 3), (28, 4), (28, 6), (28, 7), (28, 9), (28, 12), (28, 14), (28, 15), (28, 17), (28, 19);

-- Shift plan 4
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (32, 1), (32, 2), (32, 4), (32, 5), (32, 8), (32, 10), (32, 11), (32, 13), (32, 14), (32, 16), (32, 18), (32, 19);
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (33, 1), (33, 2), (33, 4), (33, 5), (33, 8), (33, 10), (33, 11), (33, 13), (33, 14), (33, 16), (33, 18), (33, 19);
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (34, 1), (34, 2), (34, 4), (34, 5), (34, 8), (34, 10), (34, 11), (34, 13), (34, 14), (34, 16), (34, 18), (34, 19);
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (35, 1), (35, 2), (35, 4), (35, 5), (35, 8), (35, 10), (35, 11), (35, 13), (35, 14), (35, 16), (35, 18), (35, 19);
INSERT INTO shift_members(VolunteerID, ShiftID) 
	VALUES (38, 1), (38, 2), (38, 4), (38, 5), (38, 8), (38, 10), (38, 11), (38, 13), (38, 14), (38, 16), (38, 18), (38, 19);
    
-- SELECT * FROM shift_members;


# ---------------------------------------------------------------------- #
#   Add Children to activities                                           #
# ---------------------------------------------------------------------- #

INSERT INTO child_has_activities(ChildID, ActivityID)
	VALUES (1, 2), (1, 4), (1, 6), (1, 31), (1, 33), (1, 37), (1, 38), (1, 41);
INSERT INTO child_has_activities(ChildID, ActivityID)
	VALUES (2, 2), (2, 4), (2, 6), (2, 31), (2, 33), (2, 37), (2, 38), (2, 41);
INSERT INTO child_has_activities(ChildID, ActivityID)
	VALUES (3, 2), (3, 4), (3, 6), (3, 31), (3, 33), (3, 37), (3, 38), (3, 41);
INSERT INTO child_has_activities(ChildID, ActivityID)
	VALUES (4, 2), (4, 4), (4, 6), (4, 31), (4, 33), (4, 37), (4, 38), (4, 41);
INSERT INTO child_has_activities(ChildID, ActivityID)
	VALUES (5, 2), (5, 4), (5, 6), (5, 31), (5, 33), (5, 37), (5, 38), (5, 41);
    
INSERT INTO child_has_activities(ChildID, ActivityID)
	VALUES (6, 5), (6, 32), (6, 39), (6, 40), (6, 42);
INSERT INTO child_has_activities(ChildID, ActivityID)
	VALUES (7, 5), (7, 32), (7, 39), (7, 40), (7, 42);
INSERT INTO child_has_activities(ChildID, ActivityID)
	VALUES (8, 5), (8, 32), (8, 39), (8, 40), (8, 42);
INSERT INTO child_has_activities(ChildID, ActivityID)
	VALUES (9, 5), (9, 32), (9, 39), (9, 40), (9, 42);
INSERT INTO child_has_activities(ChildID, ActivityID)
	VALUES (10, 5), (10, 32), (10, 39), (10, 40), (10, 42);

