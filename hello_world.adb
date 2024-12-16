with Ada.Text_IO;
use Ada.Text_IO;

with different_functions;
use different_functions;

procedure Hello_World is
   D : constant := 2.0 ** (-31);
   type TQ31 is delta D range -1.0 .. 1.0 - D;

   D1 : TQ31 := 0.0000000005;
begin
   Put_Line ("TQ31 requires "
             & Integer'Image (TQ31'Size)
             & " bits");
   Put_Line ("The delta    value of TQ31 is "
             & TQ31'Image (TQ31'Delta));
   Put_Line ("The minimum  value of TQ31 is "
             & TQ31'Image (TQ31'First));
   Put_Line ("The maximum  value of TQ31 is "
             & TQ31'Image (TQ31'Last));

   Put_Line ("TQ31 requires "
             & TQ31'Image (D1)
             & " bits");


end Hello_World;