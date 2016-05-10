Keys = {};

Import("Core.Trigger");
Import("Core.Animation.Animator");

GetHook("TriggerDatabase");

This:UseLocalTrigger("Init");

function Local.Init()
    This:useCustomTrigger("Map", "Keys", "*");
    code = "";
    ValidCode = Require("code");
    DigitalTrigger = Hook.TriggerDatabase:createTriggerGroup(Public, "Output")
        :addTrigger("On")
        :addTrigger("Off");
end

function Keys.Click(param)
    if param.keyNum == "V" then
        if code == ValidCode then
            Door.Open();
        end
    else if param.keyNum = "C" then
        code = "";
    else
        code = code .. param.keyNum;
    end
end