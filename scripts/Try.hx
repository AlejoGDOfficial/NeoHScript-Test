function oso(masha:Null<String>):String
{
    if (masha == null)
        throw 'haganle pruebas hasta que se suicide';

    trace(oso);
}

try
{
    trace(null);
} catch(e) {
    trace('oso la cagaste: ' + e);
}