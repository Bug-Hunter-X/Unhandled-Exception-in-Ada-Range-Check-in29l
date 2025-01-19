```ada
function Check_Range(Num : Integer) return Boolean is
begin
   if Num > 10 then
      return True;
   else
      return False;
   end if;
exception
   when Constraint_Error =>
      Put_Line("Error: Input number out of range");
      return False; -- Or raise the exception further
   when others =>
      Put_Line("Unexpected error: " & Ada.Exceptions.Exception_Message); -- Log error details
      return False;
end Check_Range;

procedure Main is
   Result : Boolean;
begin
   Result := Check_Range(15);
   if Result then
      Put_Line("Number is greater than 10");
   else
      Put_Line("Number is not greater than 10");
   end if;
   Result := Check_Range(Integer'Last); -- Test potential constraint error
end Main;
```