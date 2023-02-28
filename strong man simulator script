-- strong man sim script by BreadMan#1090
local uilib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = uilib.CreateLib("Strong Man Sim GUI", "DarkTheme")
local MainTab = Window:NewTab("Main")
local TeleportsTab = Window:NewTab("Teleports")
local LocalPlayerTab = Window:NewTab("Local Player")
local MiscTab = Window:NewTab("Misc")

local AutoStuff = MainTab:NewSection("Auto stuff")
local Other = MainTab:NewSection("Other")
local Teleports = TeleportsTab:NewSection("Teleports")

local Weight = game:GetService("Players").NoAimbotCouldntBeMe.Data.Weight.Value
local tpFrame = nil
local CurrentSelectedTPArea = nil

AutoStuff:NewToggle("AutoClicker", "or autowaiter idk", function(state)
    if state then
       getgenv().AutoClick = true
       AutoClicker()
    else
        getgenv().AutoClick = false
        AutoClicker()
    end
end)

Teleports:NewButton("tp", "Select area you want to tp to with dropdown below and then click the tp button", function()
    local CurrentTPCFrame = game:GetService("Workspace").Spawns.(CurrentSelectedTPArea).CFrame
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(CurrentTPCFrame))
end)

Teleports:NewDropdown("Select Area", "DropdownInf", {"Spawn", "Jungle", "Beach","Space","Forest","Desert","Hell","Candy","KOFT","Void","Anime","Moon"}, function(currentOption)
    CurrentSelectedTPArea = currentOption
end)

getgenv().AutoClick = false

function CurrentWeight()
    local Weight = game:GetService("Players").NoAimbotCouldntBeMe.Data.Weight.Value
end

function AutoClicker()
        spawn(function()
            if getgenv().AutoClick == true then  
                game:GetService("ReplicatedStorage").Events.SkillToggle:FireServer("NumberOne",true)
                while getgenv().AutoClick == true do 
                    if Weight == game:GetService("Players").NoAimbotCouldntBeMe.Data.Weight.Value then
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