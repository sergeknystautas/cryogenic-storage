-- turbine.lua

data:extend(
{

    ---------------
    -- TURBINE 1 --
    ---------------

  {
    type = "generator",
    name = "liquid-air-turbine",
    icons = { {icon = "__base__/graphics/icons/steam-turbine.png", tint = {r=0.8, g=0.9, b=0.8, a=1}} },
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 0.3, result = "liquid-air-turbine"},
    max_health = 300,
    corpse = "steam-turbine-remnants",
    dying_explosion = "steam-turbine-explosion",
    alert_icon_shift = util.by_pixel(0, -12),
    -- This is how effective the fuel value is converted into real energy
    effectivity = 0.5,
    fluid_usage_per_tick = 50/60,
    maximum_temperature = -195,
    burns_fluid = true,
    scale_fluid_usage = true,
    -- this should be fuel value * usage per tick * 60 ticks/second * effectivity
    max_power_output = "2.5MW",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fast_replaceable_group = "liquid-air-turbine",
    next_upgrade = "liquid-air-turbine-2",
    collision_box = {{-1.25, -2.35}, {1.25, 2.35}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    -- damaged_trigger_effect = hit_effects.entity(),
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { type = "input-output", position = {0, 3} },
        { type = "input-output", position = {0, -3} },
      },
      production_type = "input-output",
      -- filter = "liquid-air",
      -- minimum_temperature = -195.0
    },
    energy_source =
    {
      type = "fluid",
      usage_priority = "tertiary"
    },
    horizontal_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H.png",
          tint = {r=0.8, g=0.9, b=0.8, a=1},
          width = 160,
          height = 123,
          frame_count = 8,
          line_length = 4,
          shift = util.by_pixel(0, -2.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H.png",
            tint = {r=0.8, g=0.9, b=0.8, a=1},
            width = 320,
            height = 245,
            frame_count = 8,
            line_length = 4,
            shift = util.by_pixel(0, -2.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H-shadow.png",
          width = 217,
          height = 74,
          repeat_count = 8,
          frame_count = 1,
          line_length = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(28.75, 18),
          hr_version =
          {
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H-shadow.png",
            width = 435,
            height = 150,
            repeat_count = 8,
            frame_count = 1,
            line_length = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(28.5, 18),
            scale = 0.5
          }
        }
      }
    },
    vertical_animation =
    {
     layers =
     {
        {
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V.png",
          tint = {r=0.8, g=0.9, b=0.8, a=1},
          width = 108,
          height = 173,
          frame_count = 8,
          line_length = 4,
          shift = util.by_pixel(5, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V.png",
            tint = {r=0.8, g=0.9, b=0.8, a=1},
            width = 217,
            height = 347,
            frame_count = 8,
            line_length = 4,
            shift = util.by_pixel(4.75, 6.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V-shadow.png",
          width = 151,
          height = 131,
          repeat_count = 8,
          frame_count = 1,
          line_length = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(39.5, 24.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V-shadow.png",
            width = 302,
            height = 260,
            repeat_count = 8,
            frame_count = 1,
            line_length = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(39.5, 24.5),
            scale = 0.5
          }
        }
      }
    },
    smoke =
    {
      {
        name = "light-smoke",
        north_position = {0.9, 0.0},
        east_position = {-2.0, -2.0},
        frequency = 10 / 32,
        starting_vertical_speed = 0.08,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      }
    },
    -- vehicle_impact_sound = sounds.generic_impact,
    -- open_sound = sounds.machine_open,
    -- close_sound = sounds.machine_close,
    --[[
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-turbine.ogg",
        volume = 0.67
      },
      match_speed_to_activity = true,
      audible_distance_modifier = 0.7,
      max_sounds_per_type = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    ]]
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5,
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/steam-turbine/steam-turbine-reflection.png",
        priority = "extra-high",
        width = 40,
        height = 36,
        shift = util.by_pixel(0, 50),
        variation_count = 2,
        repeat_count = 2,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = true
    }
  },
  {
    type = "item",
    name = "liquid-air-turbine",
    icons = { {icon = "__base__/graphics/icons/steam-turbine.png", tint = {r=0.8, g=0.9, b=0.8, a=1}} },
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    -- order = "d[refinery]",
    order = "e[accumulator]-c[accumulator]",
    place_result = "liquid-air-turbine",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "liquid-air-turbine",
    enabled = false,
    energy_required = 2,
    ingredients = {{"iron-gear-wheel", 50}, {"copper-plate", 50}, {"pipe", 20}, {"electronic-circuit", 20},},
    result = "liquid-air-turbine"
  },




  ---------------
  -- TURBINE 2 --
  ---------------

  {
    type = "generator",
    name = "liquid-air-turbine-2",
    icons = { {icon = "__base__/graphics/icons/steam-turbine.png", tint = {r=1.0, g=0.9, b=0.5, a=1}} },
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 0.3, result = "liquid-air-turbine-2"},
    max_health = 300,
    corpse = "steam-turbine-remnants",
    dying_explosion = "steam-turbine-explosion",
    alert_icon_shift = util.by_pixel(0, -12),
    -- This is how effective the fuel value is converted into real energy
    effectivity = 0.7,
    fluid_usage_per_tick = 50/60,
    maximum_temperature = -195,
    burns_fluid = true,
    scale_fluid_usage = true,
    -- this should be fuel value * usage per tick * 60 ticks/second * effectivity
    max_power_output = "3.5MW",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fast_replaceable_group = "liquid-air-turbine",
    next_upgrade = "liquid-air-turbine-3",
    collision_box = {{-1.25, -2.35}, {1.25, 2.35}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    -- damaged_trigger_effect = hit_effects.entity(),
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { type = "input-output", position = {0, 3} },
        { type = "input-output", position = {0, -3} },
      },
      production_type = "input-output",
      -- filter = "liquid-air",
      -- minimum_temperature = -195.0
    },
    energy_source =
    {
      type = "fluid",
      usage_priority = "tertiary"
    },
    horizontal_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H.png",
          tint = {r=1.0, g=0.9, b=0.5, a=1},
          width = 160,
          height = 123,
          frame_count = 8,
          line_length = 4,
          shift = util.by_pixel(0, -2.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H.png",
            tint = {r=1.0, g=0.9, b=0.5, a=1},
            width = 320,
            height = 245,
            frame_count = 8,
            line_length = 4,
            shift = util.by_pixel(0, -2.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H-shadow.png",
          width = 217,
          height = 74,
          repeat_count = 8,
          frame_count = 1,
          line_length = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(28.75, 18),
          hr_version =
          {
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H-shadow.png",
            width = 435,
            height = 150,
            repeat_count = 8,
            frame_count = 1,
            line_length = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(28.5, 18),
            scale = 0.5
          }
        }
      }
    },
    vertical_animation =
    {
     layers =
     {
        {
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V.png",
          tint = {r=1.0, g=0.9, b=0.5, a=1},
          width = 108,
          height = 173,
          frame_count = 8,
          line_length = 4,
          shift = util.by_pixel(5, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V.png",
            tint = {r=1.0, g=0.9, b=0.5, a=1},
            width = 217,
            height = 347,
            frame_count = 8,
            line_length = 4,
            shift = util.by_pixel(4.75, 6.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V-shadow.png",
          width = 151,
          height = 131,
          repeat_count = 8,
          frame_count = 1,
          line_length = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(39.5, 24.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V-shadow.png",
            width = 302,
            height = 260,
            repeat_count = 8,
            frame_count = 1,
            line_length = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(39.5, 24.5),
            scale = 0.5
          }
        }
      }
    },
    smoke =
    {
      {
        name = "light-smoke",
        north_position = {0.9, 0.0},
        east_position = {-2.0, -2.0},
        frequency = 10 / 32,
        starting_vertical_speed = 0.08,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      }
    },
    -- vehicle_impact_sound = sounds.generic_impact,
    -- open_sound = sounds.machine_open,
    -- close_sound = sounds.machine_close,
    --[[
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-turbine.ogg",
        volume = 0.67
      },
      match_speed_to_activity = true,
      audible_distance_modifier = 0.7,
      max_sounds_per_type = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    ]]
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5,
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/steam-turbine/steam-turbine-reflection.png",
        priority = "extra-high",
        width = 40,
        height = 36,
        shift = util.by_pixel(0, 50),
        variation_count = 2,
        repeat_count = 2,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = true
    }
  },
  {
    type = "item",
    name = "liquid-air-turbine-2",
    icons = { {icon = "__base__/graphics/icons/steam-turbine.png", tint = {r=1.0, g=0.9, b=0.5, a=1}} },
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    -- order = "d[refinery]",
    order = "e[accumulator]-c[accumulator]",
    place_result = "liquid-air-turbine-2",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "liquid-air-turbine-2",
    enabled = false,
    energy_required = 4,
    ingredients = {{"liquid-air-turbine", 1}, {"plastic-bar", 50}, {"advanced-circuit", 20},},
    result = "liquid-air-turbine-2"
  },




    ---------------
    -- TURBINE 3 --
    ---------------

    {
      type = "generator",
      name = "liquid-air-turbine-3",
      icons = { {icon = "__base__/graphics/icons/steam-turbine.png", tint = {r=0.8, g=1.0, b=1.0, a=1}} },
      icon_size = 64, icon_mipmaps = 4,
      flags = {"placeable-neutral","player-creation"},
      minable = {mining_time = 0.3, result = "liquid-air-turbine-3"},
      max_health = 300,
      corpse = "steam-turbine-remnants",
      dying_explosion = "steam-turbine-explosion",
      alert_icon_shift = util.by_pixel(0, -12),
      -- This is how effective the fuel value is converted into real energy
      effectivity = 0.85,
      fluid_usage_per_tick = 50/60,
      maximum_temperature = -195,
      burns_fluid = true,
      scale_fluid_usage = true,
      -- this should be fuel value * usage per tick * 60 ticks/second * effectivity
      max_power_output = "4.25MW",
      resistances =
      {
        {
          type = "fire",
          percent = 70
        }
      },
      fast_replaceable_group = "liquid-air-turbine",
      -- next_upgrade = "liquid-air-turbine-2",
      collision_box = {{-1.25, -2.35}, {1.25, 2.35}},
      selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
      -- damaged_trigger_effect = hit_effects.entity(),
      fluid_box =
      {
        base_area = 1,
        height = 2,
        base_level = -1,
        pipe_covers = pipecoverspictures(),
        pipe_connections =
        {
          { type = "input-output", position = {0, 3} },
          { type = "input-output", position = {0, -3} },
        },
        production_type = "input-output",
        -- filter = "liquid-air",
        -- minimum_temperature = -195.0
      },
      energy_source =
      {
        type = "fluid",
        usage_priority = "tertiary"
      },
      horizontal_animation =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H.png",
            tint = {r=0.8, g=1.0, b=1.0, a=1},
            width = 160,
            height = 123,
            frame_count = 8,
            line_length = 4,
            shift = util.by_pixel(0, -2.5),
            hr_version =
            {
              filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H.png",
              tint = {r=0.8, g=1.0, b=1.0, a=1},
              width = 320,
              height = 245,
              frame_count = 8,
              line_length = 4,
              shift = util.by_pixel(0, -2.75),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H-shadow.png",
            width = 217,
            height = 74,
            repeat_count = 8,
            frame_count = 1,
            line_length = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(28.75, 18),
            hr_version =
            {
              filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H-shadow.png",
              width = 435,
              height = 150,
              repeat_count = 8,
              frame_count = 1,
              line_length = 1,
              draw_as_shadow = true,
              shift = util.by_pixel(28.5, 18),
              scale = 0.5
            }
          }
        }
      },
      vertical_animation =
      {
       layers =
       {
          {
            filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V.png",
            tint = {r=0.8, g=1.0, b=1.0, a=1},
            width = 108,
            height = 173,
            frame_count = 8,
            line_length = 4,
            shift = util.by_pixel(5, 6.5),
            hr_version =
            {
              filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V.png",
              tint = {r=0.8, g=1.0, b=1.0, a=1},
              width = 217,
              height = 347,
              frame_count = 8,
              line_length = 4,
              shift = util.by_pixel(4.75, 6.75),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V-shadow.png",
            width = 151,
            height = 131,
            repeat_count = 8,
            frame_count = 1,
            line_length = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(39.5, 24.5),
            hr_version =
            {
              filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V-shadow.png",
              width = 302,
              height = 260,
              repeat_count = 8,
              frame_count = 1,
              line_length = 1,
              draw_as_shadow = true,
              shift = util.by_pixel(39.5, 24.5),
              scale = 0.5
            }
          }
        }
      },
      smoke =
      {
        {
          name = "light-smoke",
          north_position = {0.9, 0.0},
          east_position = {-2.0, -2.0},
          frequency = 10 / 32,
          starting_vertical_speed = 0.08,
          slow_down_factor = 1,
          starting_frame_deviation = 60
        }
      },
      -- vehicle_impact_sound = sounds.generic_impact,
      -- open_sound = sounds.machine_open,
      -- close_sound = sounds.machine_close,
      --[[
      working_sound =
      {
        sound =
        {
          filename = "__base__/sound/steam-turbine.ogg",
          volume = 0.67
        },
        match_speed_to_activity = true,
        audible_distance_modifier = 0.7,
        max_sounds_per_type = 3,
        fade_in_ticks = 4,
        fade_out_ticks = 20
      },
      ]]
      min_perceived_performance = 0.25,
      performance_to_sound_speedup = 0.5,
      water_reflection =
      {
        pictures =
        {
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-reflection.png",
          priority = "extra-high",
          width = 40,
          height = 36,
          shift = util.by_pixel(0, 50),
          variation_count = 2,
          repeat_count = 2,
          scale = 5,
        },
        rotate = false,
        orientation_to_variation = true
      }
    },
    {
      type = "item",
      name = "liquid-air-turbine-3",
      icons = { {icon = "__base__/graphics/icons/steam-turbine.png", tint = {r=0.8, g=1.0, b=1.0, a=1}} },
      icon_size = 64, icon_mipmaps = 4,
      subgroup = "energy",
      -- order = "d[refinery]",
      order = "e[accumulator]-c[accumulator]",
      place_result = "liquid-air-turbine-3",
      stack_size = 10
    },
    {
      type = "recipe",
      name = "liquid-air-turbine-3",
      enabled = false,
      energy_required = 4,
      ingredients = {{"liquid-air-turbine-2", 1}, {"processing-unit", 20}, {"low-density-structure", 20},},
      result = "liquid-air-turbine-3"
    },


})
