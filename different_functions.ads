with ada.numerics.discrete_random;
with ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Bounded; use Ada.Strings.Bounded;
with Ada.Numerics; use Ada.Numerics;

package different_functions is


  type SSI is range 0 .. 999_99_9999;




















   

   type T_Inv_Trig is
     delta 2.0 ** (-15) * Pi
     range -Pi / 2.0 .. Pi / 2.0;


   type Color is (Black, Red, Green,
                  Blue, White);

   type Color_Array is
     array (Integer range <>) of Color;

   procedure Print_Color_Array (X : in Color_Array);

   procedure Reverse_It (X : in out Color_Array);



























   type randRange is range 1..100;
   type ARR is array(1..9) of randRange;
   Arr_Rand : ARR;

   package Rand_Int is new ada.numerics.discrete_random(randRange);
   use Rand_Int;
   gen : Generator;
   num : randRange;

   type Months is (
      Jan,
      Feb,
      Mar,
      Apr,
      May,
      Jun,
      Jul,
      Aug,
      Sep,
      Oct,
      Nov,
      Dec

   );

  package B_Strings is new Ada.Strings.Bounded.Generic_Bounded_Length (Max => 10);
   type Months_to_String is array(Months'Range) of B_Strings.Bounded_String;
   Month_Array : Months_to_String :=
   (
      Jan => B_Strings.To_Bounded_String("January"),
      Feb  => B_Strings.To_Bounded_String( "Febuary"),
      Mar  => B_Strings.To_Bounded_String("March"),
      Apr  => B_Strings.To_Bounded_String("April"),
      May  => B_Strings.To_Bounded_String("May"),
      Jun  => B_Strings.To_Bounded_String("June"),
      Jul  => B_Strings.To_Bounded_String("July"),
      Aug  => B_Strings.To_Bounded_String("August"),
      Sep  => B_Strings.To_Bounded_String("September"),
      Oct  => B_Strings.To_Bounded_String("October"),
      Nov  => B_Strings.To_Bounded_String("November"),
      Dec  => B_Strings.To_Bounded_String("December")
   );


   --  Declaration
   function Increment_By
     (I    : Integer;
      Incr : Integer := 1) return Integer;

   function Get_Increment_Value return Integer;

   procedure random_num;

   procedure subtraction
   ( First_Int  : Integer;
     Second_Int : Integer);

  procedure Display_months;
   

end different_functions;