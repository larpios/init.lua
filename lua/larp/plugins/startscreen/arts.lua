---@class larp.alpha.art
---@field name string Name of the art
---@field art string[] Strings comprising the whole art

---@type larp.alpha.art[]
local M = {}

M = {
    {
        name = 'Cat with Gun',
        art = {
            '                           ⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀            ⠀⣀⣴⣿⣿⣿⣿⣿⠟',
            '                        ⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠛⣉⣡⠀⣠⣴⣶⣶⣦⠄⣀⡀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⡿⢃⣾',
            '                       ⠀⣾⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⣠⣾⡟⢡⣾⣿⣿⣿⡿⢋⣴⣿⡿⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⢡⣾⣿',
            '                       ⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⣼⣿⡟⣰⣿⣿⣿⣿⠏⣰⣿⣿⠟⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢚⣛⢿',
            '                     ⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠸⣿⠟⢰⣿⣿⣿⣿⠃⣾⣿⣿⠏⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢋⣾',
            '                    ⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⢉⣴⣿⣿⣿⣿⡇⠘⣿⣿⠋⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡘⣿',
            '                ⢀⣀⠀⢀⣾⣿⣿⣿⣿⣿⣿⠟⠉⠉⠉⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣤⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣌',
            '        ⣀⣤⡀⠀   ⠀⣼⣿⣷⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
            '       ⠀⣿⣿⣿⠀⠀⠀⠀⠀⠙⠿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⡿⠿⠿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⠁⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿',
            '   ⢀⣴⣶⣶⣾⣿⣿⣿⣿⣶⡐⢦⣄⠀⠀⠈⠛⢿⣿⣿⣿⣿⡀⠀⠀⠀⠀⢀⣼⡿⢛⣩⣴⣶⣶⣶⣶⣶⣶⣭⣙⠻⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿',
            ' ⠀⣴⣿⣿⣿⣿⠿⠿⣿⣿⣿⣿⣿⣦⡙⠻⣶⣄⡀⠀⠈⠙⢿⣿⣷⣦⣤⣤⣴⣿⡏⣠⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣌⠻⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿',
            '⠀⢸⣿⣿⣿⠋⣠⠔⠀⠀⠻⣿⣿⣿⣿⢉⡳⢦⣉⠛⢷⣤⣀⠀⠈⠙⠿⣿⣿⣿⣿⢸⣿⡄⠻⣿⣿⠟⡈⣿⣿⣿⣿⣿⢉⣿⣧⢹⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿',
            '⠀⢸⣿⣿⡇⠠⡇⠀⠀⠀⠀⣿⣿⣿⣿⢸⣿⣷⣤⣙⠢⢌⡛⠷⣤⣄⠀⠈⠙⠿⣿⣿⣿⣿⣷⣦⣴⣾⣿⣤⣙⣛⣛⣥⣾⣿⣿⡌⣿⣿⣿⣷⣤⣀⣀⣀⣠⣴⣿⣿⣿⣿⣿⣿⣿',
            '⠀⢸⣿⣿⣷⡀⠡⠀⠀⠀⣰⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣦⣌⡓⠤⣙⣿⣦⡄⠀⠈⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢡⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
            '⠀⢸⣿⣿⣿⣿⣶⣤⣴⣾⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⣿⣿⣷⠀⣶⡄⠀⠈⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢃⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
            '⠀⢸⣿⣿⣿⣿⣿⠟⠻⣿⣿⡏⣉⣭⣭⡘⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⡇⢸⡇⢠⡀⠈⠙⠋⠉⠉⠉⠉⠛⠫⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
            '⠀⢸⣿⣿⠛⣿⣿⣀⣀⣾⡿⢀⣿⣿⣿⢻⣷⣦⢈⡙⠻⢿⣿⣿⣿⣿⣿⣿⣿⠀⣿⡇⢸⡇⢸⣿⠀⣦⠀⠀⠶⣶⣦⣀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
            '⠀⢸⣿⣿⣦⣈⡛⠿⠟⣋⣤⣾⣿⣿⣿⣸⣿⣿⢸⡇⢰⡆⢈⡙⠻⢿⣿⣿⣿⠀⢿⡇⢸⡇⢸⣿⢠⣿⡇⣿⡆⢈⡙⠻⠧⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
            '⠀⠀⣝⠛⢿⣿⣿⣿⣿⣿⣿⠟⣁⠀⠀⢈⠛⠿⢸⣇⢸⡇⢸⡇⣶⣦⣌⡙⠻⢄⡀⠁⠘⠇⠘⣿⢸⣿⡇⣿⡇⢸⡛⠷⣦⣄⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
        },
    },
    {
        name = 'Clapping xQc',
        art = {
            [[                   ⢀⣠⠴⠒⠋⣉⣭⣭⣽⣿⣿⣿⣶⣶⣦⣄⡀        ]],
            [[                 ⢀⡴⠋⢀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄       ]],
            [[                ⢠⣿⡆⣠⣿⣿⣿⡟⠋⠁⠉⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣄⡀     ]],
            [[                ⣾⣿⠁⢿⣿⡇⠘⣷⣀⣶⣶⣶⣶⣬⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀    ]],
            [[               ⢀⣿⣿⡆⡀⣼⣀⡀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇    ]],
            [[               ⣸⡀⢹⣇⣰⣿⣿⠟⡀⠈⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿    ]],
            [[               ⣿⢰⣼⣿⡀⠈⠛⡀⣀⡀⠐⠲⣤⠉⣿⣿⣿⡿⢿⣿⣼⣿⣿⣿⣿⣦⣄  ]],
            [[               ⣇⡀⢻⣿⡀⡀⡀⡀⣿⣿⣶⣶⣿⣀⣿⣿⣏⣉⣿⣿⣿⣿ ⠉⠙⠛⠛  ]],
            [[               ⠸⡄⣸⡇⡀⡀⡀⡀⢻⣿⣿⣿⠿⠿⣿⣿⣿⣿⣿⢱⣿⡿       ]],
            [[                ⠹⣿⡀⡀⡀⡀⡀⡀⢿⣿⣿⣀⣉⣿⣿⣿⣿⢃⣿⡟        ]],
            [[            ⣠⠤⠄⠐⠚⠁⡀⡀⡀⡀⡀⡀⣄⡀⡀⢿⣿⣿⣿⣿⣧⡾⠋         ]],
            [[           ⢸⠁⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⢿⣷⣦⣴⣿⣿⠏⠁⡀⢧⡀         ]],
            [[       ⣠⠤⠐⠂⠉⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⠈⠙⣿⣿⡿⠁⡀⡀⡀⡀⠙⢢⡀       ]],
            [[    ⢀⣠⠎⠁⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⢶⣆⡀⢠⣤⣤⣴⣾⡀⡀⡀⡀⡀⡀⡀⠑⡄      ]],
            [[  ⣴⠊⠁⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⢀⡀⡀⠈⢣⣶⣾⣿⣿⣿⣿⡇⡀⡀⡀⡀⡀⡀⡀⠸⡄ ⣠⣤⡄ ]],
            [[ ⣼⠁⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⢸⣿⣷⣾⣿⣿⣿⣿⣿⣿⣿⣧⡀⡀⡀⡀⡀⡀⡀⡀⢻⣤⡏⢸⡇ ]],
            [[ ⡏⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⡀⡀⡀⡀⢀⡀⡀⢻⣿⣷⣾⣷⣄]],
            [[⢸⠇⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⡀⡀⢰⣤⡘⢿⣷⣶⣿⣿⣿⣿⣯]],
            [[⣏⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀⠳⡀⡀⡀⡀⡀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⡀⡀⠈⠻⣿⣷⣿⣿⣿⣿⣿⣿⣿]],
            [[⣇⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣿⣿⣿⣿⣿⣿⣿⣿⣛⣿⣀⣀⣀⣷⣄⠈⠻⣿⣿⣿⣿⣿⣿⡿]],
        },
    },
    {
        name = 'Niko Staring at You',
        art = {
            [[      ⢠⣼⣿⣿⣿⣿⣿                         ⢠⣤⣤⣿⣿⣿]],
            [[     ⢰⢸⣿⣿⣿⣿⣿⡆                     ⢀⣰⣾⣿⣿⣿⣿⣿⣿⣿]],
            [[    ⢰⢸⣾⣿⣿⣿⣿⣿⡇                    ⢰⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[   ⢀⢸⣸⣿⣿⣿⣿⣿⣿⡇       ⢀⣀⣀⣀⣀⣀⡀     ⣰⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[   ⢸⢸⣿⣿⣿⣿⣿⣿⣿⣇⡀⠶⠶⠶⠶⠶⠶⢾⣭⣭⣭⣭⣍⠷⠶⠶⠶⠶⠶⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[  ⢰⢸⣿⣿⣿⠿⠿⢏⣭⣭⣭⣷⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⢭⣭⡹⠿⠿⣿⣿⣿⣿⣿⣿]],
            [[⠤⢌⣽⣨⣭⣭⣽⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣯⣭⣭⡿⠿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣟⣿⣿⣿⣿⣾⣿⠿⡿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⢿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⠿⠿⢿⡿⠿⠏⠉⠉⠉⠉⠉⠉⠉⣠⣤⣤⢤⣤⣤⣤⣤⣤⣤⣤⣤⡤⣤⡀⡀⠈⠉⠉⠉⠉⠉⠉⠉⠉⠉⠹⠿⠿⠿⢿]],
            [[⠒⠒⠂   ⠩⣿⣿⣿⣿⣿⠿⣷⣿⣿⢸⣿⣿⣿⣿⡿⣷⣿⣿⣷⣶⣟⣛⣿⣽⣿⣿⣿⣧⠤⣤⡄     ⠈]],
            [[       ⣿⣿⣿⣿⠉⣀⣶⣂⠋⠾⣿⣿⣿⣿⣿⣿⣿⣿⡿⣏⡙⠉⣉⣉⠽⢿⣻⢿⣿⣿⣿⣦     ]],
            [[       ⣿⣿⣿⡿⣅⣿⣿⠿⡀⣀⠻⠿⣿⣿⣿⢿⣿⡏⣷⣿⣷⡆⣿⣿⣶⣨⠉⣾⣾⣿⣿⠟     ]],
            [[       ⣺⣿⣿⡇⣿⣿⣿⡇⢰⣿⣼⣿⣼⠻⢿⢸⡏⣿⣿⣿⡏⠁⣿⣿⣿⣿⣬⢻⣿⣿⣿      ]],
            [[         ⠘⠃⣿⣿⣿⡇⢸⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⡇⡀⣿⣿⣿⣿⣿⢸⣿⣿⡟      ]],
            [[           ⣿⣿⣿⣥⣬⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⡀⣿⣿⣿⣿⣿⢸⣿⣿⡇      ]],
            [[           ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⡇⡀ ⢠⡀⡀⡀ ]],
            [[            ⠛⣿⣿⣿⣿⣿⣿⣻⣾⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡸⠏⠉⠁  ⠈⠉⠻⣤]],
            [[             ⡀⣻⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠉⠉⡤⠇⡀⢠⣤⣤⣤    ]],
            [[            ⢀⣷⣿⣿⣿⡿⠿⠎⠉⠉⠉⠉⠹⢿⣿⣿⣷⠿⠉⣀⣀⣷⣶⣿⣿⣿⣿⣿⣶⣀  ]],
            [[         ⡀⡀⣀⣼⣿⣿⣿⣏⣁⣀⣀⡀    ⠈⢀⣀⣹⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣀]],
            [[         ⠂⠿⠿⡿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿]],
            [[           ⠁⠁⠭⡉⡀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⠋⠋]],
        },
    },
    {
        name = 'Cacodemon',
        art = {
            '            :h-                                  Nhy`               ',
            '           -mh.                           h.    `Ndho               ',
            '           hmh+                          oNm.   oNdhh               ',
            '          `Nmhd`                        /NNmd  /NNhhd               ',
            '          -NNhhy                      `hMNmmm`+NNdhhh               ',
            '          .NNmhhs              ```....`..-:/./mNdhhh+               ',
            '           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               ',
            '           oNNNdhhdo..://++//++++++/+++//++///++/-.`                ',
            '      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       ',
            ' .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        ',
            ' h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         ',
            ' hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        ',
            ' /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       ',
            '  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      ',
            '   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     ',
            '     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    ',
            '       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    ',
            '       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   ',
            '       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   ',
            '       //+++//++++++////+++///::--                 .::::-------::   ',
            '       :/++++///////////++++//////.                -:/:----::../-   ',
            '       -/++++//++///+//////////////               .::::---:::-.+`   ',
            '       `////////////////////////////:.            --::-----...-/    ',
            '        -///://////////////////////::::-..      :-:-:-..-::.`.+`    ',
            '         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   ',
            '           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ ',
            '            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``',
            '           s-`::--:::------:////----:---.-:::...-.....`./:          ',
            '          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           ',
            '         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              ',
            '        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                ',
            '                        .-:mNdhh:.......--::::-`                    ',
            '                           yNh/..------..`                          ',
            '                                                                    ',
        },
    },
    {
        name = 'Thrilled Charlie',
        art = {
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠄⠀⠠⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢐⣥⣤⡤⢄⡀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀]],
            [[⣠⣾⣷⣀⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣶⡄⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠿⣿⣿⣿⣿⣿⣿⠿⢿⠀⠀]],
            [[⣿⣿⣿⣿⣿⣇⢠⣾⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡿⢿⣿⣿⣿⣿⡿⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣷⠀⠘⠃⠀]],
            [[⣿⣿⣿⣿⣿⣿⣾⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣭⡙⢿⣿⡿⠟⠁⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣿⡇⠀⠀⠀]],
            [[⠈⢿⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠀⠘⡆⢘⣦⠉⠀⠀⠀⠀⠀⠀⠀⠐⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⢻⣿⣿⡄⠀⠀]],
            [[⠀⠀⠛⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣟⢃⣿⠆⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡿⣿⣿⣧⠀]],
            [[⠀⠀⠀⠙⣿⣿⣿⡘⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠉⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⢠⣤⣄⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⢿⣿⣿⠀]],
            [[⠀⠀⠀⠀⠘⣿⣿⣇⣤⣷⣤⣀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣶⡟⠀⢰⠀⢀⣼⣿⡶⠀⠀⠀⠀⠀⠀⢀⣽⣿⣿⣿⣿⣷⣦⣄⡀⠀⠀⠀⠀⢀⠆⠀⢸⣿⣿⡇]],
            [[⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣬⣽⣷⣄⣀⣤⣤⣶⣾⣿⣿⣿⣿⣿⠋⠀⢸⠀⣿⣯⣄⣀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⣀⡀⠈⠀⠀⢸⣿⣿⡇]],
            [[⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣴⣶⣀⢠⣿⣿⣿⣵⡀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣸⣿⣿⡇]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣉⡀⠀⠀⣀⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠛⠛⠛⠿⠿⠿⠟⠛⠛⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡍⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠙⠛⠃⠛⠀⠉⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⡇]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⠿⢿⣿⣿⡇]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        },
    },
    {
        name = 'Smoking Ralsei',
        art = {
            [[     ⢸⣦⡀                                         ]],
            [[      ⣿⡀                                         ]],
            [[      ⣿⡇                                         ]],
            [[     ⢰⣿⠃                                         ]],
            [[     ⢸⡿⡀                                         ]],
            [[     ⣌⡀⡀                      ⣠⠂⡀⣐⣶⣶⣶⣦⣀⡀         ]],
            [[     ⣿⡀⡀⡀                    ⢐⣿⣣⣾⣿⣿⣿⣿⣿⣿⣿⡆⢀⣄      ]],
            [[    ⠘⢿⡀⡀⠠⡀               ⢀⡴⢢⡶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⣶⣿⢏⢀⡀    ]],
            [[    ⢀⡆⢀⠄                 ⡟⣱⣿⡀⣿⣿⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣷⡅    ]],
            [[    ⣸⣥⡆              ⡀⡀⢔⣾⣭⣭⣭⣿⣿⣿⣿⣿⣿⣿⣀⣿⣿⣿⣿⣿⣿⣿⣿⡇    ]],
            [[   ⢠⣿⣿⠁              ⢠⢰⣿⣹⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⡁    ]],
            [[   ⠘⠛⠿⣿⣿⣿⣿⣶⣶⣶⣶⣤⣤⣤⣤⣤⣤⣄⣀⣈⣛⣛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢁⣿⣿⣿⣿⡿⠁    ]],
            [[      ⢮⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠛⣛⣂⣙⣛⣋⣍⣭⣾⣿⣿⣟⣥⣿⣿⣿⣿⣿⠃     ]],
            [[                      ⢠⣄⡀⡀⠈⠙⠻⠿⠿⠿⠟⠛⠛⠋⢱⣿⣿⣿⣿⣿⡇      ]],
            [[                      ⣼⠛⠉⠉⠑⠶⠤⠤⢤⣤⡤⠄⡀⡀⠈⠛⠿⠿⠿⠿⠇      ]],
            [[                     ⢸⣿⡀⡀⡀⡀⡀⡀⡀⡀⢹⣄⡀⡀⡀⡀⡀⡀⡀⡀⡀⡀      ]],
            [[                     ⣸⣿⣆⡀⡀⡀⡀⡀⢀⣴⣿⣿⡇⡀⡀⡀⡀⡀⡀⡀⡀⡀      ]],
            [[                     ⣿⣿⣿⣦⣀⣀⣠⣼⣿⣿⣿⣿⣿⡀⡀⡀⡀⡀⡀⡀⡀⡀      ]],
            [[                    ⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣠⣀⣀⣀⣀⣀⣤⢤⡀      ]],
            [[                    ⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢿⣿⣿⣿⡟⢉⢒⡋⠁      ]],
            [[                   ⠐⣒⣾⣶⣭⣛⣻⠿⣿⣿⣿⣿⣿⣿⣿⣬⣻⠿⢖⣐⣈⣴⣶⣦⡀     ]],
            [[                    ⠉⠈⠡⠾⠿⠟  ⠉⠉⠙⠛⣿⣟⣛⣛⣛⣻⣿⠛⠛⠉⠁      ]],
            [[                                ⣿⣿⣿⣿⣿⣿⣿⣀⡀        ]],
            [[                                ⠙⠿⣿⡏⠹⠿⠷⠈         ]],
            [[                                                 ]],
        },
    },
    {
        name = 'Quieres?',
        art = {
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⣉⣙⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣬⣟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢹⣿⣿⠿⢿⡛⡉⣹⠏⠿⣿⣿⣷⡀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⢸⣿⣅⡀⣼⣿⣿⡿⡀⡀⣈⣻⣿⡀⡀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⢸⣿⣿⣼⠉⡀⡀⡀⡀⠐⣿⣿⣿⡀⡀⢨⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣌⣿⣷⡟⡀⡀⡀⡀⠁⡀⣿⣿⣿⡀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣟⢅⡀⡀⠈⠉⠛⡀⡀⡀⡀⡀⡀⠘⢻⣿⣿⣿⣿⣷⡌⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣀⡀⡀⡀⡀⡀⡀⡀⠾⠟⠉⣉⠙⠋⠉⠁⡀⡀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣄⡀⡀⡀⡀⡀⡀⠈⡀⡀⡀⡀⡀⡀⡀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢾⣿⣷⣦⣄⡀⡀⡀⡀⡀⠐⡀⡀⡀⠈⢿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⣤⣙⢿⣿⣿⣿⣶⣤⣄⡀⡀⡀⡀⡀⡀⢸⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡛⠇⣴⣜⣿⣷⣿⣿⣿⣿⣿⣿⣿⣶⣦⡀⡀⡀⣾⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⢰⢸⣿⣿⣿⣿⣿⣿⣿⣟⡿⢛⡽⠟⠁⡀⡀⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠙⡉⠸⣇⢻⣿⣿⣿⢿⣿⣿⣿⣿⣷⣶⠶⡀⣀⣀⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣷⣦⣝⠦⣍⡻⠿⠿⠶⠤⠄⡀⡀⣀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣯⣍⣃⣠⣤⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⢿⡿⢿⡿⠿⡿⢿⠿⠿⠿⡿⠿⠿⣿⠿⠿⠿⡿⠿⠿⣿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣏⣿⡇⢰⣶⠈⡇⢸⡇⡀⡇⢸⡀⠒⢲⡇⠰⠆⣸⡀⠒⢲⣇⠐⠦⣴⡶⢂⣼⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⡟⢡⠿⣧⡘⠋⠠⣇⡘⠃⣠⡇⢸⡀⠛⠛⡇⢸⡄⢹⡀⠛⠛⣍⠙⠂⣸⡗⢺⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣷⣤⣴⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
        },
    },
    {
        name = 'juan.',
        art = {
            [[⢷⣶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀                             ]],
            [[⣼⡇⠉⠛⠻⢷⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠈⡟⢻⠶⣤⣀⡀⠉⠙⠻⣶⣤⣄⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣖⢀⣀⡀⣰⠀⠀⠀⠀]],
            [[⠀⡇⠀⠀⠀⡏⢻⣿⢶⣦⣴⣾⣿⣿⣿⣿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⣠⣤⣤⣴⣾⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀]],
            [[⢀⣇⠀⣶⠠⣇⣼⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀]],
            [[⢸⣿⠃⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀]],
            [[⢨⠙⣇⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢁⠀⠉⠻⢿⣿⣿⡀]],
            [[⣸⢿⣿⣿⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠓⠶⠼⣀⠀⠀⠀⢹⠿⠄]],
            [[⠸⣿⣿⡟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⠴⠄⢴⡉⢙⠆⠁⠀⠀⠀]],
            [[⠀⣿⣾⢸⣇⣨⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⢀⡄⡦⠓⡒⠉⠀⠀⠀⠀⠀]],
            [[⡀⣿⢿⣾⡏⠙⣿⠋⢻⣿⣿⠛⣿⣿⣋⣉⡉⠹⣿⡏⠉⢉⡁⠉⢿⣿⣿⣿⣿⠟⢹⠅⠁⠇⣠⠁⠀⠀⠀⠀⠀⠀]],
            [[⣿⣿⣾⣿⡇⠀⣿⠀⢸⣿⣿⠀⢹⡿⠛⢛⡁⠀⣿⡇⠀⣿⣿⠀⢸⣿⣿⣿⡿⢹⡀⢀⣰⠊⠉⣾⠇⠁⠀⠀⠀⠀]],
            [[⣿⣿⣿⣿⡇⠀⣿⡄⠘⠻⠋⠀⢸⡇⠸⠟⠃⠀⣿⡇⠀⣿⣿⠀⢸⡟⠙⣿⢻⢸⠀⠧⠆⣹⡠⠟⣠⢸⡄⠀⠀⠀]],
            [[⠹⣿⣿⣿⠇⢰⣿⣿⣶⣶⣾⣶⣿⣿⣶⣶⣾⣶⣿⣷⣾⣿⣿⣶⣾⣿⣶⣿⡘⡘⡆⢀⡇⢇⠁⡘⠋⡀⡇⠀⠀⠀]],
            [[⣿⣿⣷⣤⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣷⣦⣯⣥⣰⣸⡃⢱⠁⢁⠀⠀⠀]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣤⣫⣘⠛⠋⠛⠛⠛⠻⠿⣿⣿⣿⣿⣿⣿⣿⣧⣼⣾⣾⣀⡀⠀]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣥⣤⣤⣤⣤⣤⣀⣉⣉⠉⠙⠛⠛⠉⠀⠀]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠶⠂⠀⠀]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠛⣿⡭⢬⣿⡄⠀⠀⠀⠀⠀⠀]],
        },
    },
}

return M
