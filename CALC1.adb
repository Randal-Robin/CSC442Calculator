-- Project #1 is a basic calculator program utilizing lower case input and UPPERCASE OUTPUT.
-- This basic calculator has only two variables in use: a and c
-- Variable a acts as a stored value
-- Variable c is a variable with no value
-- Variable a can be used to store first = 10 and second = 20
-- Variable c can be used to store hypotenuse = first * first + second * second
-- Functions include adding to a, taking the square root of c, and raising c to a power
-- Aditional functions are printing c and stopping the program

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
procedure CALC1 is
begin
   -- Request user input
   Put_Line("READY FOR INPUT");
   -- Get variable name for load
   Get (load);
   -- Request user input value for load
   Put_Line("ENTER VALUE FOR" load);
   -- Get value for load
   Get (load);
   Get (mem);
   Put_Line("VALUE OF" mem "IS" c);
end CALC1;

-- Create object, load, which will accept variable name and value
procedure load is
   var name : Text;
   var val : Integer;
end load;

-- Create mem that will be named and take directions based on variable names
procedure mem is
   var name : Text;
   var val : load;
end mem;

-- Create add function
procedure + is
   mem val = load + load;
end +;

-- Create squareroot function
procedure sqrt is
   mem val = load^-2;
end sqrt;

-- Create power of function
procedure ^ is
   mem val = load^load
end ^;

-- reate print function
procedure print is
   Put_Line();
end print;