-- DATABASE for Ungdommens Røde Kors "urk"


CREATE SCHEMA urk;
USE urk;


# ------------------------------------------- #
#	Opretter tabeller uden  foreign keys      #
# ------------------------------------------- #


CREATE TABLE `rooms` (
	RoomID			INT AUTO_INCREMENT,
    RoomName		NVARCHAR(45),
    RoomCapacity 	INT DEFAULT 6,
    PRIMARY KEY (RoomID)
    );
    
CREATE TABLE `groups` (
	GroupID			INT AUTO_INCREMENT,
    GroupName		NVARCHAR(45),
    AgeMin			INT,
    AgeMax			INT,
    PRIMARY KEY (GroupID)
    );
    
CREATE TABLE `shifts` (
	ShiftID		INT AUTO_INCREMENT,
    ShiftName	NVARCHAR(45),
    ShiftDate	DATE,
    ShiftBegin	TIME,
    ShiftEnd	TIME,
    PRIMARY KEY (ShiftID)
    );

/* -- DROPPED FOR PROJECT
CREATE TABLE `roles` (
	RoleID		INT NOT NULL AUTO_INCREMENT,
    RoleName	NVARCHAR(45),
    PRIMARY KEY	(RoleID)
    );
*/
    
CREATE TABLE `activities` (
	ActivityID		INT AUTO_INCREMENT,
    ActivityName	NVARCHAR(60),
    ActivityDesc	NVARCHAR(255),
    ActivityDate	DATE,
    ActivityBegin	TIME,
    ActivityEnd		TIME,
    PRIMARY KEY (ActivityID)
    );

CREATE TABLE `children` (
	ChildID			INT AUTO_INCREMENT,
    ChildFirstName	NVARCHAR(45),
    ChildLastName	NVARCHAR(45),
    Gender			NVARCHAR(1),
    Birthday		DATE,
    PRIMARY KEY (ChildID)
    );
    
CREATE TABLE `volunteers` (
	VolunteerID			INT AUTO_INCREMENT,
    VolunteerFirstName	NVARCHAR(45),
    VolunteerLastName	NVARCHAR(45),
    Gender				NVARCHAR(1),
    Birthday			DATE,
    PRIMARY KEY (VolunteerID)
    );

 
# ------------------------------------------------------------ #
# 	Opretter join-tabeller for mange-til-mange relationer      #
# ------------------------------------------------------------ #


CREATE TABLE `child_has_activities` (
	ChildID			INT,
    ActivityID		INT,
    PRIMARY KEY (ChildID, ActivityID), 
		FOREIGN KEY (ChildID) REFERENCES children(ChildID) ON DELETE CASCADE,
        FOREIGN KEY (ActivityID) REFERENCES activities(ActivityID) ON DELETE CASCADE
	);
    
CREATE TABLE `children_in_rooms` (
	ChildID		INT,
    RoomID		INT,
    PRIMARY KEY (ChildID, RoomID),
		FOREIGN KEY (ChildID) REFERENCES children(ChildID) ON DELETE CASCADE,
        FOREIGN KEY (RoomID) REFERENCES rooms(RoomID)
	);
    
CREATE TABLE `children_in_groups` (
	ChildID		INT,
    GroupID		INT,
    PRIMARY KEY (ChildID, GroupID),
		FOREIGN KEY (ChildID) REFERENCES children(ChildID) ON DELETE CASCADE,
        FOREIGN KEY (GroupID) REFERENCES groups(GroupID) ON DELETE CASCADE
	);
    
CREATE TABLE `shift_members` (
	VolunteerID		INT,
    ShiftID			INT,
    PRIMARY KEY (VolunteerID, ShiftID), 
		FOREIGN KEY (VolunteerID) REFERENCES volunteers(VolunteerID) ON DELETE CASCADE,
        FOREIGN KEY (ShiftID) REFERENCES shifts(ShiftID) ON DELETE CASCADE
	);


CREATE TABLE `volunteer_has_activities` (
	VolunteerID		INT,
    ActivityID		INT,
    PRIMARY KEY (VolunteerID, ActivityID), 
		FOREIGN KEY (VolunteerID) REFERENCES volunteers(VolunteerID) ON DELETE CASCADE,
        FOREIGN KEY (ActivityID) REFERENCES activities(ActivityID) ON DELETE CASCADE
	);

-- DROPPED FOR PROJECT
/*   
CREATE TABLE `volunteer_has_roles` (
	RoleID			INT NOT NULL,
	VolunteerID		INT NOT NULL,
    ActivityID		INT NOT NULL,
    PRIMARY KEY (RoleID, VolunteerID, ActivityID), 
		FOREIGN KEY (RoleID) REFERENCES roles(RoleID),
		FOREIGN KEY (VolunteerID) REFERENCES volunteers(VolunteerID),
        FOREIGN KEY (ActivityID) REFERENCES activities(ActivityID)
	);
*/
    
CREATE TABLE `volunteers_in_rooms` (
	VolunteerID		INT,
    RoomID			INT,
    PRIMARY KEY (VolunteerID, RoomID),
		FOREIGN KEY (VolunteerID) REFERENCES volunteers(VolunteerID) ON DELETE CASCADE,
        FOREIGN KEY (RoomID) REFERENCES rooms(RoomID)
	);
    
CREATE TABLE `volunteers_in_groups` (
	VolunteerID		INT,
    GroupID			INT,
    PRIMARY KEY (VolunteerID, GroupID),
		FOREIGN KEY (VolunteerID) REFERENCES volunteers(VolunteerID) ON DELETE CASCADE,
        FOREIGN KEY (GroupID) REFERENCES groups(GroupID) ON DELETE CASCADE
	);



# ------------------------------------------------------- #
#    TRIGGERS                                             #
# ------------------------------------------------------- #

-- TRIGGER TO CHECK CAPITALIZATION OF CHILDREN NAMES

DROP TRIGGER IF EXISTS before_child_insert;
DELIMITER $$
CREATE TRIGGER before_child_insert 
    BEFORE INSERT ON children
	FOR EACH ROW
BEGIN
	SET NEW.ChildFirstName = 
		CONCAT(UCASE(LEFT(NEW.ChildFirstName, 1)), LCASE(SUBSTRING(NEW.ChildFirstName, 2)));
    SET NEW.ChildLastName = 
		CONCAT(UCASE(LEFT(NEW.ChildLastName, 1)), LCASE(SUBSTRING(NEW.ChildLastName, 2)));
END $$

/*
INSERT INTO children(ChildID, ChildFirstName, ChildLastName, Gender, Birthday) 
VALUES (DEFAULT, 'beNTe', 'pouLSEN', 'f', '2012-04-27');

SELECT * FROM Children;

*/

# ------------------------------------------------------- #
#    VIEWS                                                #
# ------------------------------------------------------- #

-- LISTE MED ALLE BØRN INKL. BEREGNET KOLONNE MED ALDER (AGE)

CREATE VIEW AllChildrenInclAge AS
SELECT *, 
	TIMESTAMPDIFF(YEAR, Birthday, CURDATE()) AS Age -- beregn forskellen fra fødselsdag til dags dato
FROM children;

-- LISTE MED ALLE FRIVILLIGE INKL. BEREGNET KOLONNE MED ALDER (AGE)

CREATE VIEW AllVolunteersInclAge AS
SELECT *, 
	TIMESTAMPDIFF(YEAR, Birthday, CURDATE()) AS Age 
FROM volunteers;


-- UNION VIEW EXAMPLE ALL PARTICIPANTS TO CAMP

CREATE VIEW EverybodyInCamp AS
SELECT CONCAT('C',ChildID) AS PersonID, 
	CONCAT(ChildFirstName, ' ', ChildLastName) AS Name, Gender, Birthday, Age,
CASE
	WHEN Age < 18 Then 'Child'
    ELSE 'Adult'
END AS ChildAdult
FROM allchildreninclage

UNION

SELECT CONCAT('V',VolunteerID) AS PersonID, 
	CONCAT(VolunteerFirstName, ' ', VolunteerLastName) AS Name, Gender, Birthday, Age,
CASE
	WHEN Age < 18 Then 'Child'
    ELSE 'Adult'
END AS ChildAdult
FROM allvolunteersinclage
ORDER BY Age DESC;