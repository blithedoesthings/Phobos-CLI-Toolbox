function clearing()
    local h = package.config:sub(1,1)
    if h == "\\" then -- checks the os of the user
        userOS = "Windows"
    else
        userOS = "Unix-like"
    end

    if userOS == "Windows" then
        os.execute("cls")
    elseif userOS == "Unix-like" then
        os.execute("clear")
    end
end

function mathRound(n, d)
    local mult = 10 ^ d
    if n >= 0 then
        return math.floor(n * mult + 0.5) / mult
    else
        return math.ceil(n * mult - 0.5) / mult
    end
end

local units = require("units")
function convertUniversal(category)

    local selectedCategory = units[category]
    
    if not selectedCategory then
        error("No category selected")
        return
    end

    while true do
        clearing()
        print("Selected category: " .. selectedCategory.name)
        print("Enter the acronym of the unit you want to convert from:")
        
        for _, unit in ipairs(selectedCategory.order) do
            print("- " .. unit)
        end
        print("Type \"X\" to go back")
        local selectedFrom = io.read():lower()
        if selectedCategory.name == "Data Storage" then
            if #selectedFrom == 2 then
                selectedFrom = selectedFrom:upper()
            elseif #selectedFrom == 3 then
                selectedFrom = selectedFrom:sub(1,1):upper() .. selectedFrom:sub(2, -2) .. selectedFrom:sub(-1):upper()
            elseif (#selectedFrom == 1) and ((selectedFrom == "B") or (selectedFrom == "b")) then
                selectedFrom = selectedFrom:upper()
            else
                selectedFrom = selectedFrom:lower()
            end
        end
        if selectedFrom == "x" then
            break
        end

        if not selectedCategory.values[selectedFrom] then
            print("Invalid unit")
        else
            print("Enter the acronym of the unit you want to convert to:")
            
            local selectedTo = io.read():lower()
            if selectedCategory.name == "Data Storage" then
                if #selectedTo == 2 then
                    selectedTo = selectedTo:upper()
                elseif #selectedTo == 3 then
                    selectedTo = selectedTo:sub(1,1):upper() .. selectedTo:sub(2, -2) .. selectedTo:sub(-1):upper()
                elseif #selectedTo == 1 and (selectedTo == "B") or (selectedTo == "b") then
                    selectedTo = selectedTo:upper()
                else
                    selectedTo = selectedTo:lower()
                end
            end

            if not selectedCategory.values[selectedTo] then
                print("Invalid unit")
            elseif selectedFrom == selectedTo then
                print("Please select two different units")
            else
                print("Enter value in " .. selectedFrom .. ":")
                local amount = tonumber(io.read())

                if not amount then
                    print("Please enter a number")
                else
                    local baseValue = amount * selectedCategory.values[selectedFrom]
                    local result = baseValue / selectedCategory.values[selectedTo]

                    print("Result: " .. mathRound(result, 4) .. " " .. selectedTo)
                end
            end
        end
    end
end

function convertTemperature() -- specialized case
    while true do
        clearing()
        print("Select the unit to convert from: ")
        print("- Celsius (°C)")
        print("- Fahrenheit (°F)")
        print("- Kelvin (K)")
        print("----------------------")
        print("Type \"X\" to go back.")

        local selectedFrom = io.read():lower()
        if selectedFrom == "x" then
            break
            return
        end

        if (selectedFrom ~= "celsius") and (selectedFrom ~= "c")
            and (selectedFrom ~= "fahrenheit") and (selectedFrom ~= "f")
            and (selectedFrom ~= "kelvin") and (selectedFrom ~= "k") then
                print("Please choose between Celsius, Fahrenheit, or Kelvin")
        else
            selectedFrom = selectedFrom:sub(1,1):upper() .. selectedFrom:sub(2)
            print("Select the unit to convert to ")

            local selectedTo = io.read():lower()
            selectedTo = selectedTo:sub(1,1):upper() .. selectedTo:sub(2)

            if selectedFrom == selectedTo then
            print("Please select two different units")
        
            elseif (selectedTo ~= "Celsius") and (selectedFrom ~= "C")
                and (selectedTo ~= "Fahrenheit") and (selectedFrom ~= "F")
                and (selectedTo ~= "Kelvin") and (selectedFrom ~= "K") then
                    print("Please choose between Celsius, Fahrenheit, or Kelvin")
            else
                print("Select temperature in " .. selectedFrom)
                local temperatureSelected = tonumber(io.read())

                if type(temperatureSelected) == "nil" then
                    print("Please enter a number")
                else
                    if ((selectedFrom == "Fahrenheit") or (selectedFrom == "F")) and ((selectedTo == "Celsius") or (selectedTo == "C")) then
                        print("Result: " .. mathRound(((temperatureSelected - 32) * 5/9), 4) .. "°C")
                    elseif ((selectedFrom == "Celsius") or (selectedFrom == "C")) and ((selectedTo == "Fahrenheit") or (selectedTo == "F")) then
                        print("Result: " .. mathRound(((temperatureSelected * 9/5) + 32), 4) .. "°F")
                    elseif ((selectedFrom == "Fahrenheit") or (selectedFrom == "F")) and ((selectedTo == "Kelvin") or (selectedTo == "K")) then
                        print("Result: " .. mathRound(((temperatureSelected - 32) * 5/9 + 273.15), 4) .. " K")
                    elseif ((selectedFrom == "Kelvin") or (selectedFrom == "K")) and ((selectedTo == "Fahrenheit") or (selectedTo == "F")) then
                        print("Result: " .. mathRound(((temperatureSelected - 273.15) * 1.8 + 32), 4) .. "°F")
                    elseif ((selectedFrom == "Celsius") or (selectedFrom == "C")) and ((selectedTo == "Kelvin") or (selectedTo == "K")) then
                        print("Result: " .. mathRound((temperatureSelected + 273.15), 4) .. " K")
                    elseif ((selectedFrom == "Kelvin") or (selectedFrom == "K")) and ((selectedTo == "Celsius") or (selectedTo == "C")) then
                        print("Result: " .. mathRound((temperatureSelected - 273.15), 4) .. "°C")
                    end
                end
            end
        end
    end
end

function start()
    while true do
        clearing()
        print("========================================")
        print("           [ Unit Converter ]           ")
        print("========================================")
        print("Please select a unit category:")
        print("[1] Temperature")
        print("[2] Length")
        print("[3] Mass")
        print("[4] Time")
        print("[5] Area")
        print("[6] Volume")
        print("[7] Speed")
        print("[8] Data Storage")
        print("----------------------------------------")
        print("[X] Back (return to main menu)")

        local choice = io.read():lower()
        if choice == "1" then
            convertTemperature()
        elseif choice == "2" then
            convertUniversal("length")
        elseif choice == "3" then
            convertUniversal("mass")
        elseif choice == "4" then
            convertUniversal("time")
        elseif choice == "5" then
            convertUniversal("area")
        elseif choice == "6" then
            convertUniversal("volume")
        elseif choice == "7" then
            convertUniversal("speed")
        elseif choice == "8" then
            convertUniversal("dataStorage")
        elseif (choice == "x") then
            return
        end
    end
end

return {
    start = start,
    convertUniversal = convertUniversal,
    convertTemperature = convertTemperature
}
