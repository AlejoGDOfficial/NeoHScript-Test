package;

import sys.FileSystem;

using StringTools;

class Main
{
    static function main()
    {
        Sys.println('\n----- NeoHScript Tests -----\n');

        final files:Array<String> = FileSystem.readDirectory('scripts').filter(file -> file.endsWith(ScriptsConfig.EXTENSION));

        files.sort(#if FILES_TIME_SORT (a, b) -> Std.int(FileSystem.stat('scripts/' + a).mtime.getTime() - FileSystem.stat('scripts/' + b).mtime.getTime()) #else Reflect.compare #end);

        var successfull:Array<String> = [];
        var failed:Array<String> = [];

        for (index => file in files)
        {
            final script:HScript = new HScript(file.substr(0, file.length - ScriptsConfig.EXTENSION.length), true);

            if (script.successfull)
                successfull.push(script.name);
            else
                failed.push(script.name);

            #if HIDE_RESULTS if (index < files.length - 1) #end
                Sys.println('\n-----\n');
        }

        #if !HIDE_RESULTS
        Sys.println([
            'Successfull (' + successfull.length + ' / ' + files.length + ')' + ': \n' + [for (f in successfull) ' - ' + f].join('\n'),
            'Failed (' + failed.length + ' / ' + files.length + '): \n' + [for (f in failed) ' - ' + f].join('\n')
        ].join('\n\n'));
        #end
    }
}

class Masha
{
    public function new() {}

    public var yaComio:Bool = false;

    public function darDeComer()
    {
        trace('o oso tu manguera esta muy peluda');

        yaComio = true;
    }
}