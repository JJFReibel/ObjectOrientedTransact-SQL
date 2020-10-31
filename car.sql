/*
MIT License
Copyright (c) 2020 Jean-Jacques François Reibel
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

/*
Implement Database as a module and table to be used as a class.
Implement stored procedures to be used as functions.
This syntax works for Transact-SQL, aka T-SQL, MS SQL, SQL Server, and Microsoft SQL Server.
*/

/*
Create database, schema, table, settings, and instance of a car.
*/
--CREATE DATABASE Vehicles;
--CREATE SCHEMA Land_Vehicles;

CREATE TABLE Car(
carId int IDENTITY(1,1) PRIMARY KEY,
carName varchar(255),
wheels INT,
doors INT,
cylinders INT);

INSERT INTO Car (carName, wheels, doors, cylinders)
VALUES ('subaru', 4, 4, 4);

/* Implement stored procedures. */
/*Uncomment ones neessary.
Procedures that contains multiple commands count as a batch.
MS SQL, SQL Server, T-SQL, or Transact SQL can only handle one batch at a time in some systems.
This can be easily avoided by using the MS SQL API and a .NET language, like C#.
*/
/* Set functions. */
CREATE PROCEDURE setWheels @myCar Nvarchar(255), @wheelsIn int
AS UPDATE Car SET Car.wheels = @wheelsIn WHERE Car.carName = @myCar
return

/*
CREATE PROCEDURE setDoors @myCar Nvarchar(255), @doorsIn int
AS UPDATE Car SET Car.doors = @doorsIn WHERE Car.carName = @myCar
return
*//*
CREATE PROCEDURE setCylinders @myCar Nvarchar(255), @cylindersIn int
AS UPDATE Car SET Car.cylinders = @cylindersIn WHERE Car.carName = @myCar
return
*/
/* Add functions.
*//*
CREATE PROCEDURE addWheels @myCar Nvarchar(255), @wheelsIn int
AS UPDATE Car SET Car.wheels = Car.wheels + @wheelsIn WHERE Car.carName = @myCar
return
*//*
CREATE PROCEDURE addDoors @myCar Nvarchar(255), @doorsIn int
AS UPDATE Car SET Car.doors = Car.doors + @doorsIn WHERE Car.carName = @myCar
return
*//*
CREATE PROCEDURE addCylinders @myCar Nvarchar(255), @cylindersIn int
AS UPDATE Car SET Car.cylinders = Car.cylinders + @cylindersIn WHERE Car.carName = @myCar
return
*/
/* Subtract functions. *//*
CREATE PROCEDURE deleteWheels @myCar Nvarchar(255), @wheelsIn int
AS UPDATE Car SET Car.wheels = Car.wheels - @wheelsIn WHERE Car.carName = @myCar
return
*//*
CREATE PROCEDURE deleteDoors @myCar Nvarchar(255), @doorsIn int
AS UPDATE Car SET Car.doors = Car.doors - @doorsIn WHERE Car.carName = @myCar
return
*//*
CREATE PROCEDURE deleteCylinders @myCar Nvarchar(255), @cylindersIn int
AS UPDATE Car SET Car.cylinders = Car.cylinders - @cylindersIn WHERE Car.carName = @myCar
return
*/
/* Call procedures. */
EXEC setWheels 'subaru', 5;
EXEC deleteWheels 'subaru', 1;
