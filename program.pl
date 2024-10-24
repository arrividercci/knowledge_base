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
is_a(tops, clothing).

is_a(athletic_footwear, footwear).
is_a(casual_footwear, footwear).

is_a(wristwear, accessory).
is_a(neckwear, accessory).

is_a(caps, headwear).
is_a(hats, headwear).

is_a(jacket, outerwear).
is_a(coat, outerwear).
is_a(shirt, tops).
is_a(sweater, tops).

is_a(sneakers, athletic_footwear).
is_a(running_shoes, athletic_footwear).
is_a(sandals, casual_footwear).
is_a(loafers, casual_footwear).

is_a(watch, wristwear).
is_a(bracelet, wristwear).
is_a(scarf, neckwear).
is_a(necklace, neckwear).

is_a(baseball_cap, caps).
is_a(visor, caps).
is_a(winter_hat, hats).
is_a(fedora, hats).

part_of(zipper, jacket).
part_of(hood, jacket).
part_of(buttons, coat).
part_of(pockets, coat).
part_of(collar, shirt).
part_of(sleeves, shirt).
part_of(knit, sweater).
part_of(cuffs, sweater).
part_of(laces, sneakers).
part_of(sole, sneakers).
part_of(arch_support, running_shoes).
part_of(traction, running_shoes).
part_of(straps, sandals).
part_of(footbed, sandals).
part_of(heel, loafers).
part_of(tongue, loafers).
part_of(wristband, watch).
part_of(clock_face, watch).
part_of(chain, bracelet).
part_of(clasp, bracelet).
part_of(fringes, scarf).
part_of(knot, scarf).
part_of(pendant, necklace).
part_of(clasp, necklace).
part_of(visor, baseball_cap).
part_of(band, visor).
part_of(fur_lining, winter_hat).
part_of(crown, winter_hat).
part_of(ribbon, fedora).
part_of(brim, fedora).

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
