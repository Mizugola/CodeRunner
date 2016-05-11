PlatController = {}
Plat = {}

Import("Core.Animation.Animator");
Import("Core.Collision");
Import("Core.LevelSprite");

This:useLocalTrigger("Init");
This:useLocalTrigger("Update");

function Local.Init()
    if IsArgumentInRequireList("PlatControllerKey") then
        platControllerKey = Require("PlatControllerKey");
        This:useCustomTrigger(platControllerKey, "Output", "*", "PlatController");
    end
    This:Animator():setKey("On");
    This:LevelSprite():setVisible(false);
    This:Collider():setSolid(false);
    visible = false;
    growing = 0;
end

function Plat.Create()
    This:LevelSprite():setVisible(true);
    This:Collider():setSolid(true);
    growing = 1;
    This:LevelSprite():setScale(0.1,1);
end

function Plat.Remove()
    growing = -1;
    This:LevelSprite():setScale(10,1);
end

function PlatController.On()
    if not visible then
        Plat.Create();
        visible = true;
    else
        Plat.Remove();
        visible=false;
    end
end

function Local.Update(param)
    ScaleX = This:LevelSprite():getScaleX();
    if (ScaleX >=0 and ScaleX <= 10) then
        This:LevelSprite():setScale(ScaleX+0.1*growing*param.dt,1);
        This:Collider():setPointRelativePosition(1, math.floor(ScaleX*50), 0);
        This:Collider():setPointRelativePosition(2, math.floor(ScaleX*50), 10);
        if (ScaleX == 0) then
            This:LevelSprite():setVisible(false);
            This:Collider():setSolid(false);
        end
    end
end