local prefix = ";"

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local Character = game.Players.LocalPlayer.Character
    local split = string.split(msg," ")
    local lower = string.lower(split[1])
    
    if lower == prefix.."stage" then
      local Root = Character:FindFirstChild("HumanoidRootPart")
      Root.CFrame = CFrame.new(Vector3.new(-76.806, 57.6, -214.826))
      task.wait(0.1)
      sendnotif("Moved you to the stage.")
   end
end)

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local Character = game.Players.LocalPlayer.Character
    local split = string.split(msg," ")
    local lower = string.lower(split[1])
    
    if lower == prefix.."dj" then
      local Root = Character:FindFirstChild("HumanoidRootPart")
      Root.CFrame = CFrame.new(Vector3.new(-90.536, 59.07, -215.866))
      task.wait(0.1)
      sendnotif("Moved you to the DJ.")
   end
end)


game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local split = string.split(msg," ")
    local lower = string.lower(split[1])
    
    if lower == prefix.."spamvote" then
    if game.Workspace.RapBattles.Rappers.player1.Value or game.Workspace.RapBattles.Rappers.player2.Value == split[2] then
      if game.Workspace.RapBattles.Rappers.player1.Value == split[2] then
         for i = 100,1000 do 
             game.Workspace.Votes:FireServer(false,"p1")
             game:GetService("RunService").Heartbeat:Wait()
         end
      end
      if game.Workspace.RapBattles.Rappers.player2.Value == split[2] then
          for i = 100,1000 do
            game.Workspace.Votes:FireServer(false,"p2")
            game:GetService("RunService").Heartbeat:Wait()
         end
      end
      sendnotif("Successfully spammed the votes of "..split[2]..".")
   else
      sendnotif(split[2].." isn't on stage.")
   end
end
end)
  
game.Players.LocalPlayer.Chatted:Connect(function(msg)
   local lower = string.lower(msg)
      
   if lower == prefix.."cmds" then
      print("Vaile")
      print(".....")
      print(prefix.."dj -- teleports you to booth.")
      print(prefix.."stage -- teleports you to the stage.")
      print(prefix.."spamvote -- spams the vote of someone on stage. (use when the voting menu comes up)")
      task.wait(0.1)
      sendnotif("Please check the console for commands with /console.")
   end
end)

function sendnotif(msg)
  game.StarterGui:SetCore("SendNotification", {
      Title = "Vaile";
      Text = msg;
      Duration = 1;
      })
end
  
sendnotif("Vaile successfully loaded.")
