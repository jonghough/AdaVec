--  Vector4

package Vector4 is

   type Vector4 is tagged record

      x : Float;
      y : Float;
      z : Float;
      t : Float;
   end record;
   function "+" (vec1, vec2 : Vector4) return Vector4;
   function "-" (vec1, vec2 : Vector4) return Vector4;
   function "*" (vec1, vec2 : Vector4) return Float;
   function "*" (vec1 : Vector4; fl1 : Float) return Vector4;
   function "*" (fl1 : Float; vec1 : Vector4) return Vector4;
   function "/" (vec1 : Vector4; fl1 : Float) return Vector4;
   function Magnitude (vec1 : Vector4) return Float;
   function MagnitudeSquared (vec1 : Vector4) return Float;
   procedure SetX (vec : in out Vector4; vx : Float);
   procedure SetY (vec : in out Vector4; vy : Float);
   procedure SetZ (vec : in out Vector4; vz : Float);
   procedure SetT (vec : in out Vector4; vz : Float);
end Vector4;
