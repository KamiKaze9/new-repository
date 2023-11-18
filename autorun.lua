print("1111111111111111111")
print("1111111111111111111")
print("1111111111111111111")
print("1111111111111111111")
wait(1)
local getgenv().cards = {}
getgenv().cards = {
	"Enemy Shield III",
	"Enemy Health III", 
	"Enemy Speed III",
	"Enemy Shield II",
	"Enemy Health II",
	"Enemy Speed II",
	"Enemy Shield I",
	"Enemy Health I",
	"Enemy Speed I",
	"Range I",
	"Cooldown I",
	"Range II",
	"Attack I",
	"Doubles Attack , Increase Cooldown",
	"Gain 2 Random Effects Tier 1",
	"Gain 2 Random Effects Tier 2",
	"Gain 2 Random Effects Tier 3",
	"Cooldown II",
	"Range III",
	"Cooldown III",
	"Attack II",
	"Cooldown III",
	"Attack III",
	"Doubles Range",
	"Doubles Attack"}
local found = false

game.Players.LocalPlayer.PlayerGui.RoguelikeSelect:GetPropertyChangedSignal("Enabled"):Connect(function()
	print("changed", game.Players.LocalPlayer.PlayerGui.RoguelikeSelect.Enabled)
	if game.Players.LocalPlayer.PlayerGui.RoguelikeSelect.Enabled == true then
		for Priority = 1, 25 do
			for i, v in pairs(game.Players.LocalPlayer.PlayerGui.RoguelikeSelect.Main.Main.Items:GetChildren()) do
				if v.Name == "OptionFrame" then
					if v.bg.Main.Title.TextLabel.Text == getgenv().cards[Priority] then
						found = true
						print(getgenv().cards[Priority])
						local args = {
							[1] = i
						}

						game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("select_roguelike_option"):InvokeServer(unpack(args))

						break
					end
					print("outside", getgenv().cards[Priority])
				end
			end
			if found == true then
				found = false
				break
			end
		end
	end
end)

print("1111111111111111111")
print("1111111111111111111")
print("1111111111111111111")
print("1111111111111111111")
