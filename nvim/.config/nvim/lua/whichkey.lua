local wk = require('whichkey_setup')

vim.cmd('set timeoutlen=500')

require("whichkey_setup").config{
    hide_statusline = false,
    default_keymap_settings = {
        silent=true,
        noremap=true,
    },
    default_mode = 'n',
}

local keymap = {
    f = { 
        name = '+find',
        b = 'buffers',
        f = 'files',
        g = 'grep',
        h = 'h',
    },
    b = { 
        name = '+buffers',
        b = 'show buffers',
        n = 'next',
        p = 'previous',
        d = 'delete',
        w = 'reopen',
    },
    c = { 
        name = '+code',
        a = 'action',
        r = 'rename',
        f = 'fix',
        p = 'prettify',
    },
    p = { 
        name = '+project',
        p = 'switch project',
        t = 'tree',
    },
    q = {
        name = "+quickfix",
        q = "open",
        j = "next",
        k = "prev",
        c = "close",
    },
    g = { 
        name = '+git',
        s = 'status',
        b = 'blame',
        l = {
          name = "+log",
          f = "file",
          p = "project",
        },
        m = {
          name = "+merge",
          h = "take left",
          l = "take right",
        },
        h = {
          name = "+hunk",
          h = "previous",
          l = "next",
          s = "stage",
          u = "undo",
          r = "reset hunk",
          R = "reset file",
          p = "preview",
          b = "blame line",
        },
    }
}

wk.register_keymap('leader', keymap)
