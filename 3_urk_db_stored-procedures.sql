USE urk;

# ---------------------------------------------------------------------- #
#  STORED PROCEDURE FOR ADDING ALL VOLUNTEERS TO A SPECIFIC ACTIVITY ID  #
# ---------------------------------------------------------------------- #

DROP PROCEDURE IF EXISTS AddAllVolunteersToActivity;
DELIMITER $$  
CREATE PROCEDURE AddAllVolunteersToActivity(ActivityID INT)   
BEGIN
DECLARE i INT DEFAULT 1; 
WHILE (i <= (SELECT COUNT(*) FROM `volunteers`)) DO
    INSERT INTO `volunteer_has_activities` (`VolunteerID`, `ActivityID`) values (i, ActivityID);
    SET i = i+1;
END WHILE;
END $$

-- Add All Volunteers to Welcome activity
CALL AddAllVolunteersToActivity(1);

-- Add All Volunteers To Breakfast Activity
CALL AddAllVolunteersToActivity(13);
CALL AddAllVolunteersToActivity(14);
CALL AddAllVolunteersToActivity(15);
CALL AddAllVolunteersToActivity(16);
CALL AddAllVolunteersToActivity(17);
CALL AddAllVolunteersToActivity(18);

-- Add All Volunteers To Lunch Activity
CALL AddAllVolunteersToActivity(19);
CALL AddAllVolunteersToActivity(20);
CALL AddAllVolunteersToActivity(21);
CALL AddAllVolunteersToActivity(22);
CALL AddAllVolunteersToActivity(23);
CALL AddAllVolunteersToActivity(24);

-- Add All Volunteers To Dinner Activity
CALL AddAllVolunteersToActivity(25);
CALL AddAllVolunteersToActivity(26);
CALL AddAllVolunteersToActivity(27);
CALL AddAllVolunteersToActivity(28);
CALL AddAllVolunteersToActivity(29);
CALL AddAllVolunteersToActivity(30);

-- Add All Volunteers to Goodbye activity
CALL AddAllVolunteersToActivity(43);


-- Add All Volunteers To Evening meetings
CALL AddAllVolunteersToActivity(7);
CALL AddAllVolunteersToActivity(8);
CALL AddAllVolunteersToActivity(9);
CALL AddAllVolunteersToActivity(10);
CALL AddAllVolunteersToActivity(11);
CALL AddAllVolunteersToActivity(12);

-- SELECT * FROM volunteer_has_activities;

   
# ---------------------------------------------------------------------- #
#  ADD COLUMN EXAMPLE TO ACTIVITIES TO INDICATE MANDATORY                #
# ---------------------------------------------------------------------- #

-- SELECT * FROM activities;

ALTER TABLE activities
ADD COLUMN IsMandatoryChild BOOLEAN DEFAULT 0,
ADD COLUMN IsMandatoryVolunteer BOOLEAN DEFAULT 0; -- BEMÆRK BOOLEAN BLIVER OPRETTET SOM TINYINT(1) I MYSQL

-- SELECT * FROM activities;

# ---------------------------------------------------------------------- #
#  DEFINE MANDATORY ACTIVITIES FOR CHILDREN AND VOLUNTEERS               #
# ---------------------------------------------------------------------- #

UPDATE activities
SET IsMandatoryChild = 1, IsMandatoryVolunteer = 1
WHERE 
	ActivityID = 1 OR
	(ActivityID >= 13 AND ActivityID <= 30) OR
    ActivityID = 43; 

-- SELECT * FROM activities;
-- SELECT * FROM child_has_activities;

# ---------------------------------------------------------------------- #
#  SET ALL EVENING MEETINGS TO MANDATORY FOR VOLUNTEERS                  #
# ---------------------------------------------------------------------- #

UPDATE activities
SET IsMandatoryVolunteer = 1
WHERE 
	ActivityID IN (7, 8, 9, 10, 11, 12);


# ---------------------------------------------------------------------- #
#  STORED PROCEDURE FOR ADDING ALL MANDATORY CHILD ACTIVITIES            #
# ---------------------------------------------------------------------- #

DROP PROCEDURE IF EXISTS AddAllMandatoryChildActivities;
DELIMITER $$  
CREATE PROCEDURE AddAllMandatoryChildActivities()   
BEGIN
	DECLARE i INT DEFAULT 1;
	DECLARE j INT DEFAULT 0;

	DECLARE MandatoryAmount INT DEFAULT 0;
	SET MandatoryAmount = (SELECT COUNT(*) FROM activities WHERE IsMandatoryChild IS TRUE);

	WHILE (i <= (SELECT COUNT(*) FROM `children`)) DO

		WHILE (j < MandatoryAmount) DO
			INSERT INTO child_has_activities (`ChildID`, `ActivityID`) 
				VALUES (i, (SELECT ActivityID FROM activities WHERE IsMandatoryChild IS TRUE ORDER BY ActivityID LIMIT j,1));
			SET j = j+1;
		END WHILE;
		
		SET j = 0;
		SET i = i+1;
	END WHILE;
END $$

CALL AddAllMandatoryChildActivities();

-- SELECT * FROM child_has_activities;
-- SELECT * FROM activities;

