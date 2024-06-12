-- vector2

package Vector2 is

   type Vector2 is tagged record

      x : Float;
      y : Float;
   end record;
   function "+" (vec1, vec2 : in Vector2) return Vector2;
   function "-" (vec1, vec2 : Vector2) return Vector2;
   function "*" (vec1, vec2 : Vector2) return Float;
   function "*" (vec1 : Vector2; fl1 : in Float) return Vector2;
   function "*" (fl1 : in Float; vec1 : Vector2) return Vector2;
   function "/" (vec1 : Vector2; fl1 : in Float) return Vector2;

   procedure SetX (vec : in out Vector2; vx : in Float);
   procedure SetY (vec : in out Vector2; vy : in Float);
end Vector2;
