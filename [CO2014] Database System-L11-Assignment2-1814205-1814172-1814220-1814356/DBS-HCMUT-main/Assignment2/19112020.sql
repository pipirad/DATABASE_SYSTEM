----SIMILAR TO A FUNCTION BUT NO RETURN
--CREATE OR REPLACE PROCEDURE UPDATE_SAL
--(
--    P_SSN EMPLOYEE.SSN%TYPE,
--    P_SAL INT
--)
--AS 
--BEGIN
--    UPDATE EMPLOYEE 
--    SET SALARY = P_SAL 
--    WHERE  SSN = P_SSN; 
--END;
--
---- CALL THE FUNCTION
--EXEC UPDATE_SAL('333444555',50000);
 /*FUNCTION: RETURNING SOMETHING */
--CREATE OR REPLACE FUNCTION GET_SAL
--(
--    P_SSN EMPLOYEE .SSN%TYPE 
--)
--RETURN INT 
--
--AS 
--    SAL_RESULT INT;
--BEGIN
--    SELECT SALARY  INTO SAL_RESULT -- SAVE RESULT INTO VARIABLE 
--    FROM EMPLOYEE 
--    WHERE SSN = P_SSN ; 
--    RETURN SAL_RESULT ;
--END;
--
--
--SELECT GET_SAL('123456789')
--FROM EMPLOYEE; -- DUAL IS A VIRTUAL TABLE  



--SET SERVEROUTPUT ON; --EXPORT THE RESULT 
--
--
--CREATE OR REPLACE PROCEDURE PRINTEMPTINFO2
--AS 
--    CURSOR C1 IS SELECT SSN, SALARY
--    FROM EMPLOYEE;
--BEGIN 
--    FOR REC IN C1
--    LOOP 
--    DBMS_OUTPUT.PUT_LINE(REC.SSN || ' ' || REC.SALARY*12);
--    END LOOP;
--END;
--