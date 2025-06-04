function Max (a: int , b: int ): int
{
 if a > b then a else b
}

method MaxSum (x: int , y: int) returns (s: int , m: int )
 ensures s == x + y && m == Max (x, y)
 {
 s := x + y;
 m := Max(x, y);

 }
  method Caller () {
 var x := 1928;
 var y := 1;

 var sum , maximum := MaxSum (x, y);

 assert sum == x + y;
 assert maximum == Max(x, y);
 }
 method ReconstructFromMaxSum (s: int , m: int ) returns (x: int , y: int)
 requires m <= s && s <= 2*m
 ensures s == x + y
 ensures (m == x || m == y) && x <= m && y <= m
 {

 if x >= y{
 x := m;
 y := s-m;
 } else {
 y := m;
 x := s - m;
 }
 }
 method TestMaxSum (x: int , y: int ){

 var s, m := MaxSum (x, y);
 assume m <= s <= 2*m;
 var xx , yy := ReconstructFromMaxSum (s, m) ;
 assert (xx == x && yy == y) || (xx == y && yy == x);

 }