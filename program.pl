:- discontiguous is_a/2.
:- discontiguous part_of/2.
:- table is_a/2.
:- table part_of/2.

is_a(X, Z) :- 
    is_a(X, Y), 
    is_a(Y, Z).

is_a(fashion, category).
is_a(clothing, fashion).
is_a(accessories, fashion).
is_a(headwear, fashion).
is_a(footwear, fashion).
is_a(jacket, clothing).
is_a(pants, clothing).
is_a(shirt, clothing).
is_a(dress, clothing).
is_a(watch, accessories).
is_a(chain, accessories).
is_a(bracelet, accessories).
is_a(sunglasses, accessories).
is_a(cap, headwear).
is_a(winter_hat, headwear).
is_a(baseball_cap, headwear).
is_a(beanie, headwear).
is_a(sneakers, footwear).
is_a(shoes, footwear).
is_a(sandals, footwear).
is_a(slippers, footwear).

part_of(X, Z) :- 
    part_of(X, Y), 
    part_of(Y, Z).

part_of(X, Z) :- 
    part_of(X, Y), 
    is_a(Y, Z).

part_of(X, Z) :- 
    is_a(X, Y), 
    part_of(Y, Z).

part_of(zipper, jacket).
part_of(pocket, jacket).
part_of(collar, shirt).
part_of(sleeve, shirt).
part_of(waistband, pants).
part_of(hem, dress).
part_of(face, watch).
part_of(band, watch).
part_of(chain_links, chain).
part_of(chain_clasp, chain).
part_of(beads, bracelet).
part_of(brim, cap).
part_of(lining, winter_hat).
part_of(bill, baseball_cap).
part_of(fold, beanie).
part_of(outsole, sneakers).
part_of(uppers, sneakers).
part_of(heel, shoes).
part_of(toe_box, shoes).
part_of(sole, sandals).
part_of(insole, slippers).
