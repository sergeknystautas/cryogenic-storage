-- fluid.lua


-- condenser
-- tint = {r=0.7, g=0.7, b=1, a=1},
-- to
-- tint = {r=0.9, g=0.7, b=0.7, a=1}
-- to
-- tint = {r=0.6, g=0.9, b=1, a=1}

-- turbine
-- tint = {r=0.8, g=0.9, b=0.8, a=1}
-- to
-- tint = {r=1.0, g=0.9, b=0.5, a=1}
-- to
-- tint = {r=0.8, g=1.0, b=1.0, a=1}


data:extend(
{
  {
	type = "recipe-category",
	name = "air-liquifier"
  },
  {
    type = "fuel-category",
    name = "liquified-fluid-fuel",
  },
  {
    type = "fluid",
    name = "liquid-air",
    default_temperature = -195,
    max_temperature = -195,
    base_color = {r=0.06, g=0.85, b=0.72},
    flow_color = {r=0.06, g=0.24, b=0.23},
    icons = { {icon = "__base__/graphics/icons/fluid/water.png", tint = {r=0, g=0.9, b=0.7, a=0.7}} },
    icon_size = 64, icon_mipmaps = 4,
    fuel_value = "100kJ",
    fuel_category = "liquified-fluid-fuel",
    fuel_emissions_multiplier = 0.0,
    order = "a[fluid]-b[liquid-air]"
  },
  {
      type = "recipe",
      name = "liquid-air",
      category = "air-liquifier",
      -- subgroup = "fluid-recipes",
      icons = { {icon = "__base__/graphics/icons/fluid/water.png", tint = {r=0, g=0.9, b=0.7, a=0.7}} },
      icon_size = 64,
      -- this is how fast this recipe is created
      energy_required = 1,
      enabled = false,
      always_show_made_in = true,
      always_show_products = true,
      hide_from_player_crafting = true,
      ingredients = {},
      results =
      {
          -- turbine uses 5MW = 5000KW, so at 100KJ, 50 is 100% efficiency
          { type = "fluid", name = "liquid-air", amount = 25 }
      },
      -- subgroup = "raw-material",
      order = "a[air-liquifier]-a1[liquid-air]"
  },
})
