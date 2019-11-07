USE urk;

# ------------------------------------------------------- #
#    QUERIES TO ROOMS                                     #
# ------------------------------------------------------- #

-- HVILKE BØRN BOR PÅ HVILKE VÆRELSER?

SELECT RoomName, ChildFirstName, ChildLastName
FROM rooms INNER JOIN children_in_rooms
	ON rooms.RoomID = children_in_rooms.RoomID
INNER JOIN children
	ON children_in_rooms.ChildID = children.ChildID;

-- HVOR MANGE BØRN BOR PÅ HVERT VÆRELSE?

SELECT rooms.RoomID, RoomName, COUNT(children_in_rooms.RoomID) AS ChildrenInRoom
FROM children_in_rooms INNER JOIN rooms
	ON children_in_rooms.RoomID = rooms.RoomID
GROUP BY children_in_rooms.RoomID;


-- HVILKE VOKSNE BOR PÅ HVILKE VÆRELSER?

SELECT RoomName, VolunteerFirstName, VolunteerLastName
FROM rooms INNER JOIN volunteers_in_rooms
	ON rooms.RoomID = volunteers_in_rooms.RoomID
INNER JOIN volunteers
	ON volunteers_in_rooms.VolunteerID = volunteers.VolunteerID;
    
    
-- HVILKE VÆRELSER ER TOMME?

SELECT rooms.RoomID, RoomName, RoomCapacity
FROM children_in_rooms RIGHT JOIN rooms
	ON children_in_rooms.RoomID = rooms.RoomID
WHERE 
	children_in_rooms.ChildID IS NULL;


# ------------------------------------------------------- #
#    QUERIES TO GROUPS                                    #
# ------------------------------------------------------- #

-- SHOW GROUPS

SELECT * FROM groups;


-- SHOW MEMBERS OF GROUPS

SELECT GroupName, ChildFirstName, ChildLastName, Gender
FROM groups INNER JOIN children_in_groups
	ON groups.GroupID = children_in_groups.GroupID
INNER JOIN children
	ON children.ChildID = children_in_groups.ChildID;

-- COUNT CHILDREN IN GROUPS

SELECT GroupName, COUNT(children_in_groups.GroupID) AS GroupCount
FROM groups INNER JOIN children_in_groups
	ON groups.GroupID = children_in_groups.GroupID
GROUP BY children_in_groups.GroupID;

-- COUNT VOLUNTEERS IN GROUPS

SELECT GroupName, COUNT(volunteers_in_groups.GroupID) AS GroupCount
FROM groups INNER JOIN volunteers_in_groups
	ON groups.GroupID = volunteers_in_groups.GroupID
GROUP BY volunteers_in_groups.GroupID;


# ------------------------------------------------------- #
#    QUERIES TO ACTIVITIES                                #
# ------------------------------------------------------- #

-- SHOW ACTIVITIES

SELECT * FROM activities;

-- SHOW ACTIVITIES WITH ASSIGNED VOLUNTEERS

SELECT ActivityName, ActivityDesc, CONCAT(VolunteerFirstName, ' ', VolunteerLastName) AS Volunteer
FROM volunteers INNER JOIN volunteer_has_activities
	ON volunteers.volunteerID = volunteer_has_activities.volunteerID
INNER JOIN activities
	ON volunteer_has_activities.ActivityID = activities.ActivityID;

--  ACTIVITIES WITH NO KIDS SIGNED UP?

SELECT *
FROM activities 
WHERE 
	ActivityID NOT IN (SELECT ActivityID FROM child_has_activities)
    AND
    ActivityName NOT LIKE '%aftenmøde%';
    
    
# ------------------------------------------------------- #
#    QUERIES TO SHIFTS                                    #
# ------------------------------------------------------- #


-- HVOR MANGE VOLUNTEERS ER PÅ HVERT SHIFT?
SELECT shifts.ShiftID, ShiftBegin, ShiftEnd, ShiftName, COUNT(shift_members.VolunteerID) AS VolunteersOnDuty
FROM shift_members INNER JOIN shifts
	ON shift_members.shiftID = shifts.ShiftID
GROUP BY shift_members.ShiftID;


-- HVEM ARBEJDER MANDAG FORMIDDAG?
SELECT ShiftName, VolunteerFirstName, VolunteerLastName 
FROM volunteers INNER JOIN shift_members
	ON volunteers.VolunteerID = shift_members.VolunteerID
INNER JOIN shifts
	ON shift_members.ShiftID = shifts.ShiftID
WHERE shifts.ShiftName LIKE '%Mandag formiddag%';


-- ANTAL VAGTER PER FRIVILLIGE
SELECT volunteers.VolunteerID, CONCAT(VolunteerFirstName, ' ', VolunteerLastName) AS Volunteer, COUNT(shift_members.VolunteerID) AS Vagter
FROM volunteers INNER JOIN shift_members
	ON volunteers.VolunteerID = shift_members.VolunteerID
GROUP BY shift_members.VolunteerID
ORDER BY Vagter; 


# ------------------------------------------------------- #
#    VIEWS EXAMPLES                                       #
# ------------------------------------------------------- #

-- LISTE MED ALLE BØRN INKL. BEREGNET KOLONNE MED ALDER (AGE)

SELECT * 
FROM allchildreninclage; 


-- SE ALLE VOKSNE MANDLIGE FRIVILLIGE
SELECT * 
FROM allvolunteersinclage
WHERE Gender = 'm';


-- FIND ALLE KVINDELIGE DELTAGERE PÅ LEJREN
SELECT * 
FROM everybodyincamp
WHERE Gender = 'f'; 


# ------------------------------------------------------- #
#    MORE STORED PROCEDURES                               #
# ------------------------------------------------------- #

-- WHO HAS BIRTHDAY?

DROP PROCEDURE IF EXISTS WhosHasBirthday;
DELIMITER $$  
CREATE PROCEDURE WhosHasBirthday(DateFrom DATE, DateTo DATE)   
BEGIN
	SELECT * 
    FROM everybodyincamp
    WHERE 
		(MONTH(Birthday) BETWEEN MONTH(DateFrom) AND MONTH(DateTo))
        AND 
		(DAY(Birthday) BETWEEN DAY(DateFrom) AND DAY(DateTo));
END $$

-- URK LEJREN ER FRA 21. Juli - 29. Juli ... er der nogen, der har fødselsdag?
CALL WhosHasBirthday('2018-07-21', '2018-07-29');

SELECT * FROM everybodyincamp WHERE MONTH(Birthday) = 7;





