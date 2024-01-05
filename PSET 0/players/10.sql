SELECT first_name, last_name AS "Youngest Player" FROM players WHERE birth_year IN (SELECT MIN(birth_year) FROM players);
