data:extend(
{
  {
    type = "technology",
    name = "liquid-air",
    icons = { {icon = "__base__/graphics/technology/fluid-handling.png", tint = {r=0.8, g=0.9, b=0.8, a=1}} },
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "liquid-air"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-air-condenser"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-air-turbine"
      },
    },
    prerequisites = {"fluid-handling", "electric-energy-distribution-1"},
    -- 2 can include advanced-electronics, electric-engine, efficiency module... plastics? -- red green and blue maybe 200-300
    -- 3 can include advanced-electronics-2, efficiency-module-2 or 3, -- red green blue and purple maybe 300
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = false,
    order = "c-e-aa"
  },



  {
    type = "technology",
    name = "liquid-air-2",
    icons = { {icon = "__base__/graphics/technology/fluid-handling.png", tint = {r=1.0, g=0.8, b=0.8, a=1}} },
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "liquid-air-condenser-2"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-air-turbine-2"
      },
    },
    prerequisites = {"liquid-air", "advanced-electronics", "effectivity-module"}, -- red and green
    -- 2 can include , electric-engine, ... plastics? -- red green and blue maybe 200-300
    -- 3 can include advanced-electronics-2, efficiency-module-2 or 3, -- red green blue and purple maybe 300
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
    upgrade = false,
    order = "c-e-aa"
  },


  {
    type = "technology",
    name = "liquid-air-3",
    icons = { {icon = "__base__/graphics/technology/fluid-handling.png", tint = {r=0.8, g=0.8, b=1.0, a=1}} },
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "liquid-air-condenser-3"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-air-turbine-3"
      },
    },
    prerequisites = {"liquid-air-2", "low-density-structure", "effectivity-module-3"}, -- red and green
    -- 2 can include , electric-engine, ... plastics? -- red green and blue maybe 200-300
    -- 3 can include advanced-electronics-2, efficiency-module-2 or 3, -- red green blue and purple maybe 300
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},

      },
      time = 30
    },
    upgrade = false,
    order = "c-e-aa"
  },


})
