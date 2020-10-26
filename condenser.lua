-- condenser.lua

data:extend(
{
  -----------------
  -- CONDENSER 1 --
  -----------------
  {
      type = "assembling-machine",
      name = "liquid-air-condenser",
      icons = { {icon = "__base__/graphics/icons/oil-refinery.png", tint = {r=0.7, g=0.7, b=1, a=1}} },
      icon_size = 64, icon_mipmaps = 4,
      flags = {"placeable-neutral","placeable-player", "player-creation"},
      minable = {mining_time = 1, result = "liquid-air-condenser"},
      max_health = 500,
      corpse = "oil-refinery-remnants",
      dying_explosion = "oil-refinery-explosion",
      resistances =
      {
          {type = "physical", percent = 50},
          {type = "fire", percent = 50},
          {type = "impact", percent = 50}
      },
      fluid_boxes =
      {
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{ position = {0, -3} }}
        },
      },
      animation = make_4way_animation_from_spritesheet(
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
            tint = {r=0.7, g=0.7, b=1, a=1},
            width = 337,
            height = 255,
            frame_count = 1,
            shift = {2.515625, 0.484375},
            hr_version =
            {
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery.png",
              tint = {r=0.7, g=0.7, b=1, a=1},
              width = 386,
              height = 430,
              frame_count = 1,
              shift = util.by_pixel(0, -7.5),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
            width = 337,
            height = 213,
            frame_count = 1,
            shift = util.by_pixel(82.5, 26.5),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
              width = 674,
              height = 426,
              frame_count = 1,
              shift = util.by_pixel(82.5, 26.5),
              draw_as_shadow = true,
              force_hr_shadow = true,
              scale = 0.5
            }
          }
        }
      }),

      working_visualisations =
      {
        {
          north_position = util.by_pixel(34, -65),
          east_position = util.by_pixel(-52, -61),
          south_position = util.by_pixel(-59, -82),
          west_position = util.by_pixel(57, -58),
          animation =
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            tint = {r=0.7, g=0.7, b=1, a=1},
            line_length = 10,
            width = 20,
            height = 40,
            frame_count = 60,
            animation_speed = 0.75,
            shift = util.by_pixel(0, -14),
            hr_version =
            {
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
              tint = {r=0.7, g=0.7, b=1, a=1},
              line_length = 10,
              width = 40,
              height = 81,
              frame_count = 60,
              animation_speed = 0.75,
              scale = 0.5,
              shift = util.by_pixel(0, -14.25)
            }
          },
          light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
        }
      },
      collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      -- damaged_trigger_effect = hit_effects.entity(),
      -- fast_replaceable_group = "assembling-machine",
      fast_replaceable_group = "liquid-air-condenser",
      next_upgrade = "liquid-air-condenser-2",
      crafting_categories = {"air-liquifier"},
      scale_entity_info_icon = true,
      -- vehicle_impact_sound = sounds.generic_impact,
      crafting_speed = 1.0,
      -- energy produced is fuel value * amount = 100kJ * 25 = 2.5MW
      -- 50% efficiency is 2.5 / .5 = 5MW
      energy_usage = "5MW",
      energy_source = {
          type = "electric",
          usage_priority = "tertiary",
          render_no_power_icon = true,
      },
      water_reflection =
      {
        pictures =
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-reflection.png",
          priority = "extra-high",
          width = 40,
          height = 48,
          shift = util.by_pixel(5, 95),
          variation_count = 4,
          scale = 5,
        },
        rotate = false,
        orientation_to_variation = true
      },
      ingredient_count = 1,
      -- module_specification = { module_slots = 2, module_info_icon_shift = {0, 1.2}, module_info_icon_scale = 1 },
      -- allowed_effects = {"speed"},
  },
  {
    type = "item",
    name = "liquid-air-condenser",
    icons = { {icon = "__base__/graphics/icons/oil-refinery.png", tint = {r=0.7, g=0.7, b=1, a=1} }},
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    -- order = "d[refinery]",
    order = "e[accumulator]-b[accumulator]",
    place_result = "liquid-air-condenser",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "liquid-air-condenser",
    -- energy_required = 8,
    energy_required = 2,
    ingredients = {{"pipe", "40"}, {"stone-brick", 40}, {"steel-plate", 20}, {"electronic-circuit", 20}, },
    result = "liquid-air-condenser",
    enabled = false,
  },


  -----------------
  -- CONDENSER 2 --
  -----------------

  {
      type = "assembling-machine",
      name = "liquid-air-condenser-2",
      icons = { {icon = "__base__/graphics/icons/oil-refinery.png", tint = {r=0.9, g=0.7, b=0.7, a=1}} },
      icon_size = 64, icon_mipmaps = 4,
      flags = {"placeable-neutral","placeable-player", "player-creation"},
      minable = {mining_time = 1, result = "liquid-air-condenser-2"},
      max_health = 500,
      corpse = "oil-refinery-remnants",
      dying_explosion = "oil-refinery-explosion",
      resistances =
      {
          {type = "physical", percent = 50},
          {type = "fire", percent = 50},
          {type = "impact", percent = 50}
      },
      fluid_boxes =
      {
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{ position = {0, -3} }}
        },
      },
      animation = make_4way_animation_from_spritesheet(
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
            tint = {r=0.9, g=0.7, b=0.7, a=1},
            width = 337,
            height = 255,
            frame_count = 1,
            shift = {2.515625, 0.484375},
            hr_version =
            {
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery.png",
              tint = {r=0.9, g=0.7, b=0.7, a=1},
              width = 386,
              height = 430,
              frame_count = 1,
              shift = util.by_pixel(0, -7.5),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
            width = 337,
            height = 213,
            frame_count = 1,
            shift = util.by_pixel(82.5, 26.5),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
              width = 674,
              height = 426,
              frame_count = 1,
              shift = util.by_pixel(82.5, 26.5),
              draw_as_shadow = true,
              force_hr_shadow = true,
              scale = 0.5
            }
          }
        }
      }),

      working_visualisations =
      {
        {
          north_position = util.by_pixel(34, -65),
          east_position = util.by_pixel(-52, -61),
          south_position = util.by_pixel(-59, -82),
          west_position = util.by_pixel(57, -58),
          animation =
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            tint = {r=0.9, g=0.7, b=0.7, a=1},
            line_length = 10,
            width = 20,
            height = 40,
            frame_count = 60,
            animation_speed = 0.75,
            shift = util.by_pixel(0, -14),
            hr_version =
            {
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
              tint = {r=0.9, g=0.7, b=0.7, a=1},
              line_length = 10,
              width = 40,
              height = 81,
              frame_count = 60,
              animation_speed = 0.75,
              scale = 0.5,
              shift = util.by_pixel(0, -14.25)
            }
          },
          light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
        }
      },
      collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      -- damaged_trigger_effect = hit_effects.entity(),
      fast_replaceable_group = "liquid-air-condenser",
      next_upgrade = "liquid-air-condenser-3",
      crafting_categories = {"air-liquifier"},
      scale_entity_info_icon = true,
      -- vehicle_impact_sound = sounds.generic_impact,
      crafting_speed = 1.0,
      -- energy produced is fuel value * amount = 100kJ * 25 = 2.5MW
      -- 70% efficiency is 2.5 / .7 = 3.57MW rounded to 3.5MW
      energy_usage = "3.5MW",
      energy_source = {
          type = "electric",
          usage_priority = "tertiary",
          render_no_power_icon = true,
      },
      water_reflection =
      {
        pictures =
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-reflection.png",
          priority = "extra-high",
          width = 40,
          height = 48,
          shift = util.by_pixel(5, 95),
          variation_count = 4,
          scale = 5,
        },
        rotate = false,
        orientation_to_variation = true
      },
      ingredient_count = 1,
      -- module_specification = { module_slots = 2, module_info_icon_shift = {0, 1.2}, module_info_icon_scale = 1 },
      -- allowed_effects = {"speed"},
  },
  {
    type = "item",
    name = "liquid-air-condenser-2",
    icons = { {icon = "__base__/graphics/icons/oil-refinery.png", tint = {r=0.9, g=0.7, b=0.7, a=1} }},
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    -- order = "d[refinery]",
    order = "e[accumulator]-b[accumulator]",
    place_result = "liquid-air-condenser-2",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "liquid-air-condenser-2",
    -- energy_required = 8,
    energy_required = 4,
    ingredients = {{"liquid-air-condenser", "1"}, {"advanced-circuit", 50}, {"concrete", 50}, {"steel-plate", 50}, },
    result = "liquid-air-condenser-2",
    enabled = false,
  },




  -----------------
  -- CONDENSER 3 --
  -----------------
  {
      type = "assembling-machine",
      name = "liquid-air-condenser-3",
      icons = { {icon = "__base__/graphics/icons/oil-refinery.png", tint = {r=0.6, g=0.9, b=1, a=1}} },
      icon_size = 64, icon_mipmaps = 4,
      flags = {"placeable-neutral","placeable-player", "player-creation"},
      minable = {mining_time = 1, result = "liquid-air-condenser-3"},
      max_health = 500,
      corpse = "oil-refinery-remnants",
      dying_explosion = "oil-refinery-explosion",
      resistances =
      {
          {type = "physical", percent = 50},
          {type = "fire", percent = 50},
          {type = "impact", percent = 50}
      },
      fluid_boxes =
      {
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{ position = {0, -3} }}
        },
      },
      animation = make_4way_animation_from_spritesheet(
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
            tint = {r=0.6, g=0.9, b=1, a=1},
            width = 337,
            height = 255,
            frame_count = 1,
            shift = {2.515625, 0.484375},
            hr_version =
            {
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery.png",
              tint = {r=0.6, g=0.9, b=1, a=1},
              width = 386,
              height = 430,
              frame_count = 1,
              shift = util.by_pixel(0, -7.5),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
            width = 337,
            height = 213,
            frame_count = 1,
            shift = util.by_pixel(82.5, 26.5),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
              width = 674,
              height = 426,
              frame_count = 1,
              shift = util.by_pixel(82.5, 26.5),
              draw_as_shadow = true,
              force_hr_shadow = true,
              scale = 0.5
            }
          }
        }
      }),

      working_visualisations =
      {
        {
          north_position = util.by_pixel(34, -65),
          east_position = util.by_pixel(-52, -61),
          south_position = util.by_pixel(-59, -82),
          west_position = util.by_pixel(57, -58),
          animation =
          {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            tint = {r=0.6, g=0.9, b=1, a=1},
            line_length = 10,
            width = 20,
            height = 40,
            frame_count = 60,
            animation_speed = 0.75,
            shift = util.by_pixel(0, -14),
            hr_version =
            {
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
              tint = {r=0.6, g=0.9, b=1, a=1},
              line_length = 10,
              width = 40,
              height = 81,
              frame_count = 60,
              animation_speed = 0.75,
              scale = 0.5,
              shift = util.by_pixel(0, -14.25)
            }
          },
          light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
        }
      },
      collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      -- damaged_trigger_effect = hit_effects.entity(),
      fast_replaceable_group = "liquid-air-condenser",
      -- next_upgrade = "liquid-air-condenser-2",
      crafting_categories = {"air-liquifier"},
      scale_entity_info_icon = true,
      -- vehicle_impact_sound = sounds.generic_impact,
      crafting_speed = 1.0,
      -- energy produced is fuel value * amount = 100kJ * 25 = 2.5MW
      -- 85% efficiency is 2.5 / .85 = 2.94MW rounded to 3.5MW
      energy_usage = "2.94MW",
      energy_source = {
          type = "electric",
          usage_priority = "tertiary",
          render_no_power_icon = true,
      },
      water_reflection =
      {
        pictures =
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-reflection.png",
          priority = "extra-high",
          width = 40,
          height = 48,
          shift = util.by_pixel(5, 95),
          variation_count = 4,
          scale = 5,
        },
        rotate = false,
        orientation_to_variation = true
      },
      ingredient_count = 1,
      -- module_specification = { module_slots = 2, module_info_icon_shift = {0, 1.2}, module_info_icon_scale = 1 },
      -- allowed_effects = {"speed"},
  },
  {
    type = "item",
    name = "liquid-air-condenser-3",
    icons = { {icon = "__base__/graphics/icons/oil-refinery.png", tint = {r=0.6, g=0.9, b=1, a=1} }},
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    -- order = "d[refinery]",
    order = "e[accumulator]-b[accumulator]",
    place_result = "liquid-air-condenser-3",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "liquid-air-condenser-3",
    -- energy_required = 8,
    energy_required = 4,
    ingredients = {{"liquid-air-condenser-2", "1"}, {"processing-unit", 20}, {"low-density-structure", 20}, },
    result = "liquid-air-condenser-3",
    enabled = false,
  },


})
