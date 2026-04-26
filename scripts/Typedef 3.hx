typedef OsoBase = {
    masha:String,
    hambre:Bool,
    ?voyContigo:Void -> Bool
}

typedef Oso = {
    > OsoBase,
    ?comida:Array<String>
}

var oso:Oso = {
    masha: 'oso',
    hambre: true
};