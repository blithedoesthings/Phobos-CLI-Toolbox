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

while true do
    clearing()
    print("╔════════════════════════════════════════╗")
    print("║       —————————————————————————        ║")
    print("║=---=| Phobos CLI Toolbox v1.0.0  |=---=║")
    print("║=---=|     [ Powered by Lua ]     |=---=║")
    print("║       —————————————————————————        ║")
    print("╠════════════════════════════════════════╣")
    print("║ Select a tool by entering its number:  ║")
    print("║ [0] (WIP)*                             ║")
    print("║ [1] Unit Converter                     ║")
    print("║ [2] Calculator                         ║")
    print("║ [3] (WIP)                              ║")
    print("║ [4] (WIP)                              ║")
    print("║ [5] (WIP)                              ║")
    print("║ [6] (WIP)                              ║")
    print("║ [7] (WIP)                              ║")
    print("║----------------------------------------║")
    print("║ [A] About Phobos                       ║")
    print("║ [R] Report a bug/issue                 ║")
    print("║ [C] Changelog                          ║")
    print("║----------------------------------------║")
    print("║ [Q] Quit                               ║")
    print("╚════════════════════════════════════════╝")
    choice = io.read()

    if (choice == "A") or (choice == "a") then
        clearing()
        print("==========================================")
        print("             [ About Phobos ]             ")
        print("==========================================")
        print("")
        print("Phobos is an open-source command line toolbox built in Lua.")
        print("Named after one of Mars' two moons, it combines a") 
        print("collection of practical utilities stored inside a")
        print("single lightweight application.")
        print("")
        print("Phobos is designed to be simple, portable, and easy to use")
        print("on both Windows and Unix-like systems.")
        print("")
        print("The project is actively developed, and new tools, bugfixes,")
        print("and improvements will be added over time.") 
        print("")
        print("Current version: v1.0.0")
        print("Powered by Lua")
        print("")
        print("Phobos is open-source software. You are free to use, ")
        print("modify, and create derivative works based on this project,") 
        print("as long as proper credit is given to the original author.")
        print("")
        print("*Created by BlitheDoesThings*")
        print("GitHub repo: https://github.com/blithedoesthings/Phobos-CLI-Toolbox")
        io.read()
    elseif (choice == "R") or (choice == "r") then
        print("If you have any questions, suggestions, or want to report an issue/bug, you can create an Issue at the GitHub repo:")
        print("https://github.com/blithedoesthings/Phobos-CLI-Toolbox/issues/new")
        print("Alternatively, you can reach out to the creator on Discord: blithedoesthings")
        print("/!\\ For the latter option, note that 24/7 activity is definitely not guaranteed.")
        io.read()
    elseif (choice == "C") or (choice == "c") then
        clearing()
        print("")
        print("==========================================")
        print("                Changelog                 ")
        print("==========================================")
        print("v1.0.0 - 27 July 2026")
        print("Initial release")
        print("- Features a simple main menu and a slightly scuffed unit converter.")
        print("- Definitely holds room for many improvements..")
        print("- New tools may get added in the future and replace the (WIP) slots.")
        print("")
        print("v1.1.0 - 28 July 2026")
        print("Update #1")
        print("- Added a calculator. It supports the the primary four functions, exponentation, square roots, trigonometric functions, and modulo.")
        print("- Added imperial and US units to the \"Volume\" category of the unit converter.")
        io.read()
        clearing()
    elseif (choice == "Q") or (choice == "q") then
        clearing()
        break
    end

    if (choice == "1") then
        print("Open unit converter? (y/n)")
        confirmation = io.read()
        local unitConverter = require("unitConverter")
        if (confirmation == "y") or (confirmation == "Y") then
            unitConverter.start()
        end
    elseif (choice == "2") then
        print("Open calculator? (y/n)")
        confirmation = io.read()
        local calculator = require("calculator")
        if (confirmation == "Y") or (confirmation == "y") then
            calculator.start()
        end
    end
end