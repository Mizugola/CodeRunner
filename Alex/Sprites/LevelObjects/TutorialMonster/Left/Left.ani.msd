Define Flag (Anim);
Define Flag (Lock);

Meta:
    name:"Left"
    clock:1000
Images:
    ?ImageList(str)<"npc_squid.png">{0}:
Groups:
    @main
        ?content(int)<%s>{0}:
Animation:
    ?AnimationCode(str):
        "PLAY_GROUP(main, -1)"