final oso:Int = 5;

trace(
    switch (oso)
    {
        case v if(v > 5 && v != 0):
            'oso es mayor a 5';
        case v if(v < 5 && v  != 0):
            'oso es menor a 5';
        case 5 | 0:
            'oso es 5 o 0';
        default:
            'oso esta hambriento';
    }
);