:- discontiguous is_a/2.
:- discontiguous part_of/2.
:- table is_a/2.
:- table part_of/2.

is_a(fashion, category).
is_a(clothing, fashion).
is_a(footwear, fashion).
is_a(accessory, fashion).
is_a(headwear, fashion).
is_a(outerwear, clothing).
is_a(trousers, clothing).
is_a(tops, clothing).
is_a(dresses, clothing).
is_a(athletic_footwear, footwear).
is_a(boots, footwear).
is_a(casual_footwear, footwear).
is_a(wristwear, accessory).
is_a(neckwear, accessory).
is_a(jewelry, accessory).
is_a(fingerwear, accessory).
is_a(caps, headwear).
is_a(hats, headwear).
is_a(beanies, headwear).
is_a(formal_headwear, headwear).
is_a(jacket, outerwear).
is_a(pants, trousers).
is_a(shirt, tops).
is_a(dress, dresses).
is_a(sneakers, athletic_footwear).
is_a(boots, boots).
is_a(sandals, casual_footwear).
is_a(watch, wristwear).
is_a(scarf, neckwear).
is_a(necklace, jewelry).
is_a(ring, fingerwear).
is_a(baseball_cap, caps).
is_a(winter_hat, hats).
is_a(beanie, beanies).
is_a(fedora, formal_headwear).

part_of(zipper, jacket).
part_of(hood, jacket).
part_of(buttons, pants).
part_of(pockets, pants).
part_of(collar, shirt).
part_of(sleeves, shirt).
part_of(hemline, dress).
part_of(belt, dress).
part_of(laces, sneakers).
part_of(sole, sneakers).
part_of(heel, boots).
part_of(zipper, boots).
part_of(straps, sandals).
part_of(footbed, sandals).
part_of(wristband, watch).
part_of(clock_face, watch).
part_of(fringes, scarf).
part_of(clasp, necklace).
part_of(gemstone, ring).
part_of(visor, baseball_cap).
part_of(fur_lining, winter_hat).
part_of(knit_material, beanie).
part_of(ribbon, fedora).

is_a(X, Z) :- 
    is_a(X, Y), 
    is_a(Y, Z).

part_of(X, Z) :- 
    part_of(X, Y), 
    part_of(Y, Z).

part_of(X, Z) :- 
    part_of(X, Y), 
    is_a(Y, Z).

part_of(X, Z) :- 
    is_a(X, Y), 
    part_of(Y, Z).
