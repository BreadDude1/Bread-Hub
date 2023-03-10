-- strong man sim script by BreadMan#1090
-- uilib documentation:https://xheptcofficial.gitbook.io/kavo-library/
local uilib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = uilib.CreateLib("Bread Hub", "Midnight")
local MainTab = Window:NewTab("Main")
local TeleportsTab = Window:NewTab("Teleports")
local LocalPlayerTab = Window:NewTab("Local Player")
local MiscTab = Window:NewTab("Misc")

local AutoStuff = MainTab:NewSection("Auto stuff")
local Other = MainTab:NewSection("Other")
local Teleports = TeleportsTab:NewSection("Teleports")
local LocalPlayerT = LocalPlayerTab:NewSection("Local Player")


local Weight = game:GetService("Players").LocalPlayer.Data.Weight.Value
local CurrentSelectedTPArea = nil

AutoStuff:NewToggle("AutoClicker", "or autowaiter idk", function(state)
    if state then
       getgenv().AutoClick = true
       AutoClicker()
       sendNotification("Bread Hub","Enabled Autoclicker")
    else
        getgenv().AutoClick = false
        AutoClicker()
        sendNotification("Bread Hub","Disabled Autoclicker")
    end
end)

LocalPlayerT:NewSlider("Walk Speed", "Sets your humanoid walkspeed", 500, 16, function(speed)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end)

LocalPlayerT:NewSlider("Jump Power", "Sets your humanoid jump power", 500, 50, function(speed)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end)

Teleports:NewButton("tp", "Select area you want to tp to with dropdown below and then click the tp button", function()
    if CurrentSelectedTPArea == "Spawn" then
        teleport(-1310.28503, 9.459342, 384.661743, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        tpFrame = -1310.28503, 9.459342, 384.661743, 1, 0, 0, 0, 1, 0, 0, 0, 1
    elseif CurrentSelectedTPArea == "Jungle" then
        teleport(-1374.36511, 7.07607937, -35.9560852, 0.960348129, 5.26108934e-08, 0.278803736, -2.61656066e-08, 1, -9.85740058e-08, -0.278803736, 8.73702959e-08, 0.960348129)
        tpFrame = -1374.36511, 7.07607937, -35.9560852, 0.960348129, 5.26108934e-08, 0.278803736, -2.61656066e-08, 1, -9.85740058e-08, -0.278803736, 8.73702959e-08, 0.960348129
    elseif CurrentSelectedTPArea == "Beach" then 
        teleport(-1427.44666, 7.90397453, -268.719971, 0.998478949, 3.4764934e-08, -0.0551344305, -3.17488613e-08, 1, 5.55799033e-08, 0.0551344305, -5.37449054e-08, 0.998478949)
        tpFrame = -1427.44666, 7.90397453, -268.719971, 0.998478949, 3.4764934e-08, -0.0551344305, -3.17488613e-08, 1, 5.55799033e-08, 0.0551344305, -5.37449054e-08, 0.998478949
    elseif CurrentSelectedTPArea == "Space" then
        teleport(-1423.54272, 10.1240149, -504.162354, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        tpFrame = -1423.54272, 10.1240149, -504.162354, 1, 0, 0, 0, 1, 0, 0, 0, 1
    elseif CurrentSelectedTPArea == "Forest" then
        teleport(-1423.54272, 10.1240149, -504.162354, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        tpFrame = -1423.54272, 10.1240149, -504.162354, 1, 0, 0, 0, 1, 0, 0, 0, 1
    elseif CurrentSelectedTPArea == "Desert" then
        teleport(-1595.4989, 10.1240149, -966.069763, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        tpFrame = -1595.4989, 10.1240149, -966.069763, 1, 0, 0, 0, 1, 0, 0, 0, 1
    elseif CurrentSelectedTPArea == "Hell" then
        teleport(-1673.20374, 9.10558414, -1179.71448, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        tpFrame = -1673.20374, 9.10558414, -1179.71448, 1, 0, 0, 0, 1, 0, 0, 0, 1
    elseif CurrentSelectedTPArea == "Candy" then 
        teleport(-1760.1543, 9.10558414, -1408.65417, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        tpFrame = -1760.1543, 9.10558414, -1408.65417, 1, 0, 0, 0, 1, 0, 0, 0, 1
    elseif CurrentSelectedTPArea == "KOFT" then 
        teleport(-1391.59009, 9.459342, 166.672348, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        tpFrame = -1391.59009, 9.459342, 166.672348, 1, 0, 0, 0, 1, 0, 0, 0, 1
    elseif CurrentSelectedTPArea == "Void" then
        teleport(-1826.297, 9.10558414, -1632.37451, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        tpFrame = -1826.297, 9.10558414, -1632.37451, 1, 0, 0, 0, 1, 0, 0, 0, 1
    elseif CurrentSelectedTPArea == "Anime" then
        teleport(-1900.50537, 9.10558414, -1850.93042, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        tpFrame = -1900.50537, 9.10558414, -1850.93042, 1, 0, 0, 0, 1, 0, 0, 0, 1
    elseif CurrentSelectedTPArea == "Moon" then 
        teleport(-1963.4552, 9.10558414, -2073.76929, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        tpFrame = -1963.4552, 9.10558414, -2073.76929, 1, 0, 0, 0, 1, 0, 0, 0, 1
    else
        print("Error, Didnt teleport")
        sendNotification("Bread Hub", "Error, did not tp")
    end
    print(tpFrame)
end)

Teleports:NewDropdown("Select Area", "DropdownInf", {"Spawn", "Jungle", "Beach","Space","Forest","Desert","Hell","Candy","KOFT","Void","Anime","Moon"}, function(currentOption)
    CurrentSelectedTPArea = currentOption
end)

getgenv().AutoClick = false

function CurrentWeight()
    local Weight = game:GetService("Players").LocalPlayer.Data.Weight.Value
end

function teleport(tpCFrame)
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(tpCFrame))
end

-- notifications skidded off devfourm cuz i dont understand roblox api
function sendNotification(Title, Text)
local StarterGui = game:GetService("StarterGui")

repeat
    local success, errorMessage = pcall(function()
        StarterGui:SetCore("SendNotification", {
             Title=Title,
             Text=Text,
             Time=5
         })
     end)
until success
end

function AutoClicker()
        spawn(function()
            if getgenv().AutoClick == true then  
                game:GetService("ReplicatedStorage").Events.SkillToggle:FireServer("NumberOne",true)
                while getgenv().AutoClick == true do 
                    if Weight == game:GetService("Players").LocalPlayer.Data.Weight.Value then
                        game:GetService("ReplicatedStorage").Events.Weight:FireServer(Weight)
                    else
                        CurrentWeight()
                    end 
                wait()
            end  
        else
            game:GetService("ReplicatedStorage").Events.SkillToggle:FireServer("NumberOne",false) 
        end
    end)
end
