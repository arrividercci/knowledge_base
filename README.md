# knowledge_base
fashion
├── clothing
│   ├── jacket
│   │   ├── zipper
│   │   └── hood
│   ├── pants
│   │   ├── buttons
│   │   └── pockets
│   ├── shirt
│   │   ├── collar
│   │   └── sleeves
│   └── dress
│       ├── hemline
│       └── belt
├── footwear
│   ├── sneakers
│   │   ├── laces
│   │   └── sole
│   ├── boots
│   │   ├── heel
│   │   └── zipper
│   └── sandals
│       ├── straps
│       └── footbed
├── accessory
│   ├── watch
│   │   ├── wristband
│   │   └── clock_face
│   ├── scarf
│   │   └── fringe
│   ├── necklace
│   │   └── clasp
│   └── ring
│       └── gemstone
└── headwear
    ├── baseball_cap
    │   └── visor
    ├── winter_hat
    │   └── fur_lining
    ├── beanie
    │   └── knit_material
    └── fedora
        └── ribbon




?- is_a(clothing, fashion).

?- is_a(jacket, clothing).

?- is_a(jacket, fashion).

?- is_a(footwear, fashion).

?- is_a(watch, clothing).
?- part_of(zipper, jacket).
?- part_of(sleeve, pants).
?- part_of(waistband, pants).
?- part_of(X, clothing).
?- part_of(X, jacket).

% Комбіновані тести

% 1. Перевірка наявності частин через підкатегорії
?- part_of(X, shirt).
% Очікуваний результат: collar, sleeve.

% 2. Тестування родо-видових і частина-ціле зв'язків
?- part_of(X, fashion).
% Очікуваний результат: Список частин, що належать до всіх категорій у fashion.

% 3. Тест на транзитивність з частинами
?- part_of(X, winter_hat).
% Очікуваний результат: lining.
