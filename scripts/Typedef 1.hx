typedef OsoBase = {
    var masha:String;
    var hambre:Bool;
    @:optional var voyContigo:Bool -> Void;
}

typedef Oso = OsoBase & {
    var comida:Array<String>;
}

var oso:Oso = {
    masha: 'oso',
    hambre: true
};