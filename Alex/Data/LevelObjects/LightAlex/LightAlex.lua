Import("Core.Trigger");
Import("Core.Animation.Animator");

GetHook("TriggerDatabase");

This:useLocalTrigger("Init");
This:useLocalTrigger("Click");

function Local.Init()
    LightTrigger = Hook.TriggerDatabase:createTriggerGroup(Public, "Output")
        :addTrigger("On")
        :addTrigger("Off");
    This:Animator():setKey("Off");
    state = false;
end

function Local.Click()
    if state then
        This:Animator():setKey("Off");
        LightTrigger:enableTrigger("Off"); 
        state = false;
    else
        This:Animator():setKey("On");
        LightTrigger:enableTrigger("On"); 
        state = true;
    end 
end