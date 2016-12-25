fun divsum(n:int) =
	let
fun divisor(1) = [1]
| divisor divi = 
if n mod divi = 0 
then divi::divisor(divi-1) 
else divisor(divi-1);
	
		fun sum(nil) = 0
		| sum(hd::tl) = hd+sum(tl);

in
	if n <= 1 then 0 else
		sum(divisor(n div 2))
		 
end;


local

fun odd(L) = L mod 2 = 1;

fun oddLists(nil) = nil 
| oddLists(hd::tl) = if (hd mod 2 = 1) 
then (hd) :: oddLists(tl) 
else oddLists(tl);

fun maxListValue(L) = 
if L = nil then ~1 
else max(hd(L), maxListValue(tl(L)));

in

fun foo(L) = maxListValue(oddLists(L))

end;
