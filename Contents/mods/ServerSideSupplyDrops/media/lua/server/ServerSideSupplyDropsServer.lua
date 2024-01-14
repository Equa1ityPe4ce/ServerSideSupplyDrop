-- ServerSideSupplyDropsServer.lua
local ServerSideSupplyDrops = {};

-- Parses the command arguments to determine the drop type and coordinates
function ServerSideSupplyDrops.parseArguments(arguments)
    print("uuu IN Parsed arguments:", table.concat(args, ", "))
    print("uuu IN Parsed arguments:", table.concat(args, ", "))
    print("uuu IN Parsed arguments:", table.concat(args, ", "))
    local args = {};
    for word in string.gmatch(arguments, '([^%s]+)') do
        table.insert(args, word);
    end
    print("uuu Parsed arguments:", table.concat(args, ", "))
    return args;
end

-- Function to create a FoodPack supply drop
function ServerSideSupplyDrops.spawnFoodPack(x, y)
    -- Logic to spawn a backpack at coordinates (x, y)
    local square = getCell():getGridSquare(x, y, 0); -- Assuming ground level (z=0)
    if square then
        local backpack = InventoryItemFactory.CreateItem("Base.Bag_Cat_Pack");
        square:AddWorldInventoryItem(backpack, 0.5, 0.5, 0);

        -- Add food items to the backpack
        local foodItems = {

            {"Base.BurritoRecipe", 3},
            {"Base.Baloney" ,2},
            {"Base.Ham" ,2},
            {"Base.MincedMeat" ,2},
            {"Base.Tofu" ,2},
            {"Base.Banana" ,4},
            {"Base.Grapefruit" ,4},
            {"Base.Rice" ,4},
            {"Base.Pasta" ,2},
            {"Base.MuffinFruit" ,4},
            {"Base.GingerPickled" ,6},
            {"Base.Coffee2" ,2},
            {"Base.Vinegar" ,2}
        };

        for _, itemInfo in ipairs(foodItems) do
            local itemType = itemInfo[1];
            local itemCount = itemInfo[2];
            for i = 1, itemCount do
                if backpack:getItemContainer() then
                    print("in the if: " .. itemType)
                    backpack:getItemContainer():AddItem(itemType);
                    print("Added item to backpack: " .. itemType)
                else
                    print("Error: Could not access backpack's item container.")
                end
            end
        end
    else

    end
end

-- Function to create a AmmoPack supply drop
function ServerSideSupplyDrops.spawnAmmoPack(x, y)
    -- Logic to spawn a backpack at coordinates (x, y)
    local square = getCell():getGridSquare(x, y, 0); -- Assuming ground level (z=0)
    if square then
        local backpack = InventoryItemFactory.CreateItem("Base.ELA_Bag");
        square:AddWorldInventoryItem(backpack, 0.5, 0.5, 0);

        -- Add food items to the backpack
        local ammoItems = {

            {"Base.Bullets9mmBox", 3},
            {"Base.Bullets45Box" ,3},
            {"Base.556Box" ,20},
            {"Base.762x39Box" ,20},
            {"Base.308Box" ,10},
            {"Base.Banana" ,4},
            {"Base.Grapefruit" ,4},
            {"Base.ShotgunShellsBox" ,10}
        };

        for _, itemInfo in ipairs(ammoItems) do
            local itemType = itemInfo[1];
            local itemCount = itemInfo[2];
            for i = 1, itemCount do
                if backpack:getItemContainer() then
                    print("in the if: " .. itemType)
                    backpack:getItemContainer():AddItem(itemType);
                    print("Added item to backpack: " .. itemType)
                else
                    print("Error: Could not access backpack's item container.")
                end
            end
        end
    else

    end
end

-- Function to create a HeavyArmorPack supply drop
function ServerSideSupplyDrops.spawnHeavyArmorPack(x, y)
    -- Logic to spawn a backpack at coordinates (x, y)
    local square = getCell():getGridSquare(x, y, 0); -- Assuming ground level (z=0)
    if square then
        local backpack = InventoryItemFactory.CreateItem("Base.Bag_Dozer_Pack");
        square:AddWorldInventoryItem(backpack, 0.5, 0.5, 0);

        -- Add food items to the backpack
        local armorItems = {

            {"Base.Armor_Dozer", 1},
            {"Base.EXO_Suit" ,1},
            {"Base.Hunter_Arm" ,2},
            {"Base.Wolf_Knee_Pad_Loose",1},
            {"Base.Hunter_Leg",2},
            {"Base.Hunter_Knife",3},
            {"Base.Metro_Knee",2},
            {"Base.Armor_Defender",1},
            {"Base.Bag_Plate_Carrier",1},
            {"Base.Armor_6B13",1},
            {"Base.Wolf_Plate_Carrier",1},
            {"Base.EOD_Armor",1},
            {"Base.Glove_Leather",1}
        };

        for _, itemInfo in ipairs(armorItems) do
            local itemType = itemInfo[1];
            local itemCount = itemInfo[2];
            for i = 1, itemCount do
                if backpack:getItemContainer() then
                    print("in the if: " .. itemType)
                    backpack:getItemContainer():AddItem(itemType);
                    print("Added item to backpack: " .. itemType)
                else
                    print("Error: Could not access backpack's item container.")
                end
            end
        end
    else

    end
end

-- Function to create a HeavyArmorPack supply drop
function ServerSideSupplyDrops.spawnLightArmorPack(x, y)
    -- Logic to spawn a backpack at coordinates (x, y)
    local square = getCell():getGridSquare(x, y, 0); -- Assuming ground level (z=0)
    if square then
        local backpack = InventoryItemFactory.CreateItem("Base.Bag_ZIP");
        square:AddWorldInventoryItem(backpack, 0.5, 0.5, 0);

        -- Add food items to the backpack
        local armorItems = {
            {"Base.Ashe_Jacket",3},
            {"Base.Ashe_Cloak",2},
            {"Base.Ashe_Leg_Armor",3},
            {"Base.Ashe_Necktie",3},
            {"Base.Ashe_Hat",3},
            {"Base.Ashe_Jeans",2},
            {"Base.Bag_Sniper_Pack",2},
            {"Base.Bag_D3M",1},
            {"Base.Hat_M45_GasMask",1},
            {"Base.Glove_Leather",1}
        };

        for _, itemInfo in ipairs(armorItems) do
            local itemType = itemInfo[1];
            local itemCount = itemInfo[2];
            for i = 1, itemCount do
                if backpack:getItemContainer() then
                    print("in the if: " .. itemType)
                    backpack:getItemContainer():AddItem(itemType);
                    print("Added item to backpack: " .. itemType)
                else
                    print("Error: Could not access backpack's item container.")
                end
            end
        end
    else

    end
end

-- Function to create a LightGunPack supply drop
function ServerSideSupplyDrops.spawnLightGunPack(x, y)
    -- Logic to spawn a backpack at coordinates (x, y)
    local square = getCell():getGridSquare(x, y, 0); -- Assuming ground level (z=0)
    if square then
        local backpack = InventoryItemFactory.CreateItem("Base.Bag_Robbie_Pack");
        square:AddWorldInventoryItem(backpack, 0.5, 0.5, 0);

        -- Add food items to the backpack
        local gunItems = {
            {"Base.G21",2},
            {"Base.45Drum",2},
            {"Base.AR18",1},
            {"Base.AKM_Custom",3},
            {"Base.SPAS_15",1},
            {"Base.DAO12",1},
            {"Base.Suppressor_Rifles",1},
            {"Base.Suppressor_Shotgun",1},
            {"Base.762Drum",2},
            {"Base.556Drum",2},
            {"Base.12gDrum",2}
        };

        for _, itemInfo in ipairs(gunItems) do
            local itemType = itemInfo[1];
            local itemCount = itemInfo[2];
            for i = 1, itemCount do
                if backpack:getItemContainer() then
                    print("in the if: " .. itemType)
                    backpack:getItemContainer():AddItem(itemType);
                    print("Added item to backpack: " .. itemType)
                else
                    print("Error: Could not access backpack's item container.")
                end
            end
        end
    else

    end
end

-- Function to create a HeavyGunPack supply drop
function ServerSideSupplyDrops.spawnHeavyGunPack(x, y)
    -- Logic to spawn a backpack at coordinates (x, y)
    local square = getCell():getGridSquare(x, y, 0);
    if square then
        local backpack = InventoryItemFactory.CreateItem("Base.Bag_Robbie_Pack");
        square:AddWorldInventoryItem(backpack, 0.5, 0.5, 0);

        -- Add food items to the backpack
        local gunItems = {
            {"Base.DSHK_Fold",1},
            {"Base.Ash",1},
            {"Base.ASHClip",3},
            {"Base.M1216",1},
            {"Base.SRM1216_Cylinder",5},
            {"Base.RPD",1},
            {"Base.762x39Belt",3},
            {"Base.Shrike",1},
            {"Base.556Belt",3},
            {"Base.XM214",1},
            {"Base.Fixed_MG_Fold",1}
        };

        for _, itemInfo in ipairs(gunItems) do
            local itemType = itemInfo[1];
            local itemCount = itemInfo[2];
            for i = 1, itemCount do
                if backpack:getItemContainer() then
                    print("in the if: " .. itemType)
                    backpack:getItemContainer():AddItem(itemType);
                    print("Added item to backpack: " .. itemType)
                else
                    print("Error: Could not access backpack's item container.")
                end
            end
        end
    else

    end
end

-- Function to spawn a supply drop at given coordinates
function ServerSideSupplyDrops.spawnSupplyDrop(dropType, x, y)
    if dropType == "FoodPack" then
        ServerSideSupplyDrops.spawnFoodPack(x, y);
    elseif dropType == "AmmoPack" then
        ServerSideSupplyDrops.spawnAmmoPack(x, y);
    elseif dropType == "HeavyArmorPack" then
        ServerSideSupplyDrops.spawnHeavyArmorPack(x, y);
    elseif dropType == "LightArmorPack" then
        ServerSideSupplyDrops.spawnLightArmorPack(x, y);
    elseif dropType == "LightGunPack" then
        ServerSideSupplyDrops.spawnLightGunPack(x, y);
    elseif dropType == "HeavyGunPack" then
        ServerSideSupplyDrops.spawnHeavyGunPack(x, y);
    end
end

-- Command handler for the "SupplyDrop" command
function ServerSideSupplyDrops.handleSupplyDropCommand(author, command, args)
    print("SupplyDrop command received from:", author)
    print("Command:", command)
    print("Arguments:", table.concat(args, ", "))

    local dropType = args[1]
    local x = tonumber(args[2])
    local y = tonumber(args[3])

    ServerSideSupplyDrops.spawnSupplyDrop(dropType, x, y)
    return "Supply drop command processed"
end

-- Register command on server start
Events.OnServerStarted.Add(function()
    LuaServerCommands.register("SupplyDrop", ServerSideSupplyDrops.handleSupplyDropCommand)
end)

-- Command handler
function ServerSideSupplyDrops.testCommand(author, command, args)
    print("Test command received from:", author)
    print("Command:", command)
    print("Arguments:", table.concat(args, ", "))
    return "Test command executed successfully!"
end

-- Register command on server start
Events.OnServerStarted.Add(function()
    LuaServerCommands.register("testCommand", ServerSideSupplyDrops.testCommand)
end)


return ServerSideSupplyDrops;