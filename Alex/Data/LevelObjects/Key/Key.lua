Import("Core.Trigger");
Import("Core.Animation.Animator");

GetHook("TriggerDatabase");

This:useLocalTrigger("Init");
This:useLocalTrigger("Click");

function Local.Init()
    keyNum = Require("KeyNum");
    if Hook.TriggerDatabase:doesTriggerGroupExists("Map", "Keys") then
        keyControl = Hook.TriggerDatabase:joinTriggerGroup("Map", "Keys");
    else
        keyControl = Hook.TriggerDatabase:createTriggerGroup("Map", "Keys")
            :addTrigger("Click");
    end
    This:Animator():setKey(keyNum);
end

function Local.Click()
    keyControl:pushParameter("Click", "KeyNum", keyNum);
    keyControl:enableTrigger("Click");
end