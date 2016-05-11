Keys = {};

Import("Core.Trigger");
Import("Core.Animation.Animator");

GetHook("TriggerDatabase");

This:useLocalTrigger("Init");

function Local.Init()
    This:useCustomTrigger("Map", "Keys", "*");
    code = "";
    ValidCode = Require("code");
    DigitalTrigger = Hook.TriggerDatabase:createTriggerGroup(Public, "Output")
        :addTrigger("On")
        :addTrigger("Off");
end

function Keys.Click(param)
    if param.KeyNum == "V" then
        if code == ValidCode then
            DigitalTrigger:enableTrigger("On");
            code = "";
        else
            code = "";
        end
    elseif param.KeyNum == "C" then
        DigitalTrigger:enableTrigger("Off");
        code = "";
    else
        code = code .. param.KeyNum;
    end
end