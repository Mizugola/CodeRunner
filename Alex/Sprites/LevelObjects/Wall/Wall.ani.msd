Define Flag (Anim);
Define Flag (Lock);

Meta:
    name:"Wall"
    clock:1000
Images:
    ?ImageList(str)<"Wall.png">{0}:
Groups:
    @main
        ?content(int)<%s>{0}:
Animation:
    ?AnimationCode(str):
        "PLAY_GROUP(main, -1)"