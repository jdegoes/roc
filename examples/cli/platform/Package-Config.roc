platform rtfeldman/roc-cli
    requires {}{ main : Task.Task {} * } # TODO FIXME
    exposes [] # TODO FIXME actually expose modules
    packages {}
    imports [ Task.{ Task } ]
    provides [ mainForHost ]
    effects fx.Effect
        {
            putChar : I64 -> Effect {},
            putLine : Str -> Effect {},
            httpGetUtf8 : Str -> Effect (Result Str Str),
            getLine : Effect Str
        }


mainForHost : Task {} * as Fx
mainForHost = main