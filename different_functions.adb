with ada.numerics.discrete_random;
with ada.Text_IO; use Ada.Text_IO;

package body different_functions is

   procedure Print_Color_Array(X: in Color_Array )
   is begin

     for C in X'Range loop
        Put_Line ("My_Color: " & Color'Image (X(C)));
     end loop;

   end Print_Color_Array;


   procedure Reverse_It (X : in out Color_Array)
   is
   begin
      for I in X'First ..
               (X'Last + X'First) / 2 loop
         declare
            Tmp     : Color;
            X_Left  : Color
              renames X (I);
            X_Right : Color
              renames X (X'Last + X'First - I);
         begin
            Tmp     := X_Left;
            X_Left  := X_Right;
            X_Right := Tmp;
         end;
      end loop;
   end Reverse_It;



























   Last_Increment : Integer := 1;

function Increment_By
(I    : Integer;
Incr : Integer := 1) return Integer is
   begin
      if Incr /= 0 then
         Last_Increment := Incr;
      end if;

      return I + Last_Increment;
end Increment_By;

function Get_Increment_Value return Integer is
   begin
      return Last_Increment;
end Get_Increment_Value;

procedure random_num is

begin
   for I in 1 .. 9 loop
      reset(gen);
      num := random(gen);
      Arr_Rand(I) := num;
      put_line(randRange'Image(num));
   end loop;

end random_num;

procedure subtraction
( First_Int  : Integer;
  Second_Int : Integer) is

begin

  Put_Line("The difference between " & Integer'Image(First_Int) & " and " & 
                                       Integer'Image(Second_Int) & " is " & 
                                       Integer'Image(First_Int - Second_Int));

end subtraction;

procedure Display_months is
begin

  for i in Months'Range loop

    Put_Line(Months'Image(i) & " -> " & B_Strings.To_String(Month_Array(i)));

  end loop;

end Display_months;

end different_functions;