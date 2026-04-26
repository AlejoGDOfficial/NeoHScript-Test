package;

import sys.FileSystem;

using StringTools;

class Main
{
    static function main()
    {
        Sys.println('\n----- NeoHScript Tests -----\n');

        final files:Array<String> = FileSystem.readDirectory('scripts').filter(file -> file.endsWith(ScriptsConfig.EXTENSION));

        files.sort((a, b) -> Std.int(FileSystem.stat('scripts/' + a).mtime.getTime() - FileSystem.stat('scripts/' + b).mtime.getTime()));

        for (index => file in files)
        {
            new HScript(file.substr(0, file.length - ScriptsConfig.EXTENSION.length), true);

            if (index < files.length - 1)
                Sys.println('\n-----\n');
        }
    }
}