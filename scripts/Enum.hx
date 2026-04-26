enum Oso
{
    MASHA;
    PRIMA_DE_MASHA;
    CONEJO;
    LECHE(deOso:Bool);
}

final osoVal:Oso = LECHE(true);

switch (osoVal)
{
    case MASHA:
        trace('oso donde tu ta oso');
    case PRIMA_DE_MASHA:
        trace('q rico');
    case LECHE(deOso:Bool):
        trace('leche' + (deOso ? ' especial' : ''));
    default:
}