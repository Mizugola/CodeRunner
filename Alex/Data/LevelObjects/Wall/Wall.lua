ObjectManager{}

Import("Core.Trigger");
Import("Core.Animation.Animator");

GetHook("TriggerDatabase");

This:useLocalTrigger("Init");

function Local.Init()
    
    This:useCustomTrigger("Map", "ObjectManager", "*");
    This:LevelSprite():setPosition(500,800);
end

function ObjectManager.Hammer()
    
end