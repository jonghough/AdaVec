with Ada.Numerics.Elementary_Functions;
--  vector3
package body Vector3 is

   function "+" (vec1, vec2 : Vector3) return Vector3 is
      res : Vector3;
   begin
      res.SetX (vec1.x + vec2.x);
      res.SetY (vec1.y + vec2.y);
      res.SetZ (vec1.z + vec2.z);
      return res;
   end "+";

   function "-" (vec1, vec2 : Vector3) return Vector3 is
      res : Vector3;
   begin
      res.SetX (vec1.x - vec2.x);
      res.SetY (vec1.y - vec2.y);
      res.SetZ (vec1.z - vec2.z);
      return res;
   end "-";

   function "*" (vec1, vec2 : Vector3) return Float is
      res : Float;
   begin
      res := vec1.x * vec2.x + vec1.y * vec2.y + vec1.z * vec2.z;
      return res;
   end "*";

   function "*" (vec1 : Vector3; fl1 : Float) return Vector3 is
      res : Vector3;
   begin
      res.SetX (vec1.x * fl1);
      res.SetY (vec1.y * fl1);
      res.SetZ (vec1.z * fl1);
      return res;
   end "*";

   function "*" (fl1 : Float; vec1 : Vector3) return Vector3 is
      res : Vector3;
   begin
      res.SetX (vec1.x * fl1);
      res.SetY (vec1.y * fl1);
      res.SetZ (vec1.z * fl1);
      return res;
   end "*";

   function "/" (vec1 : Vector3; fl1 : Float) return Vector3 is
      res : Vector3;
   begin
      res.SetX (vec1.x / fl1);
      res.SetY (vec1.y / fl1);
      res.SetZ (vec1.z / fl1);
      return res;
   end "/";

   function Cross (vec1 : Vector3; vec2 : Vector3) return Vector3 is
      res : Vector3;
   begin
      res.SetX (vec1.y * vec2.z - vec1.z * vec2.y);
      res.SetY (vec2.z * vec1.x - vec1.z * vec2.x);
      res.SetZ (vec1.x * vec2.y - vec1.y * vec2.x);
      return res;

   end Cross;

   function Magnitude (vec1 : Vector3) return Float is

   begin
      return Ada.Numerics.Elementary_Functions.Sqrt (MagnitudeSquared (vec1));

   end Magnitude;

   function MagnitudeSquared (vec1 : Vector3) return Float is

   begin
      return vec1.x * vec1.x + vec1.y * vec1.y + vec1.z * vec1.z;

   end MagnitudeSquared;

   procedure SetX (vec : in out Vector3; vx : Float) is

   begin
      vec.x := vx;
   end SetX;

   procedure SetY (vec : in out Vector3; vy : Float) is

   begin
      vec.y := vy;
   end SetY;

   procedure SetZ (vec : in out Vector3; vz : Float) is

   begin
      vec.z := vz;
   end SetZ;
   function Normalize (vec1 : Vector3) return Vector3 is
      len : Float;
      res : Vector3;
   begin
      len := Magnitude (vec1);
      if len > 0.00001  then
         res := vec1 / len;
      else
         res.SetX (0.0);
         res.SetY (0.0);
      end if;
      return res;
   end Normalize;
   function ProjectOnto (vec1 : Vector3; vec2 : Vector3) return Vector3 is
      r1, r2 : Float;
      res : Vector3;
   begin
      r1 := vec1 * vec2;
      r2 := vec1 * vec2;
      res := (r1 / r2) * vec2;
      return res;
   end ProjectOnto;
   function Reflect (vec1 : Vector3; refLine : Vector3) return Vector3 is
      norm : Vector3;
      res : Vector3;
   begin
      norm := Normalize (refLine);
      res := vec1 - (vec1 * norm) * 2.0 * norm;
      return res;
   end Reflect;
end Vector3;
