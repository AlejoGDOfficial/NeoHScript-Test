package;

class ScriptsConfig
{
    public static var DEFAULT_NAME:String = 'script.hx';

    public static var PATH:String = 'scripts/';

    public static var EXTENSION:String = '.hx';

    public static var IMPORTS:Array<Class<Dynamic>> = [
        Math,
        Sys,
        haxe.Timer
    ];
}