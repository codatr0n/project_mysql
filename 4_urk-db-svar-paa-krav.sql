USE urk;

-- OVERSIGT OVER DELTAGERNE PÅ LEJREN (trækker vra et view)
SELECT * 
FROM everybodyincamp
ORDER BY PersonID ASC;


-- HVEM BOR PÅ HVILKE VÆRELSER?
SELECT RoomName, ChildFirstName AS FirstName, ChildLastName AS LastName, 'Child' AS ChildAdult
FROM rooms INNER JOIN children_in_rooms
	ON rooms.RoomID = children_in_rooms.RoomID
INNER JOIN children
	ON children_in_rooms.ChildID = children.ChildID

UNION    

SELECT RoomName, VolunteerFirstName AS FirstName, VolunteerLastName AS LastName, 'Adult' AS ChildAdult
FROM rooms INNER JOIN volunteers_in_rooms
	ON rooms.RoomID = volunteers_in_rooms.RoomID
INNER JOIN volunteers
	ON volunteers_in_rooms.VolunteerID = volunteers.VolunteerID
ORDER BY RoomName;


-- GRUPPE INDDELING AF BØRN OG VOKSNE 
-- HVEM ER I GRUPPEN 'Killingerne'?

SELECT *,
    CASE
		WHEN Age IN (6, 7, 8) THEN 'Små børn'
        WHEN Age IN (9, 10, 11) THEN 'Mellemstore børn'
        WHEN Age IN (12, 13) THEN 'Store børn'
	END AS AgeGroup
FROM AllChildrenInclAge;

SELECT GroupName, ChildFirstName AS FirstName, ChildLastName AS LastName, Gender, 'Child' AS ChildAdult
FROM groups INNER JOIN children_in_groups
	ON groups.GroupID = children_in_groups.GroupID
INNER JOIN children
	ON children.ChildID = children_in_groups.ChildID
WHERE groups.GroupID = 1

UNION

SELECT GroupName, VolunteerFirstName AS FirstName, VolunteerLastName AS LastName, Gender, 'Adult' AS ChildAdult
FROM groups INNER JOIN volunteers_in_groups
	ON groups.GroupID = volunteers_in_groups.GroupID
INNER JOIN volunteers
	ON volunteers.volunteerID = volunteers_in_groups.volunteerID
WHERE groups.GroupID = 1;


-- OVERBLIK OVER AKTIVITETER
SELECT * FROM activities;

-- HVEM SKAL MED TIL 'Sommerland'?
SELECT ActivityName, ActivityDesc, CONCAT(ChildFirstName, ' ', ChildLastName) AS Participant
FROM children INNER JOIN child_has_activities
	ON children.childID = child_has_activities.childID
INNER JOIN activities
	ON child_has_activities.ActivityID = activities.ActivityID
WHERE ActivityName LIKE '%Sommerland%';


-- HVEM ARBEJDER TIRSDAG EFTERMIDDAG?

SELECT ShiftName, VolunteerFirstName, VolunteerLastName, Gender
FROM volunteers INNER JOIN shift_members
	ON volunteers.VolunteerID = shift_members.VolunteerID
INNER JOIN shifts
	ON shift_members.ShiftID = shifts.ShiftID
WHERE shifts.ShiftName LIKE '%Tirsdag eftermiddag%';


-- VIS VAGTPLAN FOR 'Tina Haugaard' - ID nr. 19

SELECT * FROM volunteers;

SELECT ShiftDate, ShiftBegin, ShiftEnd, ShiftName, CONCAT(VolunteerFirstName, ' ', VolunteerLastName) AS VolunteerName  
FROM volunteers INNER JOIN shift_members
	ON volunteers.VolunteerID = shift_members.VolunteerID
INNER JOIN shifts
	ON shift_members.ShiftID = shifts.ShiftID
WHERE VolunteerFirstName = 'Tina' AND VolunteerLastName = 'Haugaard';


-- Fødselsdagliste

DROP PROCEDURE IF EXISTS WhosHasBirthday;
DELIMITER $$  
CREATE PROCEDURE WhosHasBirthday(DateFrom DATE, DateTo DATE)   
BEGIN
	SELECT Birthday, `Name`, Age, ChildAdult  
    FROM everybodyincamp
    WHERE 
		(MONTH(Birthday) BETWEEN MONTH(DateFrom) AND MONTH(DateTo))
        AND 
		(DAY(Birthday) BETWEEN DAY(DateFrom) AND DAY(DateTo));
END $$

-- URK LEJREN ER FRA 21. Juli - 29. Juli ... er der nogen, der har fødselsdag?
Call WhosHasBirthday('2018-07-21', '2018-07-29');