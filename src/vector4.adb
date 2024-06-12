with Ada.Numerics.Elementary_Functions;
--  Vector4
package body Vector4 is

   function "+" (vec1, vec2 : Vector4) return Vector4 is
      res : Vector4;
   begin
      res.SetX (vec1.x + vec2.x);
      res.SetY (vec1.y + vec2.y);
      res.SetZ (vec1.z + vec2.z);
      res.SetT (vec1.t + vec2.t);
      return res;
   end "+";

   function "-" (vec1, vec2 : Vector4) return Vector4 is
      res : Vector4;
   begin
      res.SetX (vec1.x - vec2.x);
      res.SetY (vec1.y - vec2.y);
      res.SetZ (vec1.z - vec2.z);
      res.SetT (vec1.t - vec2.t);
      return res;
   end "-";

   function "*" (vec1, vec2 : Vector4) return Float is
      res : Float;
   begin
      res := vec1.x * vec2.x + vec1.y * vec2.y
      + vec1.z * vec2.z + vec1.t * vec2.t;
      return res;
   end "*";

   function "*" (vec1 : Vector4; fl1 : Float) return Vector4 is
      res : Vector4;
   begin
      res.SetX (vec1.x * fl1);
      res.SetY (vec1.y * fl1);
      res.SetZ (vec1.z * fl1);
      res.SetT (vec1.t * fl1);
      return res;
   end "*";

   function "*" (fl1 : Float; vec1 : Vector4) return Vector4 is
      res : Vector4;
   begin
      res.SetX (vec1.x * fl1);
      res.SetY (vec1.y * fl1);
      res.SetZ (vec1.z * fl1);
      res.SetT (vec1.t * fl1);
      return res;
   end "*";

   function "/" (vec1 : Vector4; fl1 : Float) return Vector4 is
      res : Vector4;
   begin
      res.SetX (vec1.x / fl1);
      res.SetY (vec1.y / fl1);
      res.SetZ (vec1.z / fl1);
      res.SetT (vec1.t / fl1);
      return res;
   end "/";

   function Magnitude (vec1 : Vector4) return Float is

   begin
      return Ada.Numerics.Elementary_Functions.Sqrt (MagnitudeSquared (vec1));

   end Magnitude;

   function MagnitudeSquared (vec1 : Vector4) return Float is

   begin
      return vec1.x * vec1.x + vec1.y * vec1.y
      + vec1.z * vec1.z + vec1.t * vec1.t;

   end MagnitudeSquared;

   procedure SetX (vec : in out Vector4; vx : Float) is

   begin
      vec.x := vx;
   end SetX;

   procedure SetY (vec : in out Vector4; vy : Float) is

   begin
      vec.y := vy;
   end SetY;

   procedure SetZ (vec : in out Vector4; vz : Float) is

   begin
      vec.z := vz;
   end SetZ;

   procedure SetT (vec : in out Vector4; vz : Float) is

   begin
      vec.t := vz;
   end SetT;
end Vector4;
