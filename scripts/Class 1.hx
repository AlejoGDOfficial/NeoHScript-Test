package;

class OsoExtendido extends Oso
{
    public function new()
    {
        osoActivado = true;

        trace('soy el OSO mas poderOSO');

        super('oso arg');

        trace(osoArg);
    }

    var ultraActivado:Bool = false;

    override public function activate()
    {
        ultraActivado = true;

        trace('me vale verga estar ya activado w, y me la pela el otro activado (' + osoActivado + ')');
    }
}