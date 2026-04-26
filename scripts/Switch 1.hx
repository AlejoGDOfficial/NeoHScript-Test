final oso = {
    name: 'Oso',
    leche: 'de oso'
};

trace(
    switch (oso)
    {
        case {name: 'Oso', leche: 'normal'}:
            'decepcion';
        case {name: 'Oso', leche: n}:
            n;
        default:
            'no hay ni oso ni leche molona';
    }
);