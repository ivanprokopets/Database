# Database_Task
Tasks from the database 

## Folder Taks_1 

1. Create tables: zoo, bird, mammal, cage. Each zoo has several animals from each species. Each zoo has several frames.
2. Add an auto-incremental ID plus a minimum of 4 other fields to each table. I leave the field types for my own interpretation.
3. Add 3 zoo, 5 animals from each species and 7 frames for each zoo.
4. List the names of all animals whose name contains the selected letter (it cannot be the first or last letter).
5. List all birds that are in one selected zoo (you need to combine tables)
6. Transfer the selected species to another zoo.

## Folder Task_2

1. Search for all company employees.
2. Search for all persons whose name starts with the letter "M"
3. Search for all people whose last names are "i" and the third from end of "s"
4. Add a person who is not employed anywhere. Then search all people who have never worked.
5. Search for all persons from the "MAZ" province. View also full name of the province.
6. Search for all persons and then perform union and union all with the table
persons . Make a note of the conclusions.
7. Search for all employees who have been working since '1994-01-01' and not
their contract was over. Sort results by salary, in ascending order.
8. Display employees who earn above average.

## Folder Task_3

1. Employees from the largest company (calculated on the basis of functions) are to be transferred to another city (indicated by the student).
2. Then they (and only them) get a raise of PLN 1000.
3. Then the reduction of employees is carried out. Those who earn 10% above average (and more) are to be fired.
4. Parity was introduced in the company, so the same number of women and men is to be employed. Calculate both quantity separately, and then make the appropriate number of inserts.
Tasks related to all companies:
5. Count the average, minimum, maximum earnings for each position depending on the city. Please use group by.

## Folder Task_4

1. Please create a procedure that for the given city name determines who living in this city has the highest current salary and shows who it is. To display: name, surname, city (name), salary.
2. Create a procedure that shows the average salary of an employee's outdated posts and the average of all current salaries for a given name. To display: First name, last name, average salary from historical positions, average salary from current positions.
3. Create a procedure that calculates the average salary for the given position (selected by name) (regardless of the city). Then update as many salaries that are below average. The salary is to be increased by 1000. The choice should take into account current and historical posts. Please include only current posts in the update.  

## Folder Task_5

1. Create a procedure that displays all students from a given university attending a given subject. Arguments: university id, subject id. To display: name, surname, university name, subject name.
2. Create a trigger that, when you add a new student, writes it to a random subject.
3. Create a trigger that displays the message "Note, the university name has been updated after the university name has been updated.
