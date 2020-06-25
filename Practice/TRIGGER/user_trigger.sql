DELIMITER $$

create trigger must_be_adult
     before insert on users for each row 
     BEGIN 
     if new.age < 18 
     then 
     signal SQLSTATE '45000'
             set MESSAGE_TEXT = 'must be an adult!';
             end if;
    end;
    
$$
DELIMITER;