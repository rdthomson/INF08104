select EMPLOYEE_NO, SUM(to_date(return, 'DD-MON-YY') - to_date(departure, 'DD-MON-YY')) "DAYS"
       FROM trip
       GROUP BY EMPLOYEE_NO
       HAVING SUM(to_date(return, 'DD-MON-YY') - to_date(departure, 'DD-MON-YY')) > 100;