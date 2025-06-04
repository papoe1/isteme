function F(x: int ): int {
 if x < 10 then x else F(x - 1)
 } //1 functioneaza


 function G(x: int ): int {
 if 0 <= x then G(x - 2) else x
 }
//2 nu functioneaza

 function H(x: int ): int {
 if x < -60 then x else H(x - 1)
 } //3 nu functioneaza


 function I(x: nat , y: nat ): int {
 if x == 0 || y == 0 then 12
 else if x % 2 == y % 2 then
 I(x - 1, y)
 else
 I(x, y - 1)
 } //4 functioneaza


 function I(x: nat , y: nat ): int {
 if x == 0 || y == 0 then 12
 else if x % 2 == y % 2 then
 I(x - 1, y)
 else
 I(x, y - 1)
 } //5 nu functioneaza


 function K(x: nat , y: nat , z: nat ): int {
 if x < 10 || y < 5 then x + y
 else if z == 0 then
 K(x - 1, y, 5)
 else
 K(x, y - 1, z - 1)
 } //6 nu functioneaza


 function L(x: int ): int {
 if x < 100 then L(x + 1) + 10 else x
 } //7 nu functioneaza