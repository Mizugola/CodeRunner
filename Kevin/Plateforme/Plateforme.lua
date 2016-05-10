PlatController = {}
Plat = {}

Import("Core.Animation.Animator");
Import("Core.Collision");

This:useLocalTrigger("Init");

function Local.Init()
    doorControlled = false;
    doorUnlocked = true;
    if IsArgumentInRequireList("PlatControllerKey") then
        platControlled = true;
        platUnlocked = false;
        platControllerKey = Require("PlatControllerKey");
        This:useCustomTrigger(platControllerKey, "Output", "*", "PlatController");
    end
    This:Animator():setKey("Close");
    opened = false;
end

function Plat.Put()
    This:Animator():setKey("On");
    This:Collider():setSolid(true);
end

function Plat.Remove()
    This:Animator():setKey("Off");
    This:Collider():setSolid(false);
end

function PlatController.On()
    platUnlocked = true;
end

function PlatController.Off()
    platUnlocked = false;
end