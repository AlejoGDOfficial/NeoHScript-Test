package;

import hscript.NeoHscript;

import haxe.Exception;

import sys.FileSystem;
import sys.io.File;

class HScript extends NeoHscript
{
    public var successfull:Null<Bool>;

    public var debug:Bool = false;

    public function new(name:String, ?debug:Bool = false)
    {
        super();

        this.debug = debug;

        final path:String = ScriptsConfig.PATH + name + ScriptsConfig.EXTENSION;

        for (cls in ScriptsConfig.IMPORTS)
            setGlobal(Type.getClassName(cls).split('.').pop(), cls);

        if (FileSystem.exists(path))
            execute(File.getContent(path), name + ScriptsConfig.EXTENSION);
        else
            execute(name);
    }

    public var name:String;

    override function execute(code:String, ?file:String):Dynamic
    {
        file ??= ScriptsConfig.DEFAULT_NAME;

        name = file;

        if (debug)
            Sys.println('> ' + file + ':\n\n' + code + '\n');

        try
        {
            super.execute(code, file);

            successfull = true;
        } catch (e:Exception) {
            Sys.println(e.details().split('\n')[0]);

            successfull = false;
        }

        return null;
    }
}