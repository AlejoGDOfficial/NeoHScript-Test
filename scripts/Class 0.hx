package;

class Oso
{
    static var instances:Array<Oso> = [];
    
    static function osoActivate(ins:Oso)
    {
        if (ins == null)
        {
            for (inst in instances)
                inst?.activate();
        } else {
            ins.activate();
        }
    }

    static function osoStatic():Void
    {
        trace('da fucking osoScript');
    }

    static function osoSuma(a, b):Float
        return a + b;

    final osoFinal:Float;
    final mashaFinal:String = 'masha';

    var osoArg:String;
    
    public function new(arg:String)
    {
        osoFinal = 3.14;

        this.osoArg = arg;

        trace(osoSuma(1, 1));

        osoActivate();
    }

    var osoActivado:Bool = false;

    public function activate():Void
    {
        if (osoActivado)
        {
            trace('intento de activar oso ya activado');

            return;
        }

        osoActivado = true;
    }
}