-- Étape 1: Écrire "DEV BY LUXURY SCRIPT 2" avec un fond transparent

local billboardGui = Instance.new("BillboardGui")
billboardGui.Name = "LuxuryScriptGui"
billboardGui.AlwaysOnTop = true
billboardGui.Enabled = true
billboardGui.Size = UDim2.new(0, 200, 0, 50)
billboardGui.StudsOffset = Vector3.new(0, 3, 0)
billboardGui.Adornee = game.Players.LocalPlayer.Character.Head

local textLabel = Instance.new("TextLabel")
textLabel.Name = "Text"
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.TextSize = 20
textLabel.Font = Enum.Font.SourceSansBold
textLabel.Text = "DEV BY LUXURY SCRIPT 2"
textLabel.Parent = billboardGui

billboardGui.Parent = game.Players.LocalPlayer.PlayerGui


-- Étape 2: Ouvrir un menu avec une clé de vérification et un bouton pour copier le lien Discord

local verifyKey = "luxuryM2d"  -- Clé de vérification requise pour ouvrir le menu

local function openMenu()
    -- Créer le menu ici
    
    -- Bouton pour copier le lien Discord
    local discordLink = "https://discord.gg/kVfmrw4h" -- Lien Discord à copier

    local menuGui = Instance.new("ScreenGui")
    menuGui.Name = "LuxuryMenuGui"
    menuGui.ResetOnSpawn = false

    local frame = Instance.new("Frame")
    frame.Name = "MenuFrame"
    frame.Size = UDim2.new(0, 200, 0, 200)
    frame.BackgroundColor3 = Color3.new(0, 0, 0)
    frame.BackgroundTransparency = 0.7
    frame.Position = UDim2.new(0.5, -100, 0.5, -100)
    frame.Parent = menuGui

    local button = Instance.new("TextButton")
    button.Name = "CopyButton"
    button.Size = UDim2.new(0, 150, 0, 50)
    button.Position = UDim2.new(0.5, -75, 0.5, -25)
    button.BackgroundColor3 = Color3.new(1, 1, 1)
    button.TextColor3 = Color3.new(0, 0, 0)
    button.TextSize = 20
    button.Font = Enum.Font.SourceSansBold
    button.Text = "Copier le Discord"
    button.Parent = frame

    button.MouseButton1Click:Connect(function()
        -- Copier le lien Discord dans le presse-papiers
        game:GetService("GuiService"):SetClipboard(discordLink)
    end)

    menuGui.Parent = game.Players.LocalPlayer.PlayerGui
end

-- Écouter l'événement de frappe pour ouvrir le menu lorsque la clé de vérification est entrée
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Return then
        local textBox = game:GetService("UserInputService"):GetFocusedTextBox()
        if textBox and textBox.Name == "TextBox" then
            local enteredText = textBox.Text:lower()
            if enteredText == verifyKey then
                openMenu()
                textBox.Text = ""
                textBox:ReleaseFocus()
            end
        end
    end
end)


-- Étape 3: Ouvrir un menu avec un fond noir et des boutons

local function openSubMenu()
    -- Créer le sous-menu ici
    
    local subMenuGui = Instance.new("ScreenGui")
    subMenuGui.Name = "LuxurySubMenuGui"
    subMenuGui.ResetOnSpawn = false

    local frame = Instance.new("Frame")
    frame.Name = "SubMenuFrame"
    frame.Size = UDim2.new(0, 200, 0, 200)
    frame.BackgroundColor3 = Color3.new(0, 0, 0)
    frame.BackgroundTransparency = 0.7
    frame.Position = UDim2.new(0, 0, 0, 0)
    frame.Parent = subMenuGui

    -- Premier bouton: Player -> WalkSpeed
    local walkSpeedButton = Instance.new("TextButton")
    walkSpeedButton.Name = "WalkSpeedButton"
    walkSpeedButton.Size = UDim2.new(0, 150, 0, 50)
    walkSpeedButton.Position = UDim2.new(0.1, 0, 0.1, 0)
    walkSpeedButton.BackgroundColor3 = Color3.new(1, 1, 1)
    walkSpeedButton.TextColor3 = Color3.new(0, 0, 0)
    walkSpeedButton.TextSize = 20
    walkSpeedButton.Font = Enum.Font.SourceSansBold
    walkSpeedButton.Text = "WalkSpeed"
    walkSpeedButton.Parent = frame

    -- Deuxième bouton: Player -> Fly
    local flyButton = Instance.new("TextButton")
    flyButton.Name = "FlyButton"
    flyButton.Size = UDim2.new(0, 150, 0, 50)
    flyButton.Position = UDim2.new(0.1, 0, 0.3, 0)
    flyButton.BackgroundColor3 = Color3.new(1, 1, 1)
    flyButton.TextColor3 = Color3.new(0, 0, 0)
    flyButton.TextSize = 20
    flyButton.Font = Enum.Font.SourceSansBold
    flyButton.Text = "Fly"
    flyButton.Parent = frame

    -- Deuxième bouton: Auto Dupe
    local autoDupeButton = Instance.new("TextButton")
    autoDupeButton.Name = "AutoDupeButton"
    autoDupeButton.Size = UDim2.new(0, 150, 0, 50)
    autoDupeButton.Position = UDim2.new(0.1, 0, 0.5, 0)
    autoDupeButton.BackgroundColor3 = Color3.new(1, 1, 1)
    autoDupeButton.TextColor3 = Color3.new(0, 0, 0)
    autoDupeButton.TextSize = 20
    autoDupeButton.Font = Enum.Font.SourceSansBold
    autoDupeButton.Text = "AUTO DUPE"
    autoDupeButton.Parent = frame

    subMenuGui.Parent = game.Players.LocalPlayer.PlayerGui
end


-- Écouter les clics des boutons pour ouvrir le sous-menu
button.MouseButton1Click:Connect(openSubMenu)
walkSpeedButton.MouseButton1Click:Connect(function()
    -- Action du bouton WalkSpeed
end)
flyButton.MouseButton1Click:Connect(function()
    -- Action du bouton Fly
end)
autoDupeButton.MouseButton1Click:Connect(function()
    -- Action du bouton AutoDupe
end)
