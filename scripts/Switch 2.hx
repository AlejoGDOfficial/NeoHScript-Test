final oso = [1, 2];

trace(
    switch (oso)
    {
        case [a, b] if (b < a):
            'la segunda es la menor :aySi:';
        case [2, _]:
            '2 _';
        case [_, 6]:
            '_ 6';
        case []:
            'vacio';
        case [_, _, _]:
            'de 3';
        case _:
            'pene';
    }
);