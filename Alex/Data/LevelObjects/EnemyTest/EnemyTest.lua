Enemy = {}
Keys = {}


Import("Core.Animation.Animator");
Import("Core.Collision");
Import("Core.MathExp");
Import("Core.LevelSprite");

This:useLocalTrigger("Init");
This:useLocalTrigger("Update");

clicked = false;

function Local.Init()
    This:useCustomTrigger("Map", "Keys", "*");
    This:Animator():setKey("Left");
    local basePosX = This:LevelSprite():getX();
    local basePosY = This:LevelSprite():getY();
    xMovement = Core.MathExp.MathExp.new("cos@(t/10) * 250 + bx");
    xMovement:buildMathExp();
    xMovement:setVar("bx", basePosX);
    yMovement = Core.MathExp.MathExp.new("cos@(t) * 30 + by");
    yMovement:buildMathExp();
    yMovement:setVar("by", basePosY);
    dMovement = Core.MathExp.MathExp.new("cos@(t/10)");
    dMovement:buildMathExp();
    t = 0;
    
    code = "";
end

function Local.Update(param)
    local x = xMovement:getResult();
    local y = yMovement:getResult();
    This:LevelSprite():setPosition(x, y);
    This:Collider():setPosition(math.floor(x), math.floor(y));
    t = t + (param.dt / 10);
    xMovement:setVar("t", t);
    yMovement:setVar("t", t);
    dMovement:setVar("t", t);
    if dMovement:getResult() < -0.99 then
        This:Animator():setKey("Right");
    elseif dMovement:getResult() > 0.99 then
        This:Animator():setKey("Left");
    end
    
    if clicked then
        This:LevelSprite():setRotationOrigin(32, 36);
        This:LevelSprite():setRotation(x*10);
    elseif not clicked then
        This:LevelSprite():setRotation(0);
    end
end


function Keys.Click(param)
    if param.KeyNum == "V" then
        if code == "666" then 
            This:Collider():setSolid(false);
            clicked = true;
            code = "";
        else
            code = "";
        end
    elseif param.KeyNum == "C" then
        This:Collider():setSolid(true);
        clicked = false;
        code = "";
    else
        code = code .. param.KeyNum;
    end
end