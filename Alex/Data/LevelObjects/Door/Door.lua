DoorController = {}
Door = {}

Import("Core.Animation.Animator");
Import("Core.Collision");

This:useLocalTrigger("Init");
This:useLocalTrigger("Click");

function Local.Init()
    doorControlled = false;
    doorUnlocked = true;

    if IsArgumentInRequireList("DoorControllerKey") then
        doorControlled = true;
        doorUnlocked = false;
        doorControllerKey = Require("DoorControllerKey");
        This:useCustomTrigger(doorControllerKey, "Output", "*", "DoorController");
    end
    This:Animator():setKey("Close");
    opened = false;
end

function Door.Open()
    This:Animator():setKey("Open");
    This:Collider():setSolid(false);
    This:Collider():setPointRelativePosition(1, 39, 0);
    This:Collider():setPointRelativePosition(2, 39, 100);
end

function Door.Close()
    This:Animator():setKey("Close");
    This:Collider():setSolid(true);
    This:Collider():setPointRelativePosition(1, 11, 0);
    This:Collider():setPointRelativePosition(2, 11, 100);
end

function Local.Click()
    if opened then
        Door.Close();
        opened = false;
    elseif (doorControlled and doorUnlocked) or (not doorControlled) then
        Door.Open();
        opened = true;
    end
end

function DoorController.On()
    doorUnlocked = true;
    Door.Open();
end

function DoorController.Off()
    doorUnlocked = false;
end