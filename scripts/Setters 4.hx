var oso(default, set):Float = 0;

function set_oso(value:Float):Float
{
    if (oso == value)
        return oso;

    oso = value;

    trace('Oso por qué lo cambias oso: ' + oso);

    return oso;
}

oso = 10;

oso = 10;

trace(oso);