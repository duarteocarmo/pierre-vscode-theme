-- Pierre color palette
-- Ported from the Pierre VS Code theme

local M = {}

-- Base color families
M.gray = {
  ["020"] = "#fbfbfb",
  ["040"] = "#f9f9f9",
  ["060"] = "#f8f8f8",
  ["080"] = "#f2f2f3",
  ["100"] = "#eeeeef",
  ["200"] = "#dbdbdd",
  ["300"] = "#c6c6c8",
  ["400"] = "#adadb1",
  ["500"] = "#8E8E95",
  ["600"] = "#84848A",
  ["700"] = "#79797F",
  ["800"] = "#6C6C71",
  ["900"] = "#4A4A4E",
  ["920"] = "#424245",
  ["940"] = "#39393c",
  ["960"] = "#2e2e30",
  ["980"] = "#1F1F21",
  ["1000"] = "#141415",
  ["1020"] = "#0B0B0C",
  ["1040"] = "#070707",
}

M.red = {
  ["050"] = "#ffedea",
  ["100"] = "#ffdbd6",
  ["200"] = "#ffb7ae",
  ["300"] = "#ff9187",
  ["400"] = "#ff6762",
  ["500"] = "#ff2e3f",
  ["600"] = "#d52c36",
  ["700"] = "#ad292e",
  ["800"] = "#862425",
  ["900"] = "#611e1d",
  ["950"] = "#3e1715",
}

M.orange = {
  ["050"] = "#fff3ea",
  ["100"] = "#ffe8d5",
  ["200"] = "#ffd1ab",
  ["300"] = "#ffba82",
  ["400"] = "#ffa359",
  ["500"] = "#fe8c2c",
  ["600"] = "#d47628",
  ["700"] = "#ac6023",
  ["800"] = "#854c1e",
  ["900"] = "#603819",
  ["950"] = "#3d2513",
}

M.yellow = {
  ["050"] = "#fff9ea",
  ["100"] = "#fff4d5",
  ["200"] = "#ffe9ab",
  ["300"] = "#ffde80",
  ["400"] = "#ffd452",
  ["500"] = "#ffca00",
  ["600"] = "#d5a910",
  ["700"] = "#ac8816",
  ["800"] = "#856a17",
  ["900"] = "#604c16",
  ["950"] = "#3d3112",
}

M.green = {
  ["050"] = "#edf9ed",
  ["100"] = "#daf3db",
  ["200"] = "#b4e7b7",
  ["300"] = "#8cda94",
  ["400"] = "#5ecc71",
  ["500"] = "#0dbe4e",
  ["600"] = "#199f43",
  ["700"] = "#1d8138",
  ["800"] = "#1d642e",
  ["900"] = "#1b4923",
  ["950"] = "#162f19",
}

M.mint = {
  ["050"] = "#edfaf7",
  ["100"] = "#dbf5ef",
  ["200"] = "#b7ebdf",
  ["300"] = "#8fe0d0",
  ["400"] = "#61d5c0",
  ["500"] = "#00cab1",
  ["600"] = "#16a994",
  ["700"] = "#1d8978",
  ["800"] = "#1e6a5e",
  ["900"] = "#1c4d44",
  ["950"] = "#16312c",
}

M.teal = {
  ["050"] = "#eef9fa",
  ["100"] = "#ddf4f6",
  ["200"] = "#b9e8ed",
  ["300"] = "#92dde4",
  ["400"] = "#64d1db",
  ["500"] = "#00c5d2",
  ["600"] = "#17a5af",
  ["700"] = "#1e858e",
  ["800"] = "#1f686e",
  ["900"] = "#1d4b4f",
  ["950"] = "#173033",
}

M.cyan = {
  ["050"] = "#eff9fe",
  ["100"] = "#def2fc",
  ["200"] = "#bce6f9",
  ["300"] = "#96d9f6",
  ["400"] = "#68cdf2",
  ["500"] = "#08c0ef",
  ["600"] = "#1ca1c7",
  ["700"] = "#2182a1",
  ["800"] = "#22657c",
  ["900"] = "#1e4959",
  ["950"] = "#182f38",
}

M.blue = {
  ["050"] = "#eff5ff",
  ["100"] = "#dfebff",
  ["200"] = "#bdd7ff",
  ["300"] = "#97c4ff",
  ["400"] = "#69b1ff",
  ["500"] = "#009fff",
  ["600"] = "#1a85d4",
  ["700"] = "#216cab",
  ["800"] = "#215584",
  ["900"] = "#1f3e5e",
  ["950"] = "#19283c",
}

M.indigo = {
  ["050"] = "#f5ecff",
  ["100"] = "#ead9ff",
  ["200"] = "#d3b4fe",
  ["300"] = "#ba8ffd",
  ["400"] = "#9d6afb",
  ["500"] = "#7b43f8",
  ["600"] = "#693acf",
  ["700"] = "#5731a7",
  ["800"] = "#462981",
  ["900"] = "#35205c",
  ["950"] = "#24173a",
}

M.purple = {
  ["050"] = "#fbedfd",
  ["100"] = "#f7dbfb",
  ["200"] = "#eeb6f6",
  ["300"] = "#e290f0",
  ["400"] = "#d568ea",
  ["500"] = "#c635e4",
  ["600"] = "#a631be",
  ["700"] = "#872b9a",
  ["800"] = "#692677",
  ["900"] = "#4d1f56",
  ["950"] = "#321736",
}

M.pink = {
  ["050"] = "#ffedf0",
  ["100"] = "#ffdbe1",
  ["200"] = "#ffb7c4",
  ["300"] = "#ff91a8",
  ["400"] = "#ff678d",
  ["500"] = "#fc2b73",
  ["600"] = "#d32a61",
  ["700"] = "#aa2850",
  ["800"] = "#84243f",
  ["900"] = "#5f1e2f",
  ["950"] = "#3d1720",
}

M.brown = {
  ["050"] = "#f8f2ee",
  ["100"] = "#f1e4dd",
  ["200"] = "#e3cabb",
  ["300"] = "#d3b19b",
  ["400"] = "#c3987b",
  ["500"] = "#b27f5c",
  ["600"] = "#956b4f",
  ["700"] = "#7a5841",
  ["800"] = "#5f4534",
  ["900"] = "#453327",
  ["950"] = "#2d221b",
}

-- Semantic color roles for light theme
M.light = {
  bg = {
    editor = "#ffffff",
    window = M.gray["060"],
    inset = M.gray["080"],
    elevated = M.gray["040"],
  },
  fg = {
    base = M.gray["1040"],
    fg1 = M.gray["900"],
    fg2 = M.gray["800"],
    fg3 = M.gray["600"],
    fg4 = M.gray["500"],
  },
  border = {
    window = M.gray["200"],
    editor = M.gray["300"],
    indent_guide = M.gray["200"],
    indent_guide_active = M.gray["400"],
    inset = M.gray["200"],
    elevated = M.gray["200"],
  },
  accent = {
    primary = M.blue["500"],
    link = M.blue["600"],
    subtle = M.blue["100"],
    contrast_on_accent = "#ffffff",
  },
  states = {
    merge = M.indigo["500"],
    success = M.mint["600"],
    danger = M.red["600"],
    warn = M.yellow["600"],
    info = M.cyan["600"],
  },
  syntax = {
    comment = M.gray["600"],
    string = M.green["700"],
    number = M.cyan["700"],
    keyword = M.pink["600"],
    regexp = M.teal["700"],
    func = M.indigo["600"],
    type = M.purple["600"],
    variable = M.orange["700"],
    operator = M.cyan["600"],
    punctuation = M.gray["700"],
    constant = M.yellow["700"],
    parameter = M.orange["500"],
    namespace = M.yellow["700"],
    decorator = M.blue["600"],
    escape = M.teal["700"],
    invalid = M.red["500"],
    tag = M.red["700"],
    attribute = M.mint["700"],
  },
  ansi = {
    black = M.gray["980"],
    red = M.red["500"],
    green = M.green["500"],
    yellow = M.yellow["500"],
    blue = M.blue["500"],
    magenta = M.purple["500"],
    cyan = M.cyan["500"],
    white = M.gray["300"],
    bright_black = M.gray["980"],
    bright_red = M.red["500"],
    bright_green = M.green["500"],
    bright_yellow = M.yellow["500"],
    bright_blue = M.blue["500"],
    bright_magenta = M.purple["500"],
    bright_cyan = M.cyan["500"],
    bright_white = M.gray["300"],
  },
  diff = {
    add = M.green["050"],
    delete = M.red["050"],
    change = M.blue["050"],
    text = M.blue["100"],
  },
}

-- Semantic color roles for dark theme
M.dark = {
  bg = {
    editor = M.gray["1040"],
    window = M.gray["1000"],
    inset = M.gray["980"],
    elevated = M.gray["1020"],
  },
  fg = {
    base = M.gray["020"],
    fg1 = M.gray["200"],
    fg2 = M.gray["400"],
    fg3 = M.gray["600"],
    fg4 = M.gray["700"],
  },
  border = {
    window = M.gray["960"],
    editor = M.gray["900"],
    indent_guide = M.gray["940"],
    indent_guide_active = M.gray["800"],
    inset = M.gray["920"],
    elevated = M.gray["940"],
  },
  accent = {
    primary = M.blue["400"],
    link = M.blue["400"],
    subtle = M.blue["950"],
    contrast_on_accent = M.gray["1040"],
  },
  states = {
    merge = M.indigo["400"],
    success = M.mint["400"],
    danger = M.red["400"],
    warn = M.yellow["400"],
    info = M.cyan["400"],
  },
  syntax = {
    comment = M.gray["600"],
    string = M.green["400"],
    number = M.cyan["300"],
    keyword = M.pink["400"],
    regexp = M.teal["300"],
    func = M.indigo["300"],
    type = M.purple["300"],
    variable = M.orange["300"],
    operator = M.cyan["400"],
    punctuation = M.gray["500"],
    constant = M.yellow["300"],
    parameter = M.orange["200"],
    namespace = M.yellow["400"],
    decorator = M.blue["300"],
    escape = M.teal["300"],
    invalid = M.red["300"],
    tag = M.red["300"],
    attribute = M.mint["300"],
  },
  ansi = {
    black = M.gray["1000"],
    red = M.red["500"],
    green = M.green["500"],
    yellow = M.yellow["500"],
    blue = M.blue["500"],
    magenta = M.purple["500"],
    cyan = M.cyan["500"],
    white = M.gray["300"],
    bright_black = M.gray["1000"],
    bright_red = M.red["500"],
    bright_green = M.green["500"],
    bright_yellow = M.yellow["500"],
    bright_blue = M.blue["500"],
    bright_magenta = M.purple["500"],
    bright_cyan = M.cyan["500"],
    bright_white = M.gray["300"],
  },
  diff = {
    add = M.green["950"],
    delete = M.red["950"],
    change = M.blue["950"],
    text = M.blue["900"],
  },
}

-- Helper function to get palette for a given variant
function M.get(variant)
  return variant == "light" and M.light or M.dark
end

return M
