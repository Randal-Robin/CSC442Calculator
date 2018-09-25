-- Project #1 is a basic calculator program utilizing lower case input and UPPERCASE OUTPUT.
-- This basic calculator has only two variables in use: a and c
-- Variable a acts as a stored value
-- Variable c is a variable with no value
-- Variable a can be used to store first = 10 and second = 20
-- Variable c can be used to store hypotenuse = first * first + second * second
-- Functions include adding to a, taking the square root of c, and raising c to a power
-- Aditional functions are printing c and stopping the program

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure CALC1 is

--mem : array(1 .. 300) of String(1 .. 100); --array used for the name of the variable
--load : array (1 .. 300) of float;

-- Create add function
function add (num1, num2 : Float) return Float is
begin
   return num1 + num2;
end add;

--Create subtract function
function subtract (num1, num2 : Float) return Float is
begin
	return num1 - num2;
end subtract;

--create multiply function
function multiply (num1, num2 : Float) return Float is
begin
	return num1 * num2;
end multiply;

--create divide function
function divide (num1, num2 : Float) return Float is
begin
	return num1 / num2;
end divide;

--create exp function
function exp (num1: Float; exponent: Integer) return Float is

number : Float := num1;

begin

for index in 1 .. (exponent - 1) loop
	number := number * num1;
end loop;

return number;

end exp;

--begin main procedure
begin
   -- Request user input
   --Ada.Text_IO.Put_Line("READY FOR INPUT");
   -- Get variable name for load
   --Ada.Text_IO.Get (load);
   -- Request user input value for load
   --Ada.Integer_Text_IO.Put_Line("ENTER VALUE FOR" load);
   -- Get value for load
   --Ada.Text_IO.Get (load);
   --Ada.Text_IO.Get (mem);
   --Ada.Text_IO.Put_Line("VALUE OF" mem "IS" c);
   
   Ada.Text_IO.Put("2 + 4 = ");
   Ada.Float_Text_IO.Put(add(2.0, 4.0)); -- should return 6
   Ada.Text_IO.Put_Line("");
   Ada.Text_IO.Put("4 - 2 = ");
   Ada.Float_Text_IO.Put(subtract(4.0, 2.0)); -- should return 2
   Ada.Text_IO.Put_Line("");
   Ada.Text_IO.Put("10 * 2 = ");
   Ada.Float_Text_IO.Put(multiply(10.0, 2.0)); -- should return 20
   Ada.Text_IO.Put_Line("");
   Ada.Text_IO.Put("100 / 2 = ");
   Ada.Float_Text_IO.Put(divide(100.0, 2.0)); -- should return 50
   Ada.Text_IO.Put_Line("");
   Ada.Text_IO.Put("2 ^ 15 = ");
   Ada.Float_Text_IO.Put(exp(2.0, 15)); -- should return 4
end CALC1;