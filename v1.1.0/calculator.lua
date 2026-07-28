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

local function fiveFunction(operation)
    clearing()
    print("Enter first number:")
    local a = tonumber(io.read())
    if a == nil then
        print("Please enter a valid number")
        return
    end

    print("")
    print("Enter second number:")
    local b = tonumber(io.read())
    if b == nil then
        print("Please enter a valid number")
        return
    end

    local result
    if operation == "addition" then
        result = a + b
        print("Result:")
        print(a .. " + " .. b .. " = " .. result)
    elseif operation == "subtraction" then
        result = a - b
        print("Result:")
        print(a .. " - " .. b .. " = " .. result)
    elseif operation == "multiplication" then
        result = a * b
        print("Result:")
        print(a .. " * " .. b .. " = " .. result)
    elseif operation == "division" then
        if b == 0 then
            print("Cannot divide by zero")
            return
        else
        result = a / b
        print("Result:")
        print(a .. " / " .. b .. " = " .. result)
        end
    elseif operation == "modulo" then
        if b == 0 then
            print("Cannot mod by zero")
            return
        end
        result = a % b
        print("Result:")
        print(a .. " mod " .. b .. " = " .. result)
    end
end

local function exponent()
    clearing()
    print("Enter base:")
    local a = tonumber(io.read())
    if a == nil then
        print("Please enter a valid number")
        return
    end

    print("")
    print("Enter power:")
    local b = tonumber(io.read())
    if b == nil then
        print("Please enter a valid number")
        return
    end

    local result = a ^ b
    print("Result:")
    print(a .. "^" .. b .. " = " .. result)
end

local function sqrt()
    clearing()
    print("Enter number:")
    local a = tonumber(io.read())
    if a == nil then
        print("Please enter a valid number")
        return
    end

    if a < 0 then
        print("Cannot take square root of a negative number")
        return
    end

    local result = math.sqrt(a)
    print("Result:")
    print("√" .. a .. " = " .. result)
end

local function trigFuncs()
    clearing()
    print("Select trigonometric function:")
    print("[1] sine - sin(x)")
    print("[2] cosine - cos(x)")
    print("[3] tangent - tan(x)")
    print("---------------------")
    print("[X] Back")

    local choice = io.read():lower()

    if choice == "x" then 
        return
    end

    print("Enter value:")
    local a = tonumber(io.read())
    if not a then
        print("Invalid number")
        return
    end

    if choice == "1" then
        print("Result: " .. math.sin(a))
    elseif choice == "2" then
        print("Result: " .. math.cos(a))
    elseif choice == "3" then
        print("Result: " .. math.tan(a))
    end
end

function expressionInput()
    while true do
        clearing()
        print("TIP: Use \"sqrt()\" for square root")
        print("Enter \"X\" to go back")
        print("Enter expression:")
        local expression = io.read()
        if (expression == "X") or (expression == "x") then
            clearing()
            break
        end
        expression = expression:gsub("sqrt", "math.sqrt")
        expression = expression:gsub("sin", "math.sin")
        expression = expression:gsub("cos", "math.cos")
        expression = expression:gsub("tan", "math.tan")

        local executableCode = load("return " .. expression)
        if executableCode == nil then
            print("Invalid expression")
            return
        end

        local ok, result = pcall(executableCode)
        if not ok then
            print("Error: " .. result)
        return
        else
            print("Result: " .. result)
        end
    end
end

function start()
    while true do
        clearing()
        print("=======================================")
        print("             [ Calculator ]            ")
        print("=======================================")
        print("Please select an operation:")
        print("[1] Addition        (a + b)")
        print("[2] Subtraction     (a - b)")
        print("[3] Multiplication  (a * b)")
        print("[4] Division        (a / b)")
        print("[5] Modulo          (a % b)")
        print("[6] Exponentiation  (a^b)")
        print("[7] Square root     (√a)")
        print("---------------------------------------")
        print("[T] Trigonometric functions")
        print("[E] Expression input")
        print("[X] Back (return to main menu)")

        local choice = io.read():lower()
        if choice == "1" then
            fiveFunction("addition")
        elseif choice == "2" then
            fiveFunction("subtraction")
        elseif choice == "3" then
            fiveFunction("multiplication")
        elseif choice == "4" then
            fiveFunction("division")
        elseif choice == "5" then
            fiveFunction("modulo")
        elseif choice == "6" then
            exponent()
        elseif choice == "7" then
            sqrt()
        elseif choice == "t" then
            trigFuncs()
        elseif choice == "e" then
            expressionInput()
        elseif (choice == "x") then
            return
        end
    end
end
return {start = start}