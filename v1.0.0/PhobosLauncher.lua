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
    print([[
        ╔════════════════════════════════════════╗
        ║       —————————————————————————        ║
        ║=---=| Phobos CLI Toolbox v1.0.0  |=---=║
        ║=---=|     [ Powered by Lua ]     |=---=║
        ║       —————————————————————————        ║
        ╠════════════════════════════════════════╣
        ║ Select a tool by entering its number:  ║
        ║ [0] (WIP)*                             ║
        ║ [1] Unit Converter                     ║
        ║ [2] (WIP)                              ║
        ║ [3] (WIP)                              ║
        ║ [4] (WIP)                              ║
        ║ [5] (WIP)                              ║
        ║ [6] (WIP)                              ║
        ║ [7] (WIP)                              ║
        ║----------------------------------------║
        ║ [A] About Phobos                       ║
        ║ [R] Report a bug/issue                 ║
        ║ [C] Changelog                          ║
        ║----------------------------------------║
        ║ [Q] Quit                               ║
        ╚════════════════════════════════════════╝
    ]])
    choice = io.read()

    if (choice == "A") or (choice == "a") then
        clearing()
        print("==========================================")
        print("               About Phobos               ")
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
        print("Placeholder")
        io.read()
    elseif (choice == "C") or (choice == "c") then
        clearing()
        print("")
        print("==========================================")
        print("                Changelog")
        print("==========================================")
        print("v1.0.0 - 27 July 2026")
        print("Initial release")
        print("- Features a simple main menu and a slightly scuffed unit converter.")
        print("- Definitely holds room for many improvements..")
        print("- New tools may get added in the future and replace the (WIP) slots.")
        print("")
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
            clearing()
            unitConverter.start()
        end
    end
end
