Import("Core.Trigger");
Import("Core.Animation.Animator");

GetHook("TriggerDatabase");

This:useLocalTrigger("Init");

function Local.Init
    Object = Hook.TriggerDatabase:createTriggerGroup("Map", "ObjectManager")
        :addTrigger("Hammer");
end

