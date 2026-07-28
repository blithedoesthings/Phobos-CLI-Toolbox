units = {
    length = {
        base = "m",
        name = "Length",
        values = {
            mcm = 0.000001,             -- microgram
            mm = 0.001,                 -- millimeter
            cm = 0.01,                  -- centimeter
            dm = 0.1,                   -- decimeter
            m = 1,                      -- meter
            km = 1000,                  -- kilometer

            ["in"] = 0.0254,            -- inch
            ft = 0.3048,                -- foot
            yd = 0.9144,                -- yard
            mi = 1609.344,              -- mile

            nmi = 1852,                 -- nautical mile
        },

        order = {
            "mcm    (micrometers)",
            "mm     (millimeters)",
            "cm     (centimeters)",
            "dm     (decimeters)",
            "m      (meters)",
            "km     (kilometers)",
            "in     (inches)",
            "ft     (feet)",
            "yd     (yards)",
            "mi     (miles)",
            "nmi    (nautical miles)",
        },
    },

    mass = {
        base = "kg",
        name = "Mass",
        values = {
            mg = 0.000001,              -- milligram
            g = 0.001,                  -- gram
            kg = 1,                     -- kilogram
            t   = 1000,                 -- metric tonne
            mcg = 1e-9,                 -- microgram

            oz  = 0.0283495231,         -- ounce
            lb  = 0.45359237,           -- pound
            st  = 907.18474,            -- short ton (US)
            lt  = 1016.046909,          -- long ton (imperial)

        },

        order = {
            "mg     (milligrams)",
            "g      (grams)",
            "kg     (kilograms)",
            "t      (metric tonnes)",
            "mcg    (micrograms)",
            "oz     (ounces)",
            "lb     (pounds)",
            "st     (short ton (US))",
            "lt     (long ton (imperial))",
        },
    },

    time = {
        base = "s",
        name = "Time",
        values = {
            mcs = 0.000001,             -- microsecond 
            ms = 0.001,                 -- millisecond
            s = 1,                      -- second
            min = 60,                   -- minute
            hr = 3600,                  -- hour
            d = 86400,                  -- day
            wk = 604800,                -- week
            mon = 2629800,              -- month (on average: 30.4375 days)
            yr = 31557600,              -- year (on average: 365.25 days)
        },

        order = {
            "mcs    (microseconds)",
            "ms     (milliseconds)",
            "s      (seconds)",
            "min    (minutes)",
            "hr     (hours)",
            "d      (days)",
            "wk     (weeks)",
            "mon    (months)",
            "yr     (years)"
        },
    },

    area = {
        base = "m2",
        name = "Area",
        values = {
            mm2 = 0.000001,             -- square millimeter
            cm2 = 0.0001,               -- square centimeter
            dm2 = 0.01,                 -- square decimeter
            m2 = 1,                     -- square meter
            ha = 10000,                 -- hectare
            km2 = 1000000,              -- square kilometer

            in2 = 0.00064516,           -- square inch
            ft2 = 0.09290304,           -- square foot
            yd2 = 0.83612736,           -- square yard
            mi2 = 2589988.1103,         -- square mile
            ac = 4046.8564224,          -- acre
            
        },

        order = {
            "mm2    (square millimeters)",
            "cm2    (square centimeters)",
            "dm2    (square decimeters)",
            "m2     (square meters)",
            "ha     (hectares)",
            "in2    (square inches)",
            "ft2    (square feet)",
            "yd2    (square yards)",
            "mi2    (square miles)",
            "ac     (acres)",
        },
    },

    volume = {
        base = "L",
        name = "Volume",
        values = {
            mL = 0.001,                 -- milliliter
            cL = 0.01,                  -- centiliter
            dL = 0.1,                   -- deciliter
            L = 1,                      -- liter                      

            mm3 = 0.000001,             -- cubic millimeter
            cm3 = 0.001,                -- cubic centimeter
            dm3 = 1,                    -- cubic decimeter
            m3 = 1000,                  -- cubic meter

            gal = 3.78541,              -- US gallon
            qt = 0.9463525,             -- US quart
            pt = 0.47317625,            -- US pint
            floz = 0.0295735156,        -- US fluid ounce

            imgal = 4.54609,           -- imperial gallon
            imqt = 1.1365225,          -- imperial quart
            impt = 0.56826125,         -- imperial pint
            imfloz = 0.0284130625,     -- imperial fluid ounce

            tbsp = 0.0177581641,        -- tablespoon
            tsp = 0.005919388,          -- teaspoon
            ustbsp = 0.0147867578,      -- US table spoon
            ustsp = 0.0049289193,       -- US tea spoon

            ft3 = 28.316846592,         -- cubic foot
            in3 = 0.016387064,          -- cubic inch
        },

        order = {
            "mL     (milliliters)",
            "cL     (centiliters)",
            "dL     (deciliters)",
            "L      (liters)",
            "mm3    (cubic millimeters)",
            "cm3    (cubic centimeters)",
            "dm3    (cubic decimeters)",
            "m3     (cubic meters)",
            "gal    (gallons (US))",
            "qt     (quarts (US))",
            "fl oz  (fluid ounce (US))",
            "imgal  (gallons (UK/imperial))",
            "imqt   (quarts (UK/imperial))",
            "impt   (pints (UK/imperial))",
            "imfloz (fluid ounce (UK/imperial))",
            "tbsp   (table spoon)",
            "tsp    (teaspoon)",
            "ustbsp (table spoon (US))",
            "ustsp  (tea spoon (US))",
            "in3    (cubic inches)",
            "ft3    (cubic feet)",
        },
    },

    speed = {
        base = "mps",
        name = "Speed",
        values = {
            ["m/s"] = 1,                    -- meters/second
            ["km/h"] = 0.2777777778,         -- kilometers per hour
            mph = 0.6213711922,         -- miles per hour
            knot = 0.5144444444,        -- knots: nautical miles per hour
            c = 299792458,              -- speed of light
        },

        order = {
            "m/s    (meters per second)",
            "km/h    (kilometers per hour)",
            "mph    (miles per hour)",
            "knot   (knots: nautical miles per hour)",
            "c      (THE speed of light)",
        },
    },

    dataStorage = {
        base = "B",
        name = "Data Storage",
        values = {
            B  = 1,                     -- byte

            KB = 1000,                  -- kilobyte
            MB = 1000000,               -- megabyte
            GB = 1000000000,            -- gigabyte
            TB = 1000000000000,         -- terabyte
            PB = 1000000000000000,      -- petabyte

            KiB = 1024,                 -- kibibyte
            MiB = 1048576,              -- mebibyte
            GiB = 1073741824,           -- gibibyte
            TiB = 1099511627776,        -- tebibyte
            PiB = 1125899906842624,     -- pebibyte

            --[[
            
            /!\ *Disclaimer* /!\
            Decimal units (base-10, KB, MB, GB, TB, PB) use powers of 10.
            These are used by storage manufacturers to label disk space.

            Binary units (base-2, KiB, MiB, TiB, PiB) use powers of 2.
            These are commeoly used by the operating system itself,
            and memory-related calculations.

            This is also the reason why a SSD marketed as 1 TB 
            appears in the OS as ~930 GiB, because the OS calculates 
            using powers of 2.

            ]]--
        },

        order = {
            "B      (byte)",
            "KB     (kilobyte)",
            "MB     (megabyte)",
            "GB     (gigabyte)",
            "TB     (terabyte)",
            "PB     (petabyte)",
            "KiB    (kibibyte)",
            "MiB    (mebibyte)",
            "GiB    (gibibyte)",
            "TiB    (tebibyte)",
            "PiB    (pebibyte)"
        }
    }
}
return units