{
  clear = "function() { <function 1> }",
  extend = "function() { <function 1> }",
  isdemo = false,
  module_info = {
    base = {
      author = "Factorio team",
      contact = "dev@factorio.com",
      dependencies = { "core" },
      description = "Basic mod with all the default game data and standard campaign.",
      homepage = "http://www.factorio.com",
      localPath = "/Applications/factorio.app/Contents/data/base",
      name = "base",
      title = "Base Mod",
      version = "0.11.11"
    },
    core = {
      author = "Factorio team",
      contact = "dev@factorio.com",
      dependencies = {},
      homepage = "http://www.factorio.com",
      localPath = "/Applications/factorio.app/Contents/data/core",
      name = "core",
      title = "Core Factorio data",
      version = "0.11.11"
    }
  },
  raw = {
    accumulator = {
      ["basic-accumulator"] = {
        charge_animation = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-charge-animation.png",
          frame_count = 24,
          height = 135,
          line_length = 8,
          shift = { 0.482, -0.638 },
          width = 138
        },
        charge_cooldown = 30,
        charge_light = {
          intensity = 0.3,
          size = 7
        },
        collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
        corpse = "medium-remnants",
        discharge_animation = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-discharge-animation.png",
          frame_count = 24,
          height = 128,
          line_length = 8,
          shift = { 0.395, -0.525 },
          width = 147
        },
        discharge_cooldown = 60,
        discharge_light = {
          intensity = 0.7,
          size = 7
        },
        energy_source = {
          buffer_capacity = "5MJ",
          input_flow_limit = "300kW",
          output_flow_limit = "300kW",
          type = "electric",
          usage_priority = "terciary"
        },
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/basic-accumulator.png",
        max_health = 150,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "basic-accumulator"
        },
        name = "basic-accumulator",
        picture = {
          filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator.png",
          height = 103,
          priority = "extra-high",
          shift = { 0.7, -0.2 },
          width = 124
        },
        selection_box = { { -1, -1 }, { 1, 1 } },
        type = "accumulator",
        working_sound = {
          idle_sound = {
            filename = "__base__/sound/accumulator-idle.ogg",
            volume = 0.4
          },
          max_sounds_per_type = 5,
          sound = {
            filename = "__base__/sound/accumulator-working.ogg",
            volume = 1
          }
        }
      }
    },
    ["active-defense-equipment"] = {
      ["basic-electric-discharge-defense-equipment"] = {
        ability_icon = {
          filename = "__base__/graphics/equipment/basic-electric-discharge-defense-equipment-ability.png",
          height = 32,
          priority = "medium",
          width = 32
        },
        attack_parameters = {
          ammo_category = "electric",
          ammo_type = {
            action = { {
                action_delivery = { {
                    projectile = "blue-laser",
                    starting_speed = 0.28,
                    type = "projectile"
                  } },
                force = "enemy",
                perimeter = 10,
                type = "area"
              } },
            category = "electric",
            energy_consumption = "2KJ",
            speed = 1,
            type = "projectile"
          },
          cooldown = 150,
          damage_modifier = 3,
          projectile_center = { 0, 0 },
          projectile_creation_distance = 0.6,
          range = 10,
          sound = { {
              filename = "__base__/sound/laser.ogg",
              volume = 0.4
            } }
        },
        automatic = false,
        energy_source = {
          buffer_capacity = "4040J",
          type = "electric",
          usage_priority = "secondary-input"
        },
        name = "basic-electric-discharge-defense-equipment",
        shape = {
          height = 3,
          type = "full",
          width = 3
        },
        sprite = {
          filename = "__base__/graphics/equipment/basic-electric-discharge-defense-equipment.png",
          height = 96,
          priority = "medium",
          width = 96
        },
        type = "active-defense-equipment"
      },
      ["basic-laser-defense-equipment"] = {
        attack_parameters = {
          ammo_category = "electric",
          ammo_type = {
            action = { {
                action_delivery = { {
                    projectile = "laser",
                    starting_speed = 0.28,
                    type = "projectile"
                  } },
                type = "direct"
              } },
            category = "electric",
            energy_consumption = "100J",
            projectile = "laser",
            speed = 1,
            type = "projectile"
          },
          cooldown = 20,
          damage_modifier = 1,
          projectile_center = { 0, 0 },
          projectile_creation_distance = 0.6,
          range = 15,
          sound = { {
              filename = "__base__/sound/laser.ogg",
              volume = 0.4
            } }
        },
        automatic = true,
        energy_source = {
          buffer_capacity = "101J",
          type = "electric",
          usage_priority = "secondary-input"
        },
        name = "basic-laser-defense-equipment",
        shape = {
          height = 3,
          type = "full",
          width = 2
        },
        sprite = {
          filename = "__base__/graphics/equipment/basic-laser-defense-equipment.png",
          height = 96,
          priority = "medium",
          width = 64
        },
        type = "active-defense-equipment"
      }
    },
    ammo = {
      ["basic-bullet-magazine"] = {
        ammo_type = {
          action = { {
              action_delivery = { {
                  source_effects = { {
                      entity_name = "explosion-gunshot",
                      type = "create-entity"
                    } },
                  target_effects = { {
                      entity_name = "explosion-gunshot",
                      type = "create-entity"
                    }, {
                      damage = {
                        amount = 2,
                        type = "physical"
                      },
                      type = "damage"
                    } },
                  type = "instant"
                } },
              type = "direct"
            } },
          category = "bullet"
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/basic-bullet-magazine.png",
        magazine_size = 10,
        name = "basic-bullet-magazine",
        order = "a[basic-clips]-a[basic-bullet-magazine]",
        stack_size = 100,
        subgroup = "ammo",
        type = "ammo"
      },
      ["cannon-shell"] = {
        ammo_type = {
          action = {
            action_delivery = {
              direction_deviation = 0.1,
              max_range = 30,
              projectile = "cannon-projectile",
              range_deviation = 0.1,
              starting_speed = 1,
              type = "projectile"
            },
            type = "direct"
          },
          category = "cannon-shell",
          source_effects = {
            entity_name = "explosion-gunshot",
            type = "create-entity"
          },
          target_type = "direction"
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/cannon-shell.png",
        name = "cannon-shell",
        order = "d[rocket-launcher]-a[basic]",
        stack_size = 100,
        subgroup = "ammo",
        type = "ammo"
      },
      ["explosive-rocket"] = {
        ammo_type = {
          action = {
            action_delivery = {
              projectile = "explosive-rocket",
              source_effects = {
                entity_name = "explosion-gunshot",
                type = "create-entity"
              },
              starting_speed = 0.1,
              type = "projectile"
            },
            type = "direct"
          },
          category = "rocket"
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/explosive-rocket.png",
        name = "explosive-rocket",
        order = "d[rocket-launcher]-b[explosive]",
        stack_size = 100,
        subgroup = "ammo",
        type = "ammo"
      },
      ["flame-thrower-ammo"] = {
        ammo_type = {
          action = {
            action_delivery = { {
                damage = {
                  amount = 20,
                  type = "fire"
                },
                direction_deviation = 0.07,
                explosion = "flame-thrower-explosion",
                projectile_starting_speed = 0.2,
                speed_deviation = 0.1,
                starting_distance = 0.6,
                starting_frame_deviation = 0.07,
                type = "flame-thrower"
              } },
            type = "direct"
          },
          category = "flame-thrower",
          target_type = "direction"
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/flame-thrower-ammo.png",
        magazine_size = 100,
        name = "flame-thrower-ammo",
        order = "e[flame-thrower]",
        stack_size = 50,
        subgroup = "ammo",
        type = "ammo"
      },
      ["piercing-bullet-magazine"] = {
        ammo_type = {
          action = {
            action_delivery = {
              source_effects = {
                entity_name = "explosion-gunshot",
                type = "create-entity"
              },
              target_effects = { {
                  entity_name = "explosion-gunshot",
                  type = "create-entity"
                }, {
                  damage = {
                    amount = 5,
                    type = "physical"
                  },
                  type = "damage"
                } },
              type = "instant"
            },
            type = "direct"
          },
          category = "bullet"
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/piercing-bullet-magazine.png",
        magazine_size = 10,
        name = "piercing-bullet-magazine",
        order = "a[basic-clips]-b[piercing-bullet-magazine]",
        stack_size = 100,
        subgroup = "ammo",
        type = "ammo"
      },
      ["piercing-shotgun-shell"] = {
        ammo_type = {
          action = {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "piercing-shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            repeat_count = 16,
            type = "direct"
          },
          category = "shotgun-shell",
          source_effects = {
            entity_name = "explosion-gunshot",
            type = "create-entity"
          },
          target_type = "direction"
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/piercing-shotgun-shell.png",
        magazine_size = 10,
        name = "piercing-shotgun-shell",
        order = "b[shotgun]-b[piercing]",
        stack_size = 100,
        subgroup = "ammo",
        type = "ammo"
      },
      ["railgun-dart"] = {
        ammo_type = {
          action = {
            action_delivery = {
              target_effects = {
                damage = {
                  amount = 100,
                  type = "physical"
                },
                type = "damage"
              },
              type = "instant"
            },
            range = 25,
            source_effects = {
              entity_name = "railgun-beam",
              type = "create-entity"
            },
            type = "line",
            width = 0.5
          },
          category = "railgun",
          target_type = "direction"
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/railgun-ammo.png",
        magazine_size = 4,
        name = "railgun-dart",
        order = "c[railgun]",
        stack_size = 100,
        subgroup = "ammo",
        type = "ammo"
      },
      rocket = {
        ammo_type = {
          action = {
            action_delivery = {
              projectile = "rocket",
              source_effects = {
                entity_name = "explosion-gunshot",
                type = "create-entity"
              },
              starting_speed = 0.1,
              type = "projectile"
            },
            type = "direct"
          },
          category = "rocket"
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/rocket.png",
        name = "rocket",
        order = "d[rocket-launcher]-a[basic]",
        stack_size = 100,
        subgroup = "ammo",
        type = "ammo"
      },
      ["shotgun-shell"] = {
        ammo_type = {
          action = {
            action_delivery = {
              direction_deviation = 0.3,
              max_range = 15,
              projectile = "shotgun-pellet",
              range_deviation = 0.3,
              starting_speed = 1,
              type = "projectile"
            },
            repeat_count = 12,
            type = "direct"
          },
          category = "shotgun-shell",
          source_effects = {
            entity_name = "explosion-gunshot",
            type = "create-entity"
          },
          target_type = "direction"
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/shotgun-shell.png",
        magazine_size = 10,
        name = "shotgun-shell",
        order = "b[shotgun]-a[basic]",
        stack_size = 100,
        subgroup = "ammo",
        type = "ammo"
      }
    },
    ["ammo-category"] = {
      biological = {
        name = "biological",
        type = "ammo-category"
      },
      bullet = {
        name = "bullet",
        type = "ammo-category"
      },
      ["cannon-shell"] = {
        name = "cannon-shell",
        type = "ammo-category"
      },
      capsule = {
        name = "capsule",
        type = "ammo-category"
      },
      ["combat-robot-laser"] = {
        name = "combat-robot-laser",
        type = "ammo-category"
      },
      electric = {
        name = "electric",
        type = "ammo-category"
      },
      ["flame-thrower"] = {
        name = "flame-thrower",
        type = "ammo-category"
      },
      ["laser-turret"] = {
        name = "laser-turret",
        type = "ammo-category"
      },
      melee = {
        name = "melee",
        type = "ammo-category"
      },
      railgun = {
        name = "railgun",
        type = "ammo-category"
      },
      rocket = {
        name = "rocket",
        type = "ammo-category"
      },
      ["shotgun-shell"] = {
        name = "shotgun-shell",
        type = "ammo-category"
      }
    },
    ["ammo-turret"] = {
      ["gun-turret"] = {
        attack_parameters = {
          ammo_category = "bullet",
          cooldown = 6,
          projectile_center = { 0, 0.6 },
          projectile_creation_distance = 1.2,
          range = 17,
          shell_particle = {
            center = { 0, 0.6 },
            creation_distance = 0.6,
            direction_deviation = 0.1,
            name = "shell-particle",
            speed = 0.1,
            speed_deviation = 0.03,
            starting_frame_speed = 0.2,
            starting_frame_speed_deviation = 0.1
          },
          sound = { {
              filename = "__base__/sound/gunshot.ogg",
              volume = 0.3
            } }
        },
        automated_ammo_count = 10,
        base_picture = {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
          height = 28,
          priority = "high",
          shift = { 0, 0.475 },
          width = 43
        },
        collision_box = { { -0.4, -0.9 }, { 0.4, 0.9 } },
        corpse = "small-remnants",
        dying_explosion = "huge-explosion",
        flags = { "placeable-player", "player-creation" },
        folded_animation = {
          axially_symmetrical = false,
          direction_count = 4,
          filename = "__base__/graphics/entity/gun-turret/gun-turret-extension.png",
          frame_count = 1,
          height = 102,
          line_length = 1,
          priority = "medium",
          shift = { 1.34375, 0.1 },
          width = 171
        },
        folding_animation = {
          axially_symmetrical = false,
          direction_count = 4,
          filename = "__base__/graphics/entity/gun-turret/gun-turret-extension.png",
          frame_count = 5,
          height = 102,
          priority = "medium",
          run_mode = "backward",
          shift = { 1.34375, 0.1 },
          width = 171
        },
        folding_speed = 0.08,
        icon = "__base__/graphics/icons/gun-turret.png",
        inventory_size = 1,
        max_health = 200,
        minable = {
          mining_time = 0.5,
          result = "gun-turret"
        },
        name = "gun-turret",
        prepared_animation = {
          axially_symmetrical = false,
          direction_count = 64,
          filename = "__base__/graphics/entity/gun-turret/gun-turret.png",
          frame_count = 1,
          height = 107,
          line_length = 8,
          priority = "medium",
          shift = { 1.34375, 0.13125 },
          width = 178
        },
        preparing_animation = {
          axially_symmetrical = false,
          direction_count = 4,
          filename = "__base__/graphics/entity/gun-turret/gun-turret-extension.png",
          frame_count = 5,
          height = 102,
          priority = "medium",
          shift = { 1.34375, 0.1 },
          width = 171
        },
        preparing_speed = 0.08,
        rotation_speed = 0.015,
        selection_box = { { -0.5, -1 }, { 0.5, 1 } },
        type = "ammo-turret"
      }
    },
    armor = {
      ["basic-armor"] = {
        durability = 1000,
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/basic-armor.png",
        name = "basic-armor",
        order = "a[basic-armor]",
        resistances = { {
            decrease = 3,
            percent = 20,
            type = "physical"
          }, {
            decrease = 3,
            percent = 30,
            type = "acid"
          }, {
            decrease = 2,
            percent = 20,
            type = "explosion"
          } },
        stack_size = 10,
        subgroup = "armor",
        type = "armor"
      },
      ["basic-modular-armor"] = {
        durability = 10000,
        equipment_grid = {
          height = 5,
          width = 5
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/basic-modular-armor.png",
        name = "basic-modular-armor",
        order = "c[basic-modular-armor]",
        resistances = { {
            decrease = 6,
            percent = 30,
            type = "physical"
          }, {
            decrease = 5,
            percent = 30,
            type = "acid"
          }, {
            decrease = 10,
            percent = 30,
            type = "explosion"
          } },
        stack_size = 1,
        subgroup = "armor",
        type = "armor"
      },
      ["heavy-armor"] = {
        durability = 5000,
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/heavy-armor.png",
        name = "heavy-armor",
        order = "b[heavy-armor]",
        resistances = { {
            decrease = 6,
            percent = 30,
            type = "physical"
          }, {
            decrease = 10,
            percent = 30,
            type = "explosion"
          }, {
            decrease = 5,
            percent = 30,
            type = "acid"
          } },
        stack_size = 10,
        subgroup = "armor",
        type = "armor"
      },
      ["power-armor"] = {
        durability = 15000,
        equipment_grid = {
          height = 7,
          width = 7
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/power-armor.png",
        name = "power-armor",
        order = "d[power-armor]",
        resistances = { {
            decrease = 8,
            percent = 30,
            type = "physical"
          }, {
            decrease = 7,
            percent = 30,
            type = "acid"
          }, {
            decrease = 15,
            percent = 30,
            type = "explosion"
          } },
        stack_size = 1,
        subgroup = "armor",
        type = "armor"
      },
      ["power-armor-mk2"] = {
        durability = 20000,
        equipment_grid = {
          height = 10,
          width = 10
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/power-armor-mk2.png",
        name = "power-armor-mk2",
        order = "e[power-armor-mk2]",
        resistances = { {
            decrease = 10,
            percent = 40,
            type = "physical"
          }, {
            decrease = 10,
            percent = 40,
            type = "acid"
          }, {
            decrease = 20,
            percent = 50,
            type = "explosion"
          } },
        stack_size = 1,
        subgroup = "armor",
        type = "armor"
      }
    },
    arrow = {
      ["orange-arrow-with-circle"] = {
        arrow_picture = {
          filename = "__core__/graphics/arrows/gui-arrow-medium.png",
          height = "62",
          priority = "low",
          width = "58"
        },
        blinking = true,
        circle_picture = {
          filename = "__core__/graphics/arrows/gui-arrow-circle.png",
          height = "50",
          priority = "low",
          width = "50"
        },
        flags = { "placeable-off-grid", "not-on-map" },
        name = "orange-arrow-with-circle",
        type = "arrow"
      }
    },
    ["assembling-machine"] = {
      ["assembling-machine-1"] = {
        animation = {
          filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
          frame_count = 32,
          height = 102,
          line_length = 8,
          priority = "high",
          shift = { 0.25, -0.1 },
          width = 99
        },
        close_sound = {
          filename = "__base__/sound/machine-close.ogg",
          volume = 0.75
        },
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        corpse = "big-remnants",
        crafting_categories = { "crafting" },
        crafting_speed = 0.5,
        dying_explosion = "huge-explosion",
        energy_source = {
          emissions = 0.033333333333333,
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = "90kW",
        fast_replaceable_group = "assembling-machine",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        icon = "__base__/graphics/icons/assembling-machine-1.png",
        ingredient_count = 2,
        max_health = 200,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "assembling-machine-1"
        },
        name = "assembling-machine-1",
        open_sound = {
          filename = "__base__/sound/machine-open.ogg",
          volume = 0.85
        },
        resistances = { {
            percent = 70,
            type = "fire"
          } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        type = "assembling-machine",
        working_sound = {
          apparent_volume = 1.5,
          idle_sound = {
            filename = "__base__/sound/idle1.ogg",
            volume = 0.6
          },
          sound = { {
              filename = "__base__/sound/assembling-machine-t1-1.ogg",
              volume = 0.8
            }, {
              filename = "__base__/sound/assembling-machine-t1-2.ogg",
              volume = 0.8
            } }
        }
      },
      ["assembling-machine-2"] = {
        allowed_effects = { "consumption", "speed", "productivity", "pollution" },
        animation = {
          filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
          frame_count = 32,
          height = 99,
          line_length = 8,
          priority = "high",
          shift = { 0.4, -0.06 },
          width = 113
        },
        close_sound = {
          filename = "__base__/sound/machine-close.ogg",
          volume = 0.75
        },
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        corpse = "big-remnants",
        crafting_categories = { "crafting", "advanced-crafting", "crafting-with-fluid" },
        crafting_speed = 0.75,
        dying_explosion = "huge-explosion",
        energy_source = {
          emissions = 0.016,
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = "150kW",
        fast_replaceable_group = "assembling-machine",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        fluid_boxes = { {
            base_area = 10,
            base_level = -1,
            pipe_connections = { {
                position = { 0, -2 },
                type = "input"
              } },
            pipe_covers = {
              east = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                height = 32,
                priority = "extra-high",
                width = 32
              },
              north = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                height = 32,
                priority = "extra-high",
                width = 44
              },
              south = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                height = 52,
                priority = "extra-high",
                width = 46
              },
              west = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                height = 32,
                priority = "extra-high",
                width = 32
              }
            },
            pipe_picture = {
              east = {
                filename = "__base__/graphics/entity/assembling-machine-2/pipe-east.png",
                height = 40,
                priority = "extra-high",
                shift = { -0.71875, 0 },
                width = 41
              },
              north = {
                filename = "__base__/graphics/entity/assembling-machine-2/pipe-north.png",
                height = 40,
                priority = "extra-high",
                shift = { 0.09375, 0.4375 },
                width = 41
              },
              south = {
                filename = "__base__/graphics/entity/assembling-machine-2/pipe-south.png",
                height = 40,
                priority = "extra-high",
                shift = { 0.0625, -1 },
                width = 41
              },
              west = {
                filename = "__base__/graphics/entity/assembling-machine-2/pipe-west.png",
                height = 40,
                priority = "extra-high",
                shift = { 0.78125, 0.03125 },
                width = 41
              }
            },
            production_type = "input"
          }, {
            base_area = 10,
            base_level = 1,
            pipe_connections = { {
                position = { 0, 2 },
                type = "output"
              } },
            pipe_covers = {
              east = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                height = 32,
                priority = "extra-high",
                width = 32
              },
              north = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                height = 32,
                priority = "extra-high",
                width = 44
              },
              south = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                height = 52,
                priority = "extra-high",
                width = 46
              },
              west = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                height = 32,
                priority = "extra-high",
                width = 32
              }
            },
            pipe_picture = {
              east = {
                filename = "__base__/graphics/entity/assembling-machine-2/pipe-east.png",
                height = 40,
                priority = "extra-high",
                shift = { -0.71875, 0 },
                width = 41
              },
              north = {
                filename = "__base__/graphics/entity/assembling-machine-2/pipe-north.png",
                height = 40,
                priority = "extra-high",
                shift = { 0.09375, 0.4375 },
                width = 41
              },
              south = {
                filename = "__base__/graphics/entity/assembling-machine-2/pipe-south.png",
                height = 40,
                priority = "extra-high",
                shift = { 0.0625, -1 },
                width = 41
              },
              west = {
                filename = "__base__/graphics/entity/assembling-machine-2/pipe-west.png",
                height = 40,
                priority = "extra-high",
                shift = { 0.78125, 0.03125 },
                width = 41
              }
            },
            production_type = "output"
          },
          off_when_no_fluid_recipe = true
        },
        icon = "__base__/graphics/icons/assembling-machine-2.png",
        ingredient_count = 4,
        max_health = 250,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "assembling-machine-2"
        },
        module_slots = 2,
        name = "assembling-machine-2",
        open_sound = {
          filename = "__base__/sound/machine-open.ogg",
          volume = 0.85
        },
        resistances = { {
            percent = 70,
            type = "fire"
          } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        type = "assembling-machine",
        working_sound = {
          apparent_volume = 1.5,
          idle_sound = {
            filename = "__base__/sound/idle1.ogg",
            volume = 0.6
          },
          sound = { {
              filename = "__base__/sound/assembling-machine-t2-1.ogg",
              volume = 0.8
            }, {
              filename = "__base__/sound/assembling-machine-t2-2.ogg",
              volume = 0.8
            } }
        }
      },
      ["assembling-machine-3"] = {
        allowed_effects = { "consumption", "speed", "productivity", "pollution" },
        animation = {
          filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3.png",
          frame_count = 32,
          height = 113,
          line_length = 8,
          priority = "high",
          shift = { 0.84, -0.09 },
          width = 142
        },
        close_sound = {
          filename = "__base__/sound/machine-close.ogg",
          volume = 0.75
        },
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        corpse = "big-remnants",
        crafting_categories = { "crafting", "advanced-crafting", "crafting-with-fluid" },
        crafting_speed = 1.25,
        dying_explosion = "huge-explosion",
        energy_source = {
          emissions = 0.0085714285714286,
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = "210kW",
        fast_replaceable_group = "assembling-machine",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        fluid_boxes = { {
            base_area = 10,
            base_level = -1,
            pipe_connections = { {
                position = { 0, -2 },
                type = "input"
              } },
            pipe_covers = {
              east = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                height = 32,
                priority = "extra-high",
                width = 32
              },
              north = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                height = 32,
                priority = "extra-high",
                width = 44
              },
              south = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                height = 52,
                priority = "extra-high",
                width = 46
              },
              west = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                height = 32,
                priority = "extra-high",
                width = 32
              }
            },
            pipe_picture = {
              east = {
                filename = "__base__/graphics/entity/assembling-machine-3/pipe-east.png",
                height = 45,
                priority = "extra-high",
                shift = { -0.78125, 0.15625 },
                width = 40
              },
              north = {
                filename = "__base__/graphics/entity/assembling-machine-3/pipe-north.png",
                height = 45,
                priority = "extra-high",
                shift = { 0.03125, 0.3125 },
                width = 40
              },
              south = {
                filename = "__base__/graphics/entity/assembling-machine-3/pipe-south.png",
                height = 45,
                priority = "extra-high",
                shift = { 0.03125, -1.0625 },
                width = 40
              },
              west = {
                filename = "__base__/graphics/entity/assembling-machine-3/pipe-west.png",
                height = 45,
                priority = "extra-high",
                shift = { 0.8125, 0 },
                width = 40
              }
            },
            production_type = "input"
          }, {
            base_area = 10,
            base_level = 1,
            pipe_connections = { {
                position = { 0, 2 },
                type = "output"
              } },
            pipe_covers = {
              east = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                height = 32,
                priority = "extra-high",
                width = 32
              },
              north = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                height = 32,
                priority = "extra-high",
                width = 44
              },
              south = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                height = 52,
                priority = "extra-high",
                width = 46
              },
              west = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                height = 32,
                priority = "extra-high",
                width = 32
              }
            },
            pipe_picture = {
              east = {
                filename = "__base__/graphics/entity/assembling-machine-3/pipe-east.png",
                height = 45,
                priority = "extra-high",
                shift = { -0.78125, 0.15625 },
                width = 40
              },
              north = {
                filename = "__base__/graphics/entity/assembling-machine-3/pipe-north.png",
                height = 45,
                priority = "extra-high",
                shift = { 0.03125, 0.3125 },
                width = 40
              },
              south = {
                filename = "__base__/graphics/entity/assembling-machine-3/pipe-south.png",
                height = 45,
                priority = "extra-high",
                shift = { 0.03125, -1.0625 },
                width = 40
              },
              west = {
                filename = "__base__/graphics/entity/assembling-machine-3/pipe-west.png",
                height = 45,
                priority = "extra-high",
                shift = { 0.8125, 0 },
                width = 40
              }
            },
            production_type = "output"
          },
          off_when_no_fluid_recipe = true
        },
        icon = "__base__/graphics/icons/assembling-machine-3.png",
        ingredient_count = 6,
        max_health = 300,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "assembling-machine-3"
        },
        module_slots = 4,
        name = "assembling-machine-3",
        open_sound = {
          filename = "__base__/sound/machine-open.ogg",
          volume = 0.85
        },
        resistances = { {
            percent = 70,
            type = "fire"
          } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        type = "assembling-machine",
        working_sound = {
          apparent_volume = 1.5,
          idle_sound = {
            filename = "__base__/sound/idle1.ogg",
            volume = 0.6
          },
          sound = { {
              filename = "__base__/sound/assembling-machine-t3-1.ogg",
              volume = 0.8
            }, {
              filename = "__base__/sound/assembling-machine-t3-2.ogg",
              volume = 0.8
            } }
        }
      },
      ["chemical-plant"] = {
        allowed_effects = { "consumption", "speed", "productivity", "pollution" },
        animation = {
          east = {
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant.png",
            frame_count = 1,
            height = 141,
            shift = { 0.5, -0.078125 },
            width = 156,
            x = 468
          },
          north = {
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant.png",
            frame_count = 1,
            height = 141,
            shift = { 0.5, -0.078125 },
            width = 156
          },
          south = {
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant.png",
            frame_count = 1,
            height = 141,
            shift = { 0.5, -0.078125 },
            width = 156,
            x = 312
          },
          west = {
            filename = "__base__/graphics/entity/chemical-plant/chemical-plant.png",
            frame_count = 1,
            height = 141,
            shift = { 0.5, -0.078125 },
            width = 156,
            x = 156
          }
        },
        collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
        corpse = "big-remnants",
        crafting_categories = { "chemistry" },
        crafting_speed = 1.25,
        dying_explosion = "huge-explosion",
        energy_source = {
          emissions = 0.0085714285714286,
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = "210kW",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        fluid_boxes = { {
            base_area = 10,
            base_level = -1,
            pipe_connections = { {
                position = { -1, -2 },
                type = "input"
              } },
            pipe_covers = {
              east = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                height = 32,
                priority = "extra-high",
                width = 32
              },
              north = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                height = 32,
                priority = "extra-high",
                width = 44
              },
              south = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                height = 52,
                priority = "extra-high",
                width = 46
              },
              west = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                height = 32,
                priority = "extra-high",
                width = 32
              }
            },
            production_type = "input"
          }, {
            base_area = 10,
            base_level = -1,
            pipe_connections = { {
                position = { 1, -2 },
                type = "input"
              } },
            pipe_covers = {
              east = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                height = 32,
                priority = "extra-high",
                width = 32
              },
              north = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                height = 32,
                priority = "extra-high",
                width = 44
              },
              south = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                height = 52,
                priority = "extra-high",
                width = 46
              },
              west = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                height = 32,
                priority = "extra-high",
                width = 32
              }
            },
            production_type = "input"
          }, {
            base_level = 1,
            pipe_connections = { {
                position = { -1, 2 }
              } },
            pipe_covers = {
              east = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                height = 32,
                priority = "extra-high",
                width = 32
              },
              north = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                height = 32,
                priority = "extra-high",
                width = 44
              },
              south = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                height = 52,
                priority = "extra-high",
                width = 46
              },
              west = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                height = 32,
                priority = "extra-high",
                width = 32
              }
            },
            production_type = "output"
          }, {
            base_level = 1,
            pipe_connections = { {
                position = { 1, 2 }
              } },
            pipe_covers = {
              east = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                height = 32,
                priority = "extra-high",
                width = 32
              },
              north = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                height = 32,
                priority = "extra-high",
                width = 44
              },
              south = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                height = 52,
                priority = "extra-high",
                width = 46
              },
              west = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                height = 32,
                priority = "extra-high",
                width = 32
              }
            },
            production_type = "output"
          } },
        icon = "__base__/graphics/icons/chemical-plant.png",
        ingredient_count = 4,
        max_health = 300,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "chemical-plant"
        },
        module_slots = 2,
        name = "chemical-plant",
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        type = "assembling-machine",
        working_sound = {
          apparent_volume = 1.5,
          idle_sound = {
            filename = "__base__/sound/idle1.ogg",
            volume = 0.6
          },
          sound = { {
              filename = "__base__/sound/chemical-plant.ogg",
              volume = 0.8
            } }
        },
        working_visualisations = { {
            animation = {
              animation_speed = 0.15,
              filename = "__base__/graphics/entity/chemical-plant/boiling-green-patch.png",
              frame_count = 35,
              height = 12,
              width = 17
            },
            east_position = { 0.05, -1.46 },
            north_position = { 0.94, -0.73 },
            south_position = { -0.97, -1.47 },
            west_position = { -0.3, 0.02 }
          }, {
            east_position = { 0.05, -0.96 },
            north_animation = {
              filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
              frame_count = 1,
              height = 10,
              width = 21
            },
            north_position = { 1.4, -0.23 },
            south_animation = {
              filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
              frame_count = 1,
              height = 10,
              width = 21,
              x = 42
            },
            south_position = { -1, -1 },
            west_animation = {
              filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
              frame_count = 1,
              height = 10,
              width = 21,
              x = 21
            },
            west_position = { -0.3, 0.55 }
          } }
      },
      ["oil-refinery"] = {
        allowed_effects = { "consumption", "speed", "productivity", "pollution" },
        animation = {
          east = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
            frame_count = 1,
            height = 255,
            shift = { 2.515625, 0.484375 },
            width = 337,
            x = 337
          },
          north = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
            frame_count = 1,
            height = 255,
            shift = { 2.515625, 0.484375 },
            width = 337
          },
          south = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
            frame_count = 1,
            height = 255,
            shift = { 2.515625, 0.484375 },
            width = 337,
            x = 674
          },
          west = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
            frame_count = 1,
            height = 255,
            shift = { 2.515625, 0.484375 },
            width = 337,
            x = 1011
          }
        },
        collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
        corpse = "big-remnants",
        crafting_categories = { "oil-processing" },
        crafting_speed = 1,
        dying_explosion = "huge-explosion",
        energy_source = {
          emissions = 0.0085714285714286,
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = "420kW",
        flags = { "placeable-neutral", "player-creation" },
        fluid_boxes = { {
            base_area = 10,
            base_level = -1,
            pipe_connections = { {
                position = { -1, 3 },
                type = "input"
              } },
            pipe_covers = {
              east = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                height = 32,
                priority = "extra-high",
                width = 32
              },
              north = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                height = 32,
                priority = "extra-high",
                width = 44
              },
              south = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                height = 52,
                priority = "extra-high",
                width = 46
              },
              west = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                height = 32,
                priority = "extra-high",
                width = 32
              }
            },
            production_type = "input"
          }, {
            base_area = 10,
            base_level = -1,
            pipe_connections = { {
                position = { 1, 3 },
                type = "input"
              } },
            pipe_covers = {
              east = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                height = 32,
                priority = "extra-high",
                width = 32
              },
              north = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                height = 32,
                priority = "extra-high",
                width = 44
              },
              south = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                height = 52,
                priority = "extra-high",
                width = 46
              },
              west = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                height = 32,
                priority = "extra-high",
                width = 32
              }
            },
            production_type = "input"
          }, {
            base_level = 1,
            pipe_connections = { {
                position = { -2, -3 }
              } },
            pipe_covers = {
              east = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                height = 32,
                priority = "extra-high",
                width = 32
              },
              north = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                height = 32,
                priority = "extra-high",
                width = 44
              },
              south = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                height = 52,
                priority = "extra-high",
                width = 46
              },
              west = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                height = 32,
                priority = "extra-high",
                width = 32
              }
            },
            production_type = "output"
          }, {
            base_level = 1,
            pipe_connections = { {
                position = { 0, -3 }
              } },
            pipe_covers = {
              east = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                height = 32,
                priority = "extra-high",
                width = 32
              },
              north = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                height = 32,
                priority = "extra-high",
                width = 44
              },
              south = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                height = 52,
                priority = "extra-high",
                width = 46
              },
              west = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                height = 32,
                priority = "extra-high",
                width = 32
              }
            },
            production_type = "output"
          }, {
            base_level = 1,
            pipe_connections = { {
                position = { 2, -3 }
              } },
            pipe_covers = {
              east = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                height = 32,
                priority = "extra-high",
                width = 32
              },
              north = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                height = 32,
                priority = "extra-high",
                width = 44
              },
              south = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                height = 52,
                priority = "extra-high",
                width = 46
              },
              west = {
                filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                height = 32,
                priority = "extra-high",
                width = 32
              }
            },
            production_type = "output"
          } },
        has_backer_name = true,
        icon = "__base__/graphics/icons/oil-refinery.png",
        ingredient_count = 4,
        max_health = 300,
        minable = {
          mining_time = 1,
          result = "oil-refinery"
        },
        module_slots = 2,
        name = "oil-refinery",
        pipe_covers = {
          east = {
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
            height = 32,
            priority = "extra-high",
            width = 32
          },
          north = {
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
            height = 32,
            priority = "extra-high",
            width = 44
          },
          south = {
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
            height = 52,
            priority = "extra-high",
            width = 46
          },
          west = {
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
            height = 32,
            priority = "extra-high",
            width = 32
          }
        },
        selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
        type = "assembling-machine",
        working_sound = {
          apparent_volume = 2.5,
          idle_sound = {
            filename = "__base__/sound/idle1.ogg",
            volume = 0.6
          },
          sound = {
            filename = "__base__/sound/oil-refinery.ogg"
          }
        },
        working_visualisations = { {
            animation = {
              filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
              frame_count = 29,
              height = 35,
              run_mode = "backward",
              scale = 1.5,
              shift = { 0, -0.5625 },
              width = 16
            },
            east_position = { -1.65625, -1.3 },
            light = {
              intensity = 0.4,
              size = 6
            },
            north_position = { 1.03125, -1.55 },
            south_position = { -1.875, -2 },
            west_position = { 1.8437, -1.2 }
          } }
      }
    },
    ["autoplace-control"] = {
      coal = {
        name = "coal",
        order = "b-d",
        richness = true,
        type = "autoplace-control"
      },
      ["copper-ore"] = {
        name = "copper-ore",
        order = "b-b",
        richness = true,
        type = "autoplace-control"
      },
      ["crude-oil"] = {
        name = "crude-oil",
        order = "b-e",
        richness = true,
        type = "autoplace-control"
      },
      ["enemy-base"] = {
        name = "enemy-base",
        order = "d-a",
        richness = true,
        type = "autoplace-control"
      },
      ["iron-ore"] = {
        name = "iron-ore",
        order = "b-a",
        richness = true,
        type = "autoplace-control"
      },
      stone = {
        name = "stone",
        order = "b-c",
        richness = true,
        type = "autoplace-control"
      }
    },
    ["battery-equipment"] = {
      ["battery-equipment"] = {
        energy_source = {
          buffer_capacity = "1KJ",
          input_flow_limit = "10KW",
          output_flow_limit = "10KW",
          type = "electric",
          usage_priority = "terciary"
        },
        name = "battery-equipment",
        shape = {
          height = 2,
          type = "full",
          width = 1
        },
        sprite = {
          filename = "__base__/graphics/equipment/battery-equipment.png",
          height = 64,
          priority = "medium",
          width = 32
        },
        type = "battery-equipment"
      },
      ["battery-mk2-equipment"] = {
        energy_source = {
          buffer_capacity = "5KJ",
          input_flow_limit = "50KW",
          output_flow_limit = "50KW",
          type = "electric",
          usage_priority = "terciary"
        },
        name = "battery-mk2-equipment",
        shape = {
          height = 2,
          type = "full",
          width = 1
        },
        sprite = {
          filename = "__base__/graphics/equipment/battery-mk2-equipment.png",
          height = 64,
          priority = "medium",
          width = 32
        },
        type = "battery-equipment"
      }
    },
    beacon = {
      ["basic-beacon"] = {
        allowed_effects = { "consumption", "speed", "pollution" },
        animation = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/basic-beacon/basic-beacon-antenna.png",
          frame_count = 32,
          height = 50,
          line_length = 8,
          shift = { -0.03, -1.72 },
          width = 54
        },
        animation_shadow = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/basic-beacon/basic-beacon-antenna-shadow.png",
          frame_count = 32,
          height = 49,
          line_length = 8,
          shift = { 3.12, 0.5 },
          width = 63
        },
        base_picture = {
          filename = "__base__/graphics/entity/basic-beacon/basic-beacon-base.png",
          height = 93,
          shift = { 0.34, 0.06 },
          width = 116
        },
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        corpse = "big-remnants",
        distribution_effectivity = 0.5,
        dying_explosion = "huge-explosion",
        energy_source = {
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = "480kW",
        flags = { "placeable-player", "player-creation" },
        icon = "__base__/graphics/icons/basic-beacon.png",
        max_health = 200,
        minable = {
          mining_time = 1,
          result = "basic-beacon"
        },
        name = "basic-beacon",
        num_module_slots = 2,
        radius_visualisation_picture = {
          filename = "__base__/graphics/entity/basic-beacon/beacon-radius-visualization.png",
          height = 12,
          width = 12
        },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        supply_area_distance = 3,
        type = "beacon"
      }
    },
    blueprint = {
      blueprint = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/blueprint.png",
        item_to_clear = "electronic-circuit",
        name = "blueprint",
        order = "c[automated-construction]-a[blueprint]",
        stack_size = 1,
        subgroup = "tool",
        type = "blueprint"
      }
    },
    boiler = {
      boiler = {
        burner = {
          effectivity = 0.5,
          emissions = 0.015384615384615,
          fuel_inventory_size = 1,
          smoke = { {
              deviation = { 0.1, 0.1 },
              frequency = 1,
              name = "smoke"
            } }
        },
        burning_cooldown = 20,
        collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
        corpse = "small-remnants",
        energy_consumption = "390kW",
        fast_replaceable_group = "pipe",
        fire = {
          down = <1>{
            filename = "__base__/graphics/entity/boiler/boiler-fire-left.png",
            frame_count = 14,
            height = 7,
            priority = "extra-high",
            shift = { -0.4375, -0.09375 },
            width = 5
          },
          left = <2>{
            filename = "__base__/graphics/entity/boiler/boiler-fire-down.png",
            frame_count = 32,
            height = 11,
            line_length = 8,
            priority = "extra-high",
            shift = { 0.03125, 0.28125 },
            width = 11
          },
          left_down = {
            filename = "__base__/graphics/entity/boiler/boiler-fire-right.png",
            frame_count = 14,
            height = 9,
            priority = "extra-high",
            shift = { 0.46875, -0.0625 },
            width = 6
          },
          left_up = <table 2>,
          right_down = <table 1>,
          right_up = <table 2>,
          t_up = <table 2>
        },
        flags = { "placeable-neutral", "player-creation" },
        fluid_box = {
          base_area = 1,
          pipe_connections = { {
              position = { 0, -1 }
            }, {
              position = { 1, 0 }
            }, {
              position = { 0, 1 }
            }, {
              position = { -1, 0 }
            } },
          pipe_covers = {
            east = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
              height = 32,
              priority = "extra-high",
              width = 32
            },
            north = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
              height = 32,
              priority = "extra-high",
              width = 44
            },
            south = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
              height = 52,
              priority = "extra-high",
              width = 46
            },
            west = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
              height = 32,
              priority = "extra-high",
              width = 32
            }
          }
        },
        icon = "__base__/graphics/icons/boiler.png",
        max_health = 100,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "boiler"
        },
        name = "boiler",
        pictures = {
          corner_down_left = {
            filename = "__base__/graphics/entity/pipe/pipe-corner-down-left.png",
            height = 32,
            priority = "extra-high",
            width = 36
          },
          corner_down_right = {
            filename = "__base__/graphics/entity/pipe/pipe-corner-down-right.png",
            height = 32,
            priority = "extra-high",
            width = 32
          },
          corner_up_left = {
            filename = "__base__/graphics/entity/pipe/pipe-corner-up-left.png",
            height = 44,
            priority = "extra-high",
            width = 44
          },
          corner_up_right = {
            filename = "__base__/graphics/entity/pipe/pipe-corner-up-right.png",
            height = 40,
            priority = "extra-high",
            width = 32
          },
          cross = {
            filename = "__base__/graphics/entity/pipe/pipe-cross.png",
            height = 40,
            priority = "extra-high",
            width = 40
          },
          ending_down = {
            filename = "__base__/graphics/entity/pipe/pipe-ending-down.png",
            height = 32,
            priority = "extra-high",
            width = 44
          },
          ending_left = {
            filename = "__base__/graphics/entity/pipe/pipe-ending-left.png",
            height = 44,
            priority = "extra-high",
            width = 58
          },
          ending_right = {
            filename = "__base__/graphics/entity/pipe/pipe-ending-right.png",
            height = 44,
            priority = "extra-high",
            width = 32
          },
          ending_up = {
            filename = "__base__/graphics/entity/pipe/pipe-ending-up.png",
            height = 42,
            priority = "extra-high",
            width = 44
          },
          fluid_background = {
            filename = "__base__/graphics/entity/pipe/fluid-background.png",
            height = 20,
            priority = "extra-high",
            width = 32
          },
          high_temperature_flow = {
            filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
            height = 18,
            priority = "extra-high",
            width = 160
          },
          horizontal_window_background = {
            filename = "__base__/graphics/entity/pipe/pipe-horizontal-window-background.png",
            height = 42,
            priority = "extra-high",
            width = 32
          },
          low_temperature_flow = {
            filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
            height = 18,
            priority = "extra-high",
            width = 160
          },
          middle_temperature_flow = {
            filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
            height = 18,
            priority = "extra-high",
            width = 160
          },
          straight_horizontal = {
            filename = "__base__/graphics/entity/pipe/pipe-straight-horizontal.png",
            height = 42,
            priority = "extra-high",
            width = 32
          },
          straight_horizontal_window = {
            filename = "__base__/graphics/entity/pipe/pipe-straight-horizontal-window.png",
            height = 42,
            priority = "extra-high",
            width = 32
          },
          straight_vertical = {
            filename = "__base__/graphics/entity/pipe/pipe-straight-vertical.png",
            height = 42,
            priority = "extra-high",
            width = 44
          },
          straight_vertical_single = {
            filename = "__base__/graphics/entity/pipe/pipe-straight-vertical-single.png",
            height = 58,
            priority = "extra-high",
            width = 44
          },
          straight_vertical_window = {
            filename = "__base__/graphics/entity/pipe/pipe-straight-vertical-window.png",
            height = 32,
            priority = "extra-high",
            width = 44
          },
          t_down = {
            filename = "__base__/graphics/entity/pipe/pipe-t-down.png",
            height = 44,
            priority = "extra-high",
            width = 40
          },
          t_left = {
            filename = "__base__/graphics/entity/pipe/pipe-t-left.png",
            height = 42,
            priority = "extra-high",
            width = 44
          },
          t_right = {
            filename = "__base__/graphics/entity/pipe/pipe-t-right.png",
            height = 32,
            priority = "extra-high",
            width = 40
          },
          t_up = {
            filename = "__base__/graphics/entity/pipe/pipe-t-up.png",
            height = 42,
            priority = "extra-high",
            width = 32
          },
          vertical_window_background = {
            filename = "__base__/graphics/entity/pipe/pipe-vertical-window-background.png",
            height = 32,
            priority = "extra-high",
            width = 44
          }
        },
        resistances = { {
            percent = 80,
            type = "fire"
          } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        structure = {
          down = {
            filename = "__base__/graphics/entity/boiler/boiler-down.png",
            height = 72,
            priority = "extra-high",
            width = 66
          },
          left = {
            filename = "__base__/graphics/entity/boiler/boiler-left.png",
            height = 46,
            priority = "extra-high",
            shift = { 0.03125, 0 },
            width = 46
          },
          left_down = {
            filename = "__base__/graphics/entity/boiler/boiler-left-down.png",
            height = 50,
            priority = "extra-high",
            width = 60
          },
          left_up = {
            filename = "__base__/graphics/entity/boiler/boiler-left-up.png",
            height = 74,
            priority = "extra-high",
            width = 66
          },
          right_down = {
            filename = "__base__/graphics/entity/boiler/boiler-right-down.png",
            height = 50,
            priority = "extra-high",
            width = 44
          },
          right_up = {
            filename = "__base__/graphics/entity/boiler/boiler-right-up.png",
            height = 72,
            priority = "extra-high",
            width = 46
          },
          t_down = {
            filename = "__base__/graphics/entity/boiler/boiler-t-down.png",
            height = 50,
            priority = "extra-high",
            width = 44
          },
          t_up = {
            filename = "__base__/graphics/entity/boiler/boiler-t-up.png",
            height = 70,
            priority = "extra-high",
            width = 46
          }
        },
        type = "boiler",
        working_sound = {
          max_sounds_per_type = 3,
          sound = {
            filename = "__base__/sound/boiler.ogg",
            volume = 0.8
          }
        }
      }
    },
    capsule = {
      ["basic-electric-discharge-defense-remote"] = {
        capsule_action = {
          equipment = "basic-electric-discharge-defense-equipment",
          type = "equipment-remote"
        },
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/equipment/basic-electric-discharge-defense-equipment-ability.png",
        name = "basic-electric-discharge-defense-remote",
        order = "z",
        stack_size = 1,
        subgroup = "capsule",
        type = "capsule"
      },
      ["basic-grenade"] = {
        capsule_action = {
          attack_parameters = {
            ammo_category = "capsule",
            ammo_type = {
              action = {
                action_delivery = {
                  projectile = "basic-grenade",
                  starting_speed = 0.3,
                  type = "projectile"
                },
                type = "direct"
              },
              category = "capsule",
              target_type = "position"
            },
            cooldown = 30,
            projectile_creation_distance = 0.6,
            range = 15
          },
          type = "throw"
        },
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/basic-grenade.png",
        name = "basic-grenade",
        order = "a[basic-grenade]",
        stack_size = 100,
        subgroup = "capsule",
        type = "capsule"
      },
      ["defender-capsule"] = {
        capsule_action = {
          attack_parameters = {
            ammo_category = "capsule",
            ammo_type = {
              action = {
                action_delivery = {
                  projectile = "defender-capsule",
                  starting_speed = 0.3,
                  type = "projectile"
                },
                type = "direct"
              },
              category = "capsule",
              target_type = "position"
            },
            cooldown = 15,
            projectile_creation_distance = 0.6,
            range = 20
          },
          type = "throw"
        },
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/defender-capsule.png",
        name = "defender-capsule",
        order = "d[defender-capsule]",
        stack_size = 100,
        subgroup = "capsule",
        type = "capsule"
      },
      ["destroyer-capsule"] = {
        capsule_action = {
          attack_parameters = {
            ammo_category = "capsule",
            ammo_type = {
              action = {
                action_delivery = {
                  projectile = "destroyer-capsule",
                  starting_speed = 0.3,
                  type = "projectile"
                },
                type = "direct"
              },
              category = "capsule",
              target_type = "position"
            },
            cooldown = 30,
            projectile_creation_distance = 0.6,
            range = 25
          },
          type = "throw"
        },
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/destroyer-capsule.png",
        name = "destroyer-capsule",
        order = "f[destroyer-capsule]",
        stack_size = 100,
        subgroup = "capsule",
        type = "capsule"
      },
      ["distractor-capsule"] = {
        capsule_action = {
          attack_parameters = {
            ammo_category = "capsule",
            ammo_type = {
              action = {
                action_delivery = {
                  projectile = "distractor-capsule",
                  starting_speed = 0.3,
                  type = "projectile"
                },
                type = "direct"
              },
              category = "capsule",
              target_type = "position"
            },
            cooldown = 30,
            projectile_creation_distance = 0.6,
            range = 25
          },
          type = "throw"
        },
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/distractor-capsule.png",
        name = "distractor-capsule",
        order = "e[defender-capsule]",
        stack_size = 100,
        subgroup = "capsule",
        type = "capsule"
      },
      ["poison-capsule"] = {
        capsule_action = {
          attack_parameters = {
            ammo_category = "capsule",
            ammo_type = {
              action = {
                action_delivery = {
                  projectile = "poison-capsule",
                  starting_speed = 0.3,
                  type = "projectile"
                },
                type = "direct"
              },
              category = "capsule",
              target_type = "position"
            },
            cooldown = 30,
            projectile_creation_distance = 0.6,
            range = 25
          },
          type = "throw"
        },
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/poison-capsule.png",
        name = "poison-capsule",
        order = "b[poison-capsule]",
        stack_size = 100,
        subgroup = "capsule",
        type = "capsule"
      },
      ["raw-fish"] = {
        capsule_action = {
          attack_parameters = {
            ammo_category = "capsule",
            ammo_type = {
              action = {
                action_delivery = {
                  target_effects = {
                    damage = {
                      amount = -20,
                      type = "physical"
                    },
                    type = "damage"
                  },
                  type = "instant"
                },
                type = "direct"
              },
              category = "capsule",
              target_type = "position"
            },
            cooldown = 30,
            range = 0
          },
          type = "use-on-self"
        },
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/fish.png",
        name = "raw-fish",
        order = "f-e-a",
        stack_size = 100,
        subgroup = "raw-resource",
        type = "capsule"
      },
      ["slowdown-capsule"] = {
        capsule_action = {
          attack_parameters = {
            ammo_category = "capsule",
            ammo_type = {
              action = {
                action_delivery = {
                  projectile = "slowdown-capsule",
                  starting_speed = 0.3,
                  type = "projectile"
                },
                type = "direct"
              },
              category = "capsule",
              target_type = "position"
            },
            cooldown = 30,
            projectile_creation_distance = 0.6,
            range = 25
          },
          type = "throw"
        },
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/slowdown-capsule.png",
        name = "slowdown-capsule",
        order = "c[slowdown-capsule]",
        stack_size = 100,
        subgroup = "capsule",
        type = "capsule"
      }
    },
    car = {
      car = {
        animation = {
          layers = { {
              animation_speed = 8,
              axially_symmetrical = false,
              direction_count = 64,
              frame_count = 2,
              height = 86,
              max_advance = 0.2,
              shift = { 0, -0.1875 },
              stripes = { {
                  filename = "__base__/graphics/entity/car/car-1.png",
                  height_in_frames = 22,
                  width_in_frames = 2
                }, {
                  filename = "__base__/graphics/entity/car/car-2.png",
                  height_in_frames = 22,
                  width_in_frames = 2
                }, {
                  filename = "__base__/graphics/entity/car/car-3.png",
                  height_in_frames = 20,
                  width_in_frames = 2
                } },
              width = 102
            }, {
              apply_runtime_tint = true,
              axially_symmetrical = false,
              direction_count = 64,
              frame_count = 2,
              height = 75,
              line_length = 2,
              max_advance = 0.2,
              shift = { 0, -0.171875 },
              stripes = { <3>{
                  filename = "__base__/graphics/entity/car/car-mask-1.png",
                  height_in_frames = 22,
                  width_in_frames = 1
                }, <table 3>, <4>{
                  filename = "__base__/graphics/entity/car/car-mask-2.png",
                  height_in_frames = 22,
                  width_in_frames = 1
                }, <table 4>, <5>{
                  filename = "__base__/graphics/entity/car/car-mask-3.png",
                  height_in_frames = 20,
                  width_in_frames = 1
                }, <table 5> },
              width = 100
            }, {
              axially_symmetrical = false,
              direction_count = 64,
              draw_as_shadow = true,
              frame_count = 2,
              height = 76,
              max_advance = 0.2,
              shift = { 0.28125, 0.25 },
              stripes = { <6>{
                  filename = "__base__/graphics/entity/car/car-shadow-1.png",
                  height_in_frames = 22,
                  width_in_frames = 1
                }, <table 6>, <7>{
                  filename = "__base__/graphics/entity/car/car-shadow-2.png",
                  height_in_frames = 22,
                  width_in_frames = 1
                }, <table 7>, <8>{
                  filename = "__base__/graphics/entity/car/car-shadow-3.png",
                  height_in_frames = 20,
                  width_in_frames = 1
                }, <table 8> },
              width = 114
            } }
        },
        braking_power = "200kW",
        burner = {
          effectivity = 0.6,
          fuel_inventory_size = 1,
          smoke = { {
              deviation = { 0.25, 0.25 },
              frequency = 50,
              name = "smoke",
              position = { 0, 1.5 },
              slow_down_factor = 0.9,
              starting_frame = 3,
              starting_frame_deviation = 5,
              starting_frame_speed = 0,
              starting_frame_speed_deviation = 5
            } }
        },
        close_sound = {
          filename = "__base__/sound/car-door-close.ogg",
          volume = 0.7
        },
        collision_box = { { -0.7, -1 }, { 0.7, 1 } },
        consumption = "150kW",
        corpse = "medium-remnants",
        crash_damage_multiplier = 0.1,
        crash_trigger = {
          sound = { {
              filename = "__base__/sound/car-crash.ogg",
              volume = 0.8
            } },
          type = "play-sound"
        },
        dying_explosion = "huge-explosion",
        effectivity = 0.5,
        flags = { "pushable", "placeable-neutral", "player-creation", "placeable-off-grid" },
        friction = 0.002,
        guns = { "submachine-gun" },
        icon = "__base__/graphics/icons/car.png",
        inventory_size = 80,
        light = { {
            intensity = 0.6,
            minimum_darkness = 0.3,
            picture = {
              filename = "__core__/graphics/light-cone.png",
              height = 200,
              priority = "medium",
              scale = 2,
              width = 200
            },
            shift = { -0.6, -14 },
            size = 2,
            type = "oriented"
          }, {
            intensity = 0.6,
            minimum_darkness = 0.3,
            picture = {
              filename = "__core__/graphics/light-cone.png",
              height = 200,
              priority = "medium",
              scale = 2,
              width = 200
            },
            shift = { 0.6, -14 },
            size = 2,
            type = "oriented"
          } },
        max_health = 200,
        minable = {
          mining_time = 1,
          result = "car"
        },
        name = "car",
        open_sound = {
          filename = "__base__/sound/car-door-open.ogg",
          volume = 0.7
        },
        resistances = { {
            percent = 50,
            type = "fire"
          }, {
            decrease = 30,
            percent = 30,
            type = "impact"
          } },
        rotation_speed = 0.015,
        selection_box = { { -0.7, -1 }, { 0.7, 1 } },
        sound_minimum_speed = 0.2,
        stop_trigger = { {
            sound = { {
                filename = "__base__/sound/car-breaks.ogg",
                volume = 0.6
              } },
            type = "play-sound"
          } },
        stop_trigger_speed = 0.2,
        turret_animation = {
          layers = { {
              animation_speed = 8,
              axially_symmetrical = false,
              direction_count = 64,
              filename = "__base__/graphics/entity/car/car-turret.png",
              frame_count = 1,
              height = 29,
              line_length = 8,
              shift = { 0.03125, -0.890625 },
              width = 36
            }, {
              axially_symmetrical = false,
              direction_count = 64,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/car/car-turret-shadow.png",
              frame_count = 1,
              height = 31,
              line_length = 8,
              shift = { 0.875, 0.359375 },
              width = 46
            } }
        },
        turret_rotation_speed = 0.0058333333333333,
        type = "car",
        weight = 700,
        working_sound = {
          activate_sound = {
            filename = "__base__/sound/car-engine-start.ogg",
            volume = 0.6
          },
          deactivate_sound = {
            filename = "__base__/sound/car-engine-stop.ogg",
            volume = 0.6
          },
          match_speed_to_activity = true,
          sound = {
            filename = "__base__/sound/car-engine.ogg",
            volume = 0.6
          }
        }
      },
      tank = {
        animation = {
          layers = { {
              animation_speed = 8,
              axially_symmetrical = false,
              direction_count = 64,
              frame_count = 2,
              height = 110,
              max_advance = 1,
              shift = { -0.140625, -0.28125 },
              stripes = { {
                  filename = "__base__/graphics/entity/tank/base-1.png",
                  height_in_frames = 16,
                  width_in_frames = 2
                }, {
                  filename = "__base__/graphics/entity/tank/base-2.png",
                  height_in_frames = 16,
                  width_in_frames = 2
                }, {
                  filename = "__base__/graphics/entity/tank/base-3.png",
                  height_in_frames = 16,
                  width_in_frames = 2
                }, {
                  filename = "__base__/graphics/entity/tank/base-4.png",
                  height_in_frames = 16,
                  width_in_frames = 2
                } },
              width = 139
            }, {
              apply_runtime_tint = true,
              axially_symmetrical = false,
              direction_count = 64,
              frame_count = 2,
              height = 88,
              line_length = 2,
              max_advance = 1,
              shift = { -0.140625, -0.65625 },
              stripes = { <9>{
                  filename = "__base__/graphics/entity/tank/base-mask-1.png",
                  height_in_frames = 22,
                  width_in_frames = 1
                }, <table 9>, <10>{
                  filename = "__base__/graphics/entity/tank/base-mask-2.png",
                  height_in_frames = 22,
                  width_in_frames = 1
                }, <table 10>, <11>{
                  filename = "__base__/graphics/entity/tank/base-mask-3.png",
                  height_in_frames = 20,
                  width_in_frames = 1
                }, <table 11> },
              width = 109
            }, {
              axially_symmetrical = false,
              direction_count = 64,
              draw_as_shadow = true,
              frame_count = 2,
              height = 99,
              max_advance = 1,
              shift = { 0.59375, 0.328125 },
              stripes = { <12>{
                  filename = "__base__/graphics/entity/tank/base-shadow-1.png",
                  height_in_frames = 16,
                  width_in_frames = 1
                }, <table 12>, <13>{
                  filename = "__base__/graphics/entity/tank/base-shadow-2.png",
                  height_in_frames = 16,
                  width_in_frames = 1
                }, <table 13>, <14>{
                  filename = "__base__/graphics/entity/tank/base-shadow-3.png",
                  height_in_frames = 16,
                  width_in_frames = 1
                }, <table 14>, <15>{
                  filename = "__base__/graphics/entity/tank/base-shadow-4.png",
                  height_in_frames = 16,
                  width_in_frames = 1
                }, <table 15> },
              width = 154
            } }
        },
        braking_power = "300kW",
        burner = {
          effectivity = 0.65,
          fuel_inventory_size = 2,
          smoke = { {
              deviation = { 0.25, 0.25 },
              frequency = 50,
              name = "smoke",
              position = { 0, 1.5 },
              slow_down_factor = 0.9,
              starting_frame = 3,
              starting_frame_deviation = 5,
              starting_frame_speed = 0,
              starting_frame_speed_deviation = 5
            } }
        },
        close_sound = {
          filename = "__base__/sound/car-door-close.ogg",
          volume = 0.7
        },
        collision_box = { { -0.9, -1.3 }, { 0.9, 1.3 } },
        consumption = "600kW",
        corpse = "medium-remnants",
        crash_trigger = {
          sound = { {
              filename = "__base__/sound/car-crash.ogg",
              volume = 0.8
            } },
          type = "play-sound"
        },
        dying_explosion = "huge-explosion",
        effectivity = 0.5,
        flags = { "pushable", "placeable-neutral", "player-creation" },
        friction = 0.002,
        guns = { "tank-cannon", "submachine-gun" },
        icon = "__base__/graphics/icons/tank.png",
        inventory_size = 80,
        light = { {
            intensity = 0.6,
            minimum_darkness = 0.3,
            picture = {
              filename = "__core__/graphics/light-cone.png",
              height = 200,
              priority = "medium",
              scale = 2,
              width = 200
            },
            shift = { -0.6, -14 },
            size = 2,
            type = "oriented"
          }, {
            intensity = 0.6,
            minimum_darkness = 0.3,
            picture = {
              filename = "__core__/graphics/light-cone.png",
              height = 200,
              priority = "medium",
              scale = 2,
              width = 200
            },
            shift = { 0.6, -14 },
            size = 2,
            type = "oriented"
          } },
        max_health = 1000,
        minable = {
          mining_time = 1,
          result = "tank"
        },
        name = "tank",
        open_sound = {
          filename = "__base__/sound/car-door-open.ogg",
          volume = 0.7
        },
        resistances = { {
            decrease = 15,
            percent = 50,
            type = "fire"
          }, {
            decrease = 15,
            percent = 30,
            type = "physical"
          }, {
            decrease = 50,
            percent = 60,
            type = "impact"
          }, {
            decrease = 15,
            percent = 30,
            type = "explosion"
          }, {
            decrease = 10,
            percent = 20,
            type = "acid"
          } },
        rotation_speed = 0.0035,
        selection_box = { { -0.9, -1.3 }, { 0.9, 1.3 } },
        sound_minimum_speed = 0.15,
        stop_trigger = { {
            sound = { {
                filename = "__base__/sound/car-breaks.ogg",
                volume = 0.6
              } },
            type = "play-sound"
          } },
        stop_trigger_speed = 0.2,
        tank_driving = true,
        turret_animation = {
          layers = { {
              animation_speed = 8,
              axially_symmetrical = false,
              direction_count = 64,
              filename = "__base__/graphics/entity/tank/turret.png",
              frame_count = 1,
              height = 69,
              line_length = 8,
              shift = { -0.15625, -1.07812 },
              width = 92
            }, {
              apply_runtime_tint = true,
              axially_symmetrical = false,
              direction_count = 64,
              filename = "__base__/graphics/entity/tank/turret-mask.png",
              frame_count = 1,
              height = 29,
              line_length = 8,
              shift = { -0.15625, -1.23438 },
              width = 38
            }, {
              axially_symmetrical = false,
              direction_count = 64,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/tank/turret-shadow.png",
              frame_count = 1,
              height = 67,
              line_length = 8,
              shift = { 1.70312, 0.640625 },
              width = 95
            } }
        },
        turret_rotation_speed = 0.0058333333333333,
        type = "car",
        weight = 20000,
        working_sound = {
          activate_sound = {
            filename = "__base__/sound/car-engine-start.ogg",
            volume = 0.6
          },
          deactivate_sound = {
            filename = "__base__/sound/car-engine-stop.ogg",
            volume = 0.6
          },
          match_speed_to_activity = true,
          sound = {
            filename = "__base__/sound/car-engine.ogg",
            volume = 0.6
          }
        }
      }
    },
    ["cargo-wagon"] = {
      ["cargo-wagon"] = {
        air_resistance = 0.002,
        back_light = { {
            color = {
              r = 1
            },
            intensity = 0.6,
            minimum_darkness = 0.3,
            shift = { -0.6, 3.5 },
            size = 2
          }, {
            color = {
              r = 1
            },
            intensity = 0.6,
            minimum_darkness = 0.3,
            shift = { 0.6, 3.5 },
            size = 2
          } },
        braking_force = 3,
        close_sound = {
          filename = "__base__/sound/machine-close.ogg",
          volume = 0.75
        },
        collision_box = { { -0.6, -2.4 }, { 0.6, 2.4 } },
        connection_distance = 3.3,
        corpse = "medium-remnants",
        crash_trigger = {
          sound = { {
              filename = "__base__/sound/car-crash.ogg",
              volume = 0.8
            } },
          type = "play-sound"
        },
        drive_over_tie_trigger = {
          sound = { {
              filename = "__base__/sound/train-tie-1.ogg",
              volume = 0.6
            }, {
              filename = "__base__/sound/train-tie-2.ogg",
              volume = 0.6
            }, {
              filename = "__base__/sound/train-tie-3.ogg",
              volume = 0.6
            }, {
              filename = "__base__/sound/train-tie-4.ogg",
              volume = 0.6
            } },
          type = "play-sound"
        },
        dying_explosion = "huge-explosion",
        energy_per_hit_point = 5,
        flags = { "placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map" },
        friction_force = 0.0015,
        icon = "__base__/graphics/icons/cargo-wagon.png",
        inventory_size = 20,
        joint_distance = 4,
        max_health = 600,
        max_speed = 1.5,
        minable = {
          mining_time = 1,
          result = "cargo-wagon"
        },
        name = "cargo-wagon",
        open_sound = {
          filename = "__base__/sound/machine-open.ogg",
          volume = 0.85
        },
        pictures = {
          axially_symmetrical = false,
          back_equals_front = true,
          direction_count = 128,
          filenames = { "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-1.png", "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-2.png", "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-3.png", "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-4.png" },
          height = 218,
          line_length = 4,
          lines_per_file = 8,
          priority = "very-low",
          shift = { 0.7, -0.45 },
          width = 285
        },
        rail_category = "regular",
        resistances = { {
            decrease = 15,
            percent = 50,
            type = "fire"
          }, {
            decrease = 15,
            percent = 30,
            type = "physical"
          }, {
            decrease = 50,
            percent = 60,
            type = "impact"
          }, {
            decrease = 15,
            percent = 30,
            type = "explosion"
          }, {
            decrease = 10,
            percent = 20,
            type = "acid"
          } },
        selection_box = { { -0.7, -2.5 }, { 1, 2.5 } },
        sound_minimum_speed = 0.5,
        stand_by_light = { {
            color = {
              b = 1
            },
            intensity = 0.5,
            minimum_darkness = 0.3,
            shift = { -0.6, -3.5 },
            size = 2
          }, {
            color = {
              b = 1
            },
            intensity = 0.5,
            minimum_darkness = 0.3,
            shift = { 0.6, -3.5 },
            size = 2
          } },
        tie_distance = 50,
        type = "cargo-wagon",
        weight = 1000,
        working_sound = {
          match_volume_to_activity = true,
          sound = {
            filename = "__base__/sound/train-wheels.ogg",
            volume = 0.5
          }
        }
      }
    },
    ["combat-robot"] = {
      defender = {
        attack_parameters = {
          ammo_category = "bullet",
          ammo_type = {
            action = {
              action_delivery = {
                source_effects = {
                  entity_name = "explosion-gunshot",
                  type = "create-entity"
                },
                target_effects = { {
                    entity_name = "explosion-gunshot",
                    type = "create-entity"
                  }, {
                    damage = {
                      amount = 5,
                      type = "physical"
                    },
                    type = "damage"
                  } },
                type = "instant"
              },
              type = "direct"
            },
            category = "bullet"
          },
          cooldown = 20,
          projectile_center = { 0, 0 },
          projectile_creation_distance = 0.6,
          range = 15,
          sound = { {
              filename = "__base__/sound/gunshot.ogg",
              volume = 0.3
            } }
        },
        collision_box = { { 0, 0 }, { 0, 0 } },
        destroy_action = {
          action_delivery = {
            source_effects = {
              entity_name = "explosion",
              type = "create-entity"
            },
            type = "instant"
          },
          type = "direct"
        },
        distance_per_frame = 0.13,
        flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
        follows_player = true,
        friction = 0.01,
        icon = "__base__/graphics/icons/defender.png",
        max_health = 60,
        name = "defender",
        order = "e-a-a",
        picture = {
          filename = "__base__/graphics/entity/combat-robot/defender.png",
          height = 34,
          priority = "high",
          width = 37
        },
        range_from_player = 6,
        selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
        shadow = {
          filename = "__base__/graphics/entity/combat-robot/combat-robot-shadow.png",
          height = 37,
          priority = "high",
          width = 52
        },
        speed = 0.01,
        subgroup = "capsule",
        time_to_live = 2700,
        type = "combat-robot"
      },
      destroyer = {
        attack_parameters = {
          ammo_category = "combat-robot-laser",
          ammo_type = {
            action = {
              action_delivery = {
                projectile = "blue-laser",
                starting_speed = 0.3,
                type = "projectile"
              },
              type = "direct"
            },
            category = "combat-robot-laser"
          },
          cooldown = 20,
          projectile_center = { 0, 0 },
          projectile_creation_distance = 0.6,
          range = 15,
          sound = { {
              filename = "__base__/sound/laser.ogg",
              volume = 0.4
            } }
        },
        collision_box = { { 0, 0 }, { 0, 0 } },
        destroy_action = {
          action_delivery = {
            source_effects = {
              entity_name = "explosion",
              type = "create-entity"
            },
            type = "instant"
          },
          type = "direct"
        },
        distance_per_frame = 0.13,
        flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
        follows_player = true,
        friction = 0.01,
        icon = "__base__/graphics/icons/destroyer.png",
        max_health = 60,
        name = "destroyer",
        order = "e-a-c",
        picture = {
          filename = "__base__/graphics/entity/combat-robot/destroyer.png",
          height = 34,
          priority = "high",
          width = 37
        },
        range_from_player = 6,
        selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
        shadow = {
          filename = "__base__/graphics/entity/combat-robot/combat-robot-shadow.png",
          height = 37,
          priority = "high",
          width = 52
        },
        speed = 0.01,
        subgroup = "capsule",
        time_to_live = 7200,
        type = "combat-robot"
      },
      distractor = {
        attack_parameters = {
          ammo_category = "combat-robot-laser",
          ammo_type = {
            action = {
              action_delivery = {
                projectile = "laser",
                starting_speed = 0.3,
                type = "projectile"
              },
              type = "direct"
            },
            category = "combat-robot-laser"
          },
          cooldown = 20,
          damage_modifier = 0.7,
          projectile_center = { 0, 0 },
          projectile_creation_distance = 0.6,
          range = 15,
          sound = { {
              filename = "__base__/sound/laser.ogg",
              volume = 0.4
            } }
        },
        collision_box = { { 0, 0 }, { 0, 0 } },
        destroy_action = {
          action_delivery = {
            source_effects = {
              entity_name = "explosion",
              type = "create-entity"
            },
            type = "instant"
          },
          type = "direct"
        },
        distance_per_frame = 0.13,
        flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/distractor.png",
        max_health = 90,
        name = "distractor",
        order = "e-a-b",
        picture = {
          filename = "__base__/graphics/entity/combat-robot/distractor.png",
          height = 34,
          priority = "high",
          width = 37
        },
        selection_box = { { -0.9, -1.5 }, { 0.9, -0.5 } },
        shadow = {
          filename = "__base__/graphics/entity/combat-robot/combat-robot-shadow.png",
          height = 37,
          priority = "high",
          width = 52
        },
        speed = 0.01,
        subgroup = "capsule",
        time_to_live = 2700,
        type = "combat-robot"
      }
    },
    ["construction-robot"] = {
      ["construction-robot"] = {
        cargo_centered = { 0, 0.2 },
        collision_box = { { 0, 0 }, { 0, 0 } },
        construction_vector = { 0.3, 0.22 },
        energy_per_move = "1kJ",
        energy_per_tick = "0.01kJ",
        flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/construction-robot.png",
        idle = {
          axially_symmetrical = false,
          direction_count = 16,
          filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
          frame_count = 1,
          height = 36,
          line_length = 16,
          priority = "high",
          shift = { 0, -0.15625 },
          width = 32
        },
        in_motion = {
          axially_symmetrical = false,
          direction_count = 16,
          filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
          frame_count = 1,
          height = 36,
          line_length = 16,
          priority = "high",
          shift = { 0, -0.15625 },
          width = 32,
          y = 36
        },
        max_energy = "300kJ",
        max_health = 100,
        max_payload_size = 1,
        max_to_charge = 0.95,
        min_to_charge = 0.2,
        minable = {
          hardness = 0.1,
          mining_time = 0.1,
          result = "construction-robot"
        },
        name = "construction-robot",
        repair_pack = "repair-pack",
        selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
        shadow_idle = {
          axially_symmetrical = false,
          direction_count = 16,
          filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
          frame_count = 1,
          height = 24,
          line_length = 16,
          priority = "high",
          shift = { 1.09375, 0.59375 },
          width = 50
        },
        shadow_in_motion = {
          axially_symmetrical = false,
          direction_count = 16,
          filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
          frame_count = 1,
          height = 24,
          line_length = 16,
          priority = "high",
          shift = { 1.09375, 0.59375 },
          width = 50
        },
        shadow_working = {
          axially_symmetrical = false,
          direction_count = 16,
          frame_count = 2,
          height = 24,
          priority = "high",
          shift = { 1.09375, 0.59375 },
          stripes = { <16>{
              filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
              height_in_frames = 1,
              width_in_frames = 16
            }, <table 16> },
          width = 50
        },
        smoke = {
          animation_speed = 0.3,
          filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
          frame_count = 19,
          height = 32,
          line_length = 19,
          shift = { 0.078125, -0.15625 },
          width = 39
        },
        sparks = { {
            animation_speed = 0.3,
            filename = "__base__/graphics/entity/sparks/sparks-01.png",
            frame_count = 19,
            height = 34,
            line_length = 19,
            shift = { -0.109375, 0.3125 },
            tint = {
              a = 1,
              b = 0,
              g = 0.9,
              r = 1
            },
            width = 39
          }, {
            animation_speed = 0.3,
            filename = "__base__/graphics/entity/sparks/sparks-02.png",
            frame_count = 19,
            height = 32,
            line_length = 19,
            shift = { 0.03125, 0.125 },
            tint = {
              a = 1,
              b = 0,
              g = 0.9,
              r = 1
            },
            width = 36
          }, {
            animation_speed = 0.3,
            filename = "__base__/graphics/entity/sparks/sparks-03.png",
            frame_count = 19,
            height = 29,
            line_length = 19,
            shift = { -0.0625, 0.203125 },
            tint = {
              a = 1,
              b = 0,
              g = 0.9,
              r = 1
            },
            width = 42
          }, {
            animation_speed = 0.3,
            filename = "__base__/graphics/entity/sparks/sparks-04.png",
            frame_count = 19,
            height = 35,
            line_length = 19,
            shift = { -0.0625, 0.234375 },
            tint = {
              a = 1,
              b = 0,
              g = 0.9,
              r = 1
            },
            width = 40
          }, {
            animation_speed = 0.3,
            filename = "__base__/graphics/entity/sparks/sparks-05.png",
            frame_count = 19,
            height = 29,
            line_length = 19,
            shift = { -0.109375, 0.171875 },
            tint = {
              a = 1,
              b = 0,
              g = 0.9,
              r = 1
            },
            width = 39
          }, {
            animation_speed = 0.3,
            filename = "__base__/graphics/entity/sparks/sparks-06.png",
            frame_count = 19,
            height = 36,
            line_length = 19,
            shift = { 0.03125, 0.3125 },
            tint = {
              a = 1,
              b = 0,
              g = 0.9,
              r = 1
            },
            width = 44
          } },
        speed = 0.06,
        speed_multiplier_when_out_of_energy = 0.2,
        transfer_distance = 0.5,
        type = "construction-robot",
        working = {
          animation_speed = 0.3,
          axially_symmetrical = false,
          direction_count = 16,
          filename = "__base__/graphics/entity/construction-robot/construction-robot-working.png",
          frame_count = 2,
          height = 36,
          line_length = 2,
          priority = "high",
          shift = { 0, -0.15625 },
          width = 28
        },
        working_light = {
          intensity = 0.8,
          size = 3
        },
        working_sound = {
          max_sounds_per_type = 3,
          sound = { {
              filename = "__base__/sound/flying-robot-1.ogg",
              volume = 0.6
            }, {
              filename = "__base__/sound/flying-robot-2.ogg",
              volume = 0.6
            }, {
              filename = "__base__/sound/flying-robot-3.ogg",
              volume = 0.6
            }, {
              filename = "__base__/sound/flying-robot-4.ogg",
              volume = 0.6
            }, {
              filename = "__base__/sound/flying-robot-5.ogg",
              volume = 0.6
            } }
        }
      }
    },
    container = {
      ["big-ship-wreck-1"] = {
        collision_box = { { -2.2, -1.5 }, { 2.2, 1.5 } },
        enable_inventory_bar = false,
        flags = { "placeable-neutral" },
        icon = "__base__/graphics/icons/ship-wreck/big-ship-wreck-1.png",
        inventory_size = 3,
        max_health = 50,
        name = "big-ship-wreck-1",
        order = "d[remnants]-d[ship-wreck]-a[big]-a",
        picture = {
          filename = "__base__/graphics/entity/ship-wreck/big-ship-wreck-1.png",
          height = 212,
          shift = { 0.7, 0 },
          width = 256
        },
        selection_box = { { -2.7, -1.5 }, { 2.7, 1.5 } },
        subgroup = "wrecks",
        type = "container"
      },
      ["big-ship-wreck-2"] = {
        collision_box = { { -1.4, -1.2 }, { 1.4, 1.2 } },
        enable_inventory_bar = false,
        flags = { "placeable-neutral" },
        icon = "__base__/graphics/icons/ship-wreck/big-ship-wreck-2.png",
        inventory_size = 3,
        max_health = 50,
        name = "big-ship-wreck-2",
        order = "d[remnants]-d[ship-wreck]-a[big]-b",
        picture = {
          filename = "__base__/graphics/entity/ship-wreck/big-ship-wreck-2.png",
          height = 129,
          shift = { -0.5, 0.6 },
          width = 164
        },
        selection_box = { { -2, -1.5 }, { 2, 1.5 } },
        subgroup = "wrecks",
        type = "container"
      },
      ["big-ship-wreck-3"] = {
        collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
        enable_inventory_bar = false,
        flags = { "placeable-neutral" },
        icon = "__base__/graphics/icons/ship-wreck/big-ship-wreck-3.png",
        inventory_size = 3,
        max_health = 50,
        name = "big-ship-wreck-3",
        order = "d[remnants]-d[ship-wreck]-a[big]-c",
        picture = {
          filename = "__base__/graphics/entity/ship-wreck/big-ship-wreck-3.png",
          height = 212,
          shift = { 0.5, 0.6 },
          width = 256
        },
        selection_box = { { -2, -1.5 }, { 2, 1.5 } },
        subgroup = "wrecks",
        type = "container"
      },
      ["iron-chest"] = {
        close_sound = {
          filename = "__base__/sound/metallic-chest-close.ogg",
          volume = 0.7
        },
        collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
        corpse = "small-remnants",
        fast_replaceable_group = "container",
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/iron-chest.png",
        inventory_size = 32,
        max_health = 100,
        minable = {
          mining_time = 1,
          result = "iron-chest"
        },
        name = "iron-chest",
        open_sound = {
          filename = "__base__/sound/metallic-chest-open.ogg",
          volume = 0.65
        },
        picture = {
          filename = "__base__/graphics/entity/iron-chest/iron-chest.png",
          height = 34,
          priority = "extra-high",
          shift = { 0.2, 0 },
          width = 48
        },
        resistances = { {
            percent = 80,
            type = "fire"
          } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        type = "container"
      },
      ["space-module-wreck"] = {
        collision_box = { { -2.2, -1 }, { 2.2, 1 } },
        enable_inventory_bar = false,
        flags = { "placeable-neutral" },
        icon = "__base__/graphics/icons/space-module-wreck.png",
        inventory_size = 4,
        max_health = 50,
        name = "space-module-wreck",
        order = "c-f",
        picture = {
          filename = "__base__/graphics/entity/space-module-wreck/wreck.png",
          height = 96,
          width = 168
        },
        selection_box = { { -2.7, -1.5 }, { 2.7, 1.5 } },
        subgroup = "wrecks",
        type = "container"
      },
      ["steel-chest"] = {
        close_sound = {
          filename = "__base__/sound/metallic-chest-close.ogg",
          volume = 0.7
        },
        collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
        corpse = "small-remnants",
        fast_replaceable_group = "container",
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/steel-chest.png",
        inventory_size = 48,
        max_health = 200,
        minable = {
          mining_time = 1,
          result = "steel-chest"
        },
        name = "steel-chest",
        open_sound = {
          filename = "__base__/sound/metallic-chest-open.ogg",
          volume = 0.65
        },
        picture = {
          filename = "__base__/graphics/entity/steel-chest/steel-chest.png",
          height = 34,
          priority = "extra-high",
          shift = { 0.2, 0 },
          width = 48
        },
        resistances = { {
            percent = 90,
            type = "fire"
          } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        type = "container"
      },
      ["wooden-chest"] = {
        close_sound = {
          filename = "__base__/sound/wooden-chest-close.ogg"
        },
        collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
        corpse = "small-remnants",
        fast_replaceable_group = "container",
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/wooden-chest.png",
        inventory_size = 16,
        max_health = 50,
        minable = {
          mining_time = 1,
          result = "wooden-chest"
        },
        name = "wooden-chest",
        open_sound = {
          filename = "__base__/sound/wooden-chest-open.ogg"
        },
        picture = {
          filename = "__base__/graphics/entity/wooden-chest/wooden-chest.png",
          height = 33,
          priority = "extra-high",
          shift = { 0.3, 0 },
          width = 46
        },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        type = "container"
      }
    },
    corpse = {
      ["acid-splash-purple"] = {
        final_render_layer = "corpse",
        flags = { "not-on-map" },
        name = "acid-splash-purple",
        splash = { {
            filename = "__base__/graphics/entity/acid-splash-purple/splash-1.png",
            frame_count = 20,
            height = 159,
            line_length = 5,
            shift = { 0.484375, -0.171875 },
            width = 199
          }, {
            filename = "__base__/graphics/entity/acid-splash-purple/splash-2.png",
            frame_count = 20,
            height = 157,
            line_length = 5,
            shift = { 0.8125, -0.15625 },
            width = 238
          }, {
            filename = "__base__/graphics/entity/acid-splash-purple/splash-3.png",
            frame_count = 20,
            height = 162,
            line_length = 5,
            shift = { 0.71875, -0.09375 },
            width = 240
          }, {
            filename = "__base__/graphics/entity/acid-splash-purple/splash-4.png",
            frame_count = 20,
            height = 146,
            line_length = 5,
            shift = { 0.703125, -0.375 },
            width = 241
          } },
        splash_speed = 0.03,
        time_before_removed = 1800,
        type = "corpse"
      },
      ["big-biter-corpse"] = {
        animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 17,
              height = 129,
              scale = 1,
              shift = { 0.621094, -0.1875 },
              stripes = { {
                  filename = "__base__/graphics/entity/biter/biter-die-1.png",
                  height_in_frames = 8,
                  width_in_frames = 9
                }, {
                  filename = "__base__/graphics/entity/biter/biter-die-2.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/biter/biter-die-3.png",
                  height_in_frames = 8,
                  width_in_frames = 9
                }, {
                  filename = "__base__/graphics/entity/biter/biter-die-4.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              width = 190
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              filename = "__base__/graphics/entity/biter/biter-die-mask1.png",
              frame_count = 17,
              height = 109,
              scale = 1,
              shift = { 0.117188, -0.574219 },
              tint = <17>{
                a = 0.6,
                b = 0.9,
                g = 0.68,
                r = 0.34
              },
              width = 120
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              filename = "__base__/graphics/entity/biter/biter-die-mask2.png",
              frame_count = 17,
              height = 108,
              scale = 1,
              shift = { 0.128906, -0.585938 },
              tint = <18>{
                a = 0.85,
                b = 0.95,
                g = 0.61,
                r = 0.31
              },
              width = 115
            } }
        },
        dying_speed = 0.04,
        final_render_layer = "corpse",
        flags = { "placeable-neutral", "placeable-off-grid", "building-direction-8-way" },
        icon = "__base__/graphics/icons/big-biter-corpse.png",
        name = "big-biter-corpse",
        order = "c[corpse]-a[biter]-c[big]",
        selectable_in_game = false,
        selection_box = { { -1, -1 }, { 1, 1 } },
        subgroup = "corpses",
        type = "corpse"
      },
      ["big-remnants"] = {
        animation = { {
            direction_count = 1,
            filename = "__base__/graphics/entity/remnants/big-remnants.png",
            frame_count = 1,
            height = 102,
            width = 109
          }, {
            direction_count = 1,
            filename = "__base__/graphics/entity/remnants/big-remnants.png",
            frame_count = 1,
            height = 102,
            width = 109,
            x = 109
          }, {
            direction_count = 1,
            filename = "__base__/graphics/entity/remnants/big-remnants.png",
            frame_count = 1,
            height = 102,
            width = 109,
            x = 218
          }, {
            direction_count = 1,
            filename = "__base__/graphics/entity/remnants/big-remnants.png",
            frame_count = 1,
            height = 102,
            width = 109,
            x = 327
          } },
        collision_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        final_render_layer = "remnants",
        flags = { "placeable-neutral", "not-on-map" },
        icon = "__base__/graphics/icons/remnants.png",
        name = "big-remnants",
        order = "d[remnants]-a[generic]-c[big]",
        selectable_in_game = false,
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        subgroup = "remnants",
        tile_height = 3,
        tile_width = 3,
        time_before_removed = 54000,
        type = "corpse"
      },
      ["big-spitter-corpse"] = {
        animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 16,
              height = 174,
              priority = "very-low",
              scale = 1,
              shift = { 0.546875, 0.21875 },
              stripes = { {
                  filename = "__base__/graphics/entity/spitter/spitter-die-1.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-2.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-3.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-4.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              width = 225
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 16,
              height = 144,
              priority = "very-low",
              scale = 1,
              shift = { 0, -0.0625 },
              stripes = { {
                  filename = "__base__/graphics/entity/spitter/spitter-die-mask-1.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-mask-2.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-mask-3.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-mask-4.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              tint = <19>{
                a = 0.6,
                b = 0.85,
                g = 0.58,
                r = 0.54
              },
              width = 166
            } }
        },
        collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
        dying_speed = 0.04,
        final_render_layer = "corpse",
        flags = { "placeable-neutral", "placeable-off-grid", "building-direction-8-way" },
        icon = "__base__/graphics/icons/big-biter-corpse.png",
        name = "big-spitter-corpse",
        order = "c[corpse]-b[spitter]-c[big]",
        selectable_in_game = false,
        selection_box = { { -0.7, -1 }, { 0.7, 1 } },
        subgroup = "corpses",
        type = "corpse"
      },
      ["big-worm-corpse"] = {
        animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-die.png",
              frame_count = 24,
              height = 171,
              line_length = 6,
              scale = 1,
              shift = { 0.953125, -0.625 },
              width = 198
            }, {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-die-mask.png",
              frame_count = 24,
              height = 133,
              line_length = 6,
              scale = 1,
              shift = { 0.5625, -1.21875 },
              tint = <20>{
                a = 1,
                b = 0.9,
                g = 0.68,
                r = 0.34
              },
              width = 143
            } }
        },
        dying_speed = 0.01,
        final_render_layer = "corpse",
        flags = { "placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map" },
        icon = "__base__/graphics/icons/big-worm-corpse.png",
        name = "big-worm-corpse",
        order = "c[corpse]-c[worm]-c[big]",
        selectable_in_game = false,
        selection_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
        subgroup = "corpses",
        type = "corpse"
      },
      ["biter-spawner-corpse"] = {
        animation = { {
            layers = { {
                axially_symmetrical = false,
                direction_count = 1,
                frame_count = 20,
                height = 184,
                shift = { -0.665625, -0.28125 },
                stripes = { {
                    filename = "__base__/graphics/entity/spawner/spawner-die-01.png",
                    height_in_frames = 4,
                    width_in_frames = 7,
                    y = 0
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-02.png",
                    height_in_frames = 4,
                    width_in_frames = 7,
                    y = 0
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-03.png",
                    height_in_frames = 4,
                    width_in_frames = 6,
                    y = 0
                  } },
                width = 255
              }, {
                axially_symmetrical = false,
                direction_count = 1,
                frame_count = 20,
                height = 148,
                shift = { -0.99375, -0.375 },
                stripes = { {
                    filename = "__base__/graphics/entity/spawner/spawner-die-mask-01.png",
                    height_in_frames = 4,
                    width_in_frames = 10,
                    y = 0
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-mask-02.png",
                    height_in_frames = 4,
                    width_in_frames = 10,
                    y = 0
                  } },
                tint = <21>{
                  a = 1,
                  b = 1,
                  g = 1,
                  r = 1
                },
                width = 166
              } }
          }, {
            layers = { {
                axially_symmetrical = false,
                direction_count = 1,
                frame_count = 20,
                height = 184,
                shift = { -0.665625, -0.28125 },
                stripes = { {
                    filename = "__base__/graphics/entity/spawner/spawner-die-01.png",
                    height_in_frames = 4,
                    width_in_frames = 7,
                    y = 184
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-02.png",
                    height_in_frames = 4,
                    width_in_frames = 7,
                    y = 184
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-03.png",
                    height_in_frames = 4,
                    width_in_frames = 6,
                    y = 184
                  } },
                width = 255
              }, {
                axially_symmetrical = false,
                direction_count = 1,
                frame_count = 20,
                height = 148,
                shift = { -0.99375, -0.375 },
                stripes = { {
                    filename = "__base__/graphics/entity/spawner/spawner-die-mask-01.png",
                    height_in_frames = 4,
                    width_in_frames = 10,
                    y = 148
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-mask-02.png",
                    height_in_frames = 4,
                    width_in_frames = 10,
                    y = 148
                  } },
                tint = <table 21>,
                width = 166
              } }
          }, {
            layers = { {
                axially_symmetrical = false,
                direction_count = 1,
                frame_count = 20,
                height = 184,
                shift = { -0.665625, -0.28125 },
                stripes = { {
                    filename = "__base__/graphics/entity/spawner/spawner-die-01.png",
                    height_in_frames = 4,
                    width_in_frames = 7,
                    y = 368
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-02.png",
                    height_in_frames = 4,
                    width_in_frames = 7,
                    y = 368
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-03.png",
                    height_in_frames = 4,
                    width_in_frames = 6,
                    y = 368
                  } },
                width = 255
              }, {
                axially_symmetrical = false,
                direction_count = 1,
                frame_count = 20,
                height = 148,
                shift = { -0.99375, -0.375 },
                stripes = { {
                    filename = "__base__/graphics/entity/spawner/spawner-die-mask-01.png",
                    height_in_frames = 4,
                    width_in_frames = 10,
                    y = 296
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-mask-02.png",
                    height_in_frames = 4,
                    width_in_frames = 10,
                    y = 296
                  } },
                tint = <table 21>,
                width = 166
              } }
          }, {
            layers = { {
                axially_symmetrical = false,
                direction_count = 1,
                frame_count = 20,
                height = 184,
                shift = { -0.665625, -0.28125 },
                stripes = { {
                    filename = "__base__/graphics/entity/spawner/spawner-die-01.png",
                    height_in_frames = 4,
                    width_in_frames = 7,
                    y = 552
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-02.png",
                    height_in_frames = 4,
                    width_in_frames = 7,
                    y = 552
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-03.png",
                    height_in_frames = 4,
                    width_in_frames = 6,
                    y = 552
                  } },
                width = 255
              }, {
                axially_symmetrical = false,
                direction_count = 1,
                frame_count = 20,
                height = 148,
                shift = { -0.99375, -0.375 },
                stripes = { {
                    filename = "__base__/graphics/entity/spawner/spawner-die-mask-01.png",
                    height_in_frames = 4,
                    width_in_frames = 10,
                    y = 444
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-mask-02.png",
                    height_in_frames = 4,
                    width_in_frames = 10,
                    y = 444
                  } },
                tint = <table 21>,
                width = 166
              } }
          } },
        collision_box = { { -2, -2 }, { 2, 2 } },
        dying_speed = 0.04,
        final_render_layer = "corpse",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/biter-spawner-corpse.png",
        name = "biter-spawner-corpse",
        order = "c[corpse]-b[biter-spawner]",
        selectable_in_game = false,
        selection_box = { { -2, -2 }, { 2, 2 } },
        subgroup = "corpses",
        type = "corpse"
      },
      ["medium-biter-corpse"] = {
        animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 17,
              height = 129,
              scale = 0.7,
              shift = { 0.4347658, -0.13125 },
              stripes = { {
                  filename = "__base__/graphics/entity/biter/biter-die-1.png",
                  height_in_frames = 8,
                  width_in_frames = 9
                }, {
                  filename = "__base__/graphics/entity/biter/biter-die-2.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/biter/biter-die-3.png",
                  height_in_frames = 8,
                  width_in_frames = 9
                }, {
                  filename = "__base__/graphics/entity/biter/biter-die-4.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              width = 190
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              filename = "__base__/graphics/entity/biter/biter-die-mask1.png",
              frame_count = 17,
              height = 109,
              scale = 0.7,
              shift = { 0.0820316, -0.4019533 },
              tint = <22>{
                a = 0.6,
                b = 0.15,
                g = 0.15,
                r = 0.78
              },
              width = 120
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              filename = "__base__/graphics/entity/biter/biter-die-mask2.png",
              frame_count = 17,
              height = 108,
              scale = 0.7,
              shift = { 0.0902342, -0.4101566 },
              tint = <23>{
                a = 0.75,
                b = 0.3,
                g = 0.3,
                r = 0.9
              },
              width = 115
            } }
        },
        dying_speed = 0.04,
        final_render_layer = "corpse",
        flags = { "placeable-neutral", "placeable-off-grid", "building-direction-8-way" },
        icon = "__base__/graphics/icons/medium-biter-corpse.png",
        name = "medium-biter-corpse",
        order = "c[corpse]-a[biter]-b[medium]",
        selectable_in_game = false,
        selection_box = { { -1, -1 }, { 1, 1 } },
        subgroup = "corpses",
        type = "corpse"
      },
      ["medium-remnants"] = {
        animation = { {
            direction_count = 1,
            filename = "__base__/graphics/entity/remnants/medium-remnants.png",
            frame_count = 1,
            height = 82,
            width = 94
          }, {
            direction_count = 1,
            filename = "__base__/graphics/entity/remnants/medium-remnants.png",
            frame_count = 1,
            height = 82,
            width = 94,
            x = 94
          }, {
            direction_count = 1,
            filename = "__base__/graphics/entity/remnants/medium-remnants.png",
            frame_count = 1,
            height = 82,
            width = 94,
            x = 188
          }, {
            direction_count = 1,
            filename = "__base__/graphics/entity/remnants/medium-remnants.png",
            frame_count = 1,
            height = 82,
            width = 94,
            x = 282
          } },
        final_render_layer = "remnants",
        flags = { "placeable-neutral", "building-direction-8-way", "not-on-map" },
        icon = "__base__/graphics/icons/remnants.png",
        name = "medium-remnants",
        order = "d[remnants]-a[generic]-b[medium]",
        selectable_in_game = false,
        selection_box = { { -1, -1 }, { 1, 1 } },
        subgroup = "remnants",
        tile_height = 2,
        tile_width = 2,
        time_before_removed = 54000,
        type = "corpse"
      },
      ["medium-spitter-corpse"] = {
        animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 16,
              height = 174,
              priority = "very-low",
              scale = 0.7,
              shift = { 0.3828125, 0.153125 },
              stripes = { {
                  filename = "__base__/graphics/entity/spitter/spitter-die-1.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-2.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-3.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-4.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              width = 225
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 16,
              height = 144,
              priority = "very-low",
              scale = 0.7,
              shift = { 0, -0.04375 },
              stripes = { {
                  filename = "__base__/graphics/entity/spitter/spitter-die-mask-1.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-mask-2.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-mask-3.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-mask-4.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              tint = <24>{
                a = 0.75,
                b = 0.36,
                g = 0.39,
                r = 0.83
              },
              width = 166
            } }
        },
        dying_speed = 0.04,
        final_render_layer = "corpse",
        flags = { "placeable-neutral", "placeable-off-grid", "building-direction-8-way" },
        icon = "__base__/graphics/icons/big-biter-corpse.png",
        name = "medium-spitter-corpse",
        order = "c[corpse]-b[spitter]-b[medium]",
        selectable_in_game = false,
        selection_box = { { -1, -1 }, { 1, 1 } },
        subgroup = "corpses",
        type = "corpse"
      },
      ["medium-worm-corpse"] = {
        animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-die.png",
              frame_count = 24,
              height = 171,
              line_length = 6,
              scale = 0.83,
              shift = { 0.79109375, -0.51875 },
              width = 198
            }, {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-die-mask.png",
              frame_count = 24,
              height = 133,
              line_length = 6,
              scale = 0.83,
              shift = { 0.466875, -1.0115625 },
              tint = <25>{
                a = 1,
                b = 0.3,
                g = 0.15,
                r = 0.9
              },
              width = 143
            } }
        },
        dying_speed = 0.01,
        final_render_layer = "corpse",
        flags = { "placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map" },
        icon = "__base__/graphics/icons/medium-worm-corpse.png",
        name = "medium-worm-corpse",
        order = "c[corpse]-c[worm]-b[medium]",
        selectable_in_game = false,
        selection_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
        subgroup = "corpses",
        type = "corpse"
      },
      ["small-biter-corpse"] = {
        animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 17,
              height = 129,
              scale = 0.5,
              shift = { 0.310547, -0.09375 },
              stripes = { {
                  filename = "__base__/graphics/entity/biter/biter-die-1.png",
                  height_in_frames = 8,
                  width_in_frames = 9
                }, {
                  filename = "__base__/graphics/entity/biter/biter-die-2.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/biter/biter-die-3.png",
                  height_in_frames = 8,
                  width_in_frames = 9
                }, {
                  filename = "__base__/graphics/entity/biter/biter-die-4.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              width = 190
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              filename = "__base__/graphics/entity/biter/biter-die-mask1.png",
              frame_count = 17,
              height = 109,
              scale = 0.5,
              shift = { 0.058594, -0.2871095 },
              tint = <26>{
                a = 0.65,
                b = 0.42,
                g = 0.46,
                r = 0.56
              },
              width = 120
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              filename = "__base__/graphics/entity/biter/biter-die-mask2.png",
              frame_count = 17,
              height = 108,
              scale = 0.5,
              shift = { 0.064453, -0.292969 },
              tint = <27>{
                a = 0.4,
                b = 0,
                g = 0.63,
                r = 1
              },
              width = 115
            } }
        },
        dying_speed = 0.04,
        final_render_layer = "corpse",
        flags = { "placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map" },
        icon = "__base__/graphics/icons/small-biter-corpse.png",
        name = "small-biter-corpse",
        order = "c[corpse]-a[biter]-a[small]",
        selectable_in_game = false,
        selection_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
        subgroup = "corpses",
        type = "corpse"
      },
      ["small-remnants"] = {
        animation = { {
            direction_count = 1,
            filename = "__base__/graphics/entity/remnants/small-remnants.png",
            frame_count = 1,
            height = 42,
            width = 56
          }, {
            direction_count = 1,
            filename = "__base__/graphics/entity/remnants/small-remnants.png",
            frame_count = 1,
            height = 42,
            width = 56,
            x = 56
          }, {
            direction_count = 1,
            filename = "__base__/graphics/entity/remnants/small-remnants.png",
            frame_count = 1,
            height = 42,
            width = 56,
            x = 112
          }, {
            direction_count = 1,
            filename = "__base__/graphics/entity/remnants/small-remnants.png",
            frame_count = 1,
            height = 42,
            width = 56,
            x = 168
          } },
        final_render_layer = "remnants",
        flags = { "placeable-neutral", "not-on-map" },
        icon = "__base__/graphics/icons/remnants.png",
        name = "small-remnants",
        order = "d[remnants]-a[generic]-a[small]",
        selectable_in_game = false,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "remnants",
        tile_height = 1,
        tile_width = 1,
        time_before_removed = 54000,
        type = "corpse"
      },
      ["small-scorchmark"] = {
        animation = {
          sheet = {
            direction_count = 1,
            filename = "__base__/graphics/entity/scorchmark/small-scorchmark.png",
            frame_count = 1,
            height = 90,
            variation_count = 3,
            width = 110
          }
        },
        collision_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        collision_mask = { "doodad-layer", "not-colliding-with-itself" },
        final_render_layer = "ground_patch_higher2",
        flags = { "placeable-neutral", "not-on-map", "placeable-off-grid" },
        ground_patch = {
          sheet = {
            direction_count = 1,
            filename = "__base__/graphics/entity/scorchmark/small-scorchmark.png",
            frame_count = 1,
            height = 90,
            variation_count = 3,
            width = 110,
            x = 220
          }
        },
        ground_patch_higher = {
          sheet = {
            direction_count = 1,
            filename = "__base__/graphics/entity/scorchmark/small-scorchmark.png",
            frame_count = 1,
            height = 90,
            variation_count = 3,
            width = 110,
            x = 110
          }
        },
        icon = "__base__/graphics/icons/small-scorchmark.png",
        name = "small-scorchmark",
        order = "d[remnants]-b[scorchmark]-a[small]",
        selectable_in_game = false,
        selection_box = { { -1, -1 }, { 1, 1 } },
        subgroup = "remnants",
        time_before_removed = 36000,
        type = "corpse"
      },
      ["small-spitter-corpse"] = {
        animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 16,
              height = 174,
              priority = "very-low",
              scale = 0.5,
              shift = { 0.2734375, 0.109375 },
              stripes = { {
                  filename = "__base__/graphics/entity/spitter/spitter-die-1.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-2.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-3.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-4.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              width = 225
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 16,
              height = 144,
              priority = "very-low",
              scale = 0.5,
              shift = { 0, -0.03125 },
              stripes = { {
                  filename = "__base__/graphics/entity/spitter/spitter-die-mask-1.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-mask-2.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-mask-3.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-die-mask-4.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              tint = <28>{
                a = 1,
                b = 0,
                g = 0.4,
                r = 0.68
              },
              width = 166
            } }
        },
        dying_speed = 0.04,
        final_render_layer = "corpse",
        flags = { "placeable-neutral", "placeable-off-grid", "building-direction-8-way" },
        icon = "__base__/graphics/icons/big-biter-corpse.png",
        name = "small-spitter-corpse",
        order = "c[corpse]-b[spitter]-a[small]",
        selectable_in_game = false,
        selection_box = { { -1, -1 }, { 1, 1 } },
        subgroup = "corpses",
        type = "corpse"
      },
      ["small-worm-corpse"] = {
        animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-die.png",
              frame_count = 24,
              height = 171,
              line_length = 6,
              scale = 0.65,
              shift = { 0.61953125, -0.40625 },
              width = 198
            }, {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-die-mask.png",
              frame_count = 24,
              height = 133,
              line_length = 6,
              scale = 0.65,
              shift = { 0.365625, -0.7921875 },
              tint = <29>{
                a = 1,
                b = 0,
                g = 0.63,
                r = 1
              },
              width = 143
            } }
        },
        dying_speed = 0.01,
        final_render_layer = "corpse",
        flags = { "placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map" },
        icon = "__base__/graphics/icons/small-worm-corpse.png",
        name = "small-worm-corpse",
        order = "c[corpse]-c[worm]-a[small]",
        selectable_in_game = false,
        selection_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
        subgroup = "corpses",
        type = "corpse"
      },
      ["spitter-spawner-corpse"] = {
        animation = { {
            layers = { {
                axially_symmetrical = false,
                direction_count = 1,
                frame_count = 20,
                height = 184,
                shift = { -0.665625, -0.28125 },
                stripes = { {
                    filename = "__base__/graphics/entity/spawner/spawner-die-01.png",
                    height_in_frames = 4,
                    width_in_frames = 7,
                    y = 0
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-02.png",
                    height_in_frames = 4,
                    width_in_frames = 7,
                    y = 0
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-03.png",
                    height_in_frames = 4,
                    width_in_frames = 6,
                    y = 0
                  } },
                width = 255
              }, {
                axially_symmetrical = false,
                direction_count = 1,
                frame_count = 20,
                height = 148,
                shift = { -0.99375, -0.375 },
                stripes = { {
                    filename = "__base__/graphics/entity/spawner/spawner-die-mask-01.png",
                    height_in_frames = 4,
                    width_in_frames = 10,
                    y = 0
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-mask-02.png",
                    height_in_frames = 4,
                    width_in_frames = 10,
                    y = 0
                  } },
                tint = <30>{
                  a = 1,
                  b = 0.09,
                  g = 0.09,
                  r = 0.99
                },
                width = 166
              } }
          }, {
            layers = { {
                axially_symmetrical = false,
                direction_count = 1,
                frame_count = 20,
                height = 184,
                shift = { -0.665625, -0.28125 },
                stripes = { {
                    filename = "__base__/graphics/entity/spawner/spawner-die-01.png",
                    height_in_frames = 4,
                    width_in_frames = 7,
                    y = 184
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-02.png",
                    height_in_frames = 4,
                    width_in_frames = 7,
                    y = 184
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-03.png",
                    height_in_frames = 4,
                    width_in_frames = 6,
                    y = 184
                  } },
                width = 255
              }, {
                axially_symmetrical = false,
                direction_count = 1,
                frame_count = 20,
                height = 148,
                shift = { -0.99375, -0.375 },
                stripes = { {
                    filename = "__base__/graphics/entity/spawner/spawner-die-mask-01.png",
                    height_in_frames = 4,
                    width_in_frames = 10,
                    y = 148
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-mask-02.png",
                    height_in_frames = 4,
                    width_in_frames = 10,
                    y = 148
                  } },
                tint = <table 30>,
                width = 166
              } }
          }, {
            layers = { {
                axially_symmetrical = false,
                direction_count = 1,
                frame_count = 20,
                height = 184,
                shift = { -0.665625, -0.28125 },
                stripes = { {
                    filename = "__base__/graphics/entity/spawner/spawner-die-01.png",
                    height_in_frames = 4,
                    width_in_frames = 7,
                    y = 368
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-02.png",
                    height_in_frames = 4,
                    width_in_frames = 7,
                    y = 368
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-03.png",
                    height_in_frames = 4,
                    width_in_frames = 6,
                    y = 368
                  } },
                width = 255
              }, {
                axially_symmetrical = false,
                direction_count = 1,
                frame_count = 20,
                height = 148,
                shift = { -0.99375, -0.375 },
                stripes = { {
                    filename = "__base__/graphics/entity/spawner/spawner-die-mask-01.png",
                    height_in_frames = 4,
                    width_in_frames = 10,
                    y = 296
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-mask-02.png",
                    height_in_frames = 4,
                    width_in_frames = 10,
                    y = 296
                  } },
                tint = <table 30>,
                width = 166
              } }
          }, {
            layers = { {
                axially_symmetrical = false,
                direction_count = 1,
                frame_count = 20,
                height = 184,
                shift = { -0.665625, -0.28125 },
                stripes = { {
                    filename = "__base__/graphics/entity/spawner/spawner-die-01.png",
                    height_in_frames = 4,
                    width_in_frames = 7,
                    y = 552
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-02.png",
                    height_in_frames = 4,
                    width_in_frames = 7,
                    y = 552
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-03.png",
                    height_in_frames = 4,
                    width_in_frames = 6,
                    y = 552
                  } },
                width = 255
              }, {
                axially_symmetrical = false,
                direction_count = 1,
                frame_count = 20,
                height = 148,
                shift = { -0.99375, -0.375 },
                stripes = { {
                    filename = "__base__/graphics/entity/spawner/spawner-die-mask-01.png",
                    height_in_frames = 4,
                    width_in_frames = 10,
                    y = 444
                  }, {
                    filename = "__base__/graphics/entity/spawner/spawner-die-mask-02.png",
                    height_in_frames = 4,
                    width_in_frames = 10,
                    y = 444
                  } },
                tint = <table 30>,
                width = 166
              } }
          } },
        collision_box = { { -2, -2 }, { 2, 2 } },
        dying_speed = 0.04,
        final_render_layer = "corpse",
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/biter-spawner-corpse.png",
        name = "spitter-spawner-corpse",
        order = "c[corpse]-c[spitter-spawner]",
        selectable_in_game = false,
        selection_box = { { -2, -2 }, { 2, 2 } },
        subgroup = "corpses",
        type = "corpse"
      },
      ["wall-remnants"] = {
        animation = { {
            direction_count = 1,
            filename = "__base__/graphics/entity/stone-wall/remains/wall-remain-01.png",
            frame_count = 1,
            height = 36,
            width = 36
          }, {
            direction_count = 1,
            filename = "__base__/graphics/entity/stone-wall/remains/wall-remain-02.png",
            frame_count = 1,
            height = 35,
            width = 38
          }, {
            direction_count = 1,
            filename = "__base__/graphics/entity/stone-wall/remains/wall-remain-03.png",
            frame_count = 1,
            height = 36,
            width = 35
          }, {
            direction_count = 1,
            filename = "__base__/graphics/entity/stone-wall/remains/wall-remain-04.png",
            frame_count = 1,
            height = 36,
            width = 41
          }, {
            direction_count = 1,
            filename = "__base__/graphics/entity/stone-wall/remains/wall-remain-05.png",
            frame_count = 1,
            height = 35,
            width = 35
          }, {
            direction_count = 1,
            filename = "__base__/graphics/entity/stone-wall/remains/wall-remain-06.png",
            frame_count = 1,
            height = 37,
            width = 50
          }, {
            direction_count = 1,
            filename = "__base__/graphics/entity/stone-wall/remains/wall-remain-07.png",
            frame_count = 1,
            height = 40,
            width = 54
          }, {
            direction_count = 1,
            filename = "__base__/graphics/entity/stone-wall/remains/wall-remain-08.png",
            frame_count = 1,
            height = 45,
            width = 43
          } },
        final_render_layer = "remnants",
        flags = { "placeable-neutral", "not-on-map" },
        icon = "__base__/graphics/icons/wall-remnants.png",
        name = "wall-remnants",
        order = "d[remnants]-c[wall]",
        selectable_in_game = false,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "remnants",
        time_before_removed = 54000,
        type = "corpse"
      }
    },
    ["damage-type"] = {
      acid = {
        name = "acid",
        type = "damage-type"
      },
      explosion = {
        name = "explosion",
        type = "damage-type"
      },
      fire = {
        name = "fire",
        type = "damage-type"
      },
      impact = {
        name = "impact",
        type = "damage-type"
      },
      laser = {
        name = "laser",
        type = "damage-type"
      },
      physical = {
        name = "physical",
        type = "damage-type"
      },
      poison = {
        name = "poison",
        type = "damage-type"
      }
    },
    ["deconstruction-item"] = {
      ["deconstruction-planner"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/deconstruction-planner.png",
        name = "deconstruction-planner",
        order = "c[automated-construction]-b[deconstruction-planner]",
        stack_size = 1,
        subgroup = "tool",
        type = "deconstruction-item"
      }
    },
    decorative = {
      ["big-ship-wreck-grass"] = {
        collision_box = { { -2.5, -1.5 }, { 2.5, 1.5 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/ship-wreck/big-ship-wreck-grass.png",
        name = "big-ship-wreck-grass",
        order = "d[remnants]-d[ship-wreck-grass]-a[big]",
        pictures = { {
            filename = "__base__/graphics/entity/ship-wreck/big-ship-wreck-grass.png",
            height = 112,
            width = 206
          } },
        render_layer = "floor",
        selectable_in_game = false,
        selection_box = { { -2.8, -1.7 }, { 2.8, 1.7 } },
        subgroup = "wrecks",
        type = "decorative"
      },
      ["brown-asterisk"] = {
        autoplace = {
          max_probability = 0.02,
          order = "a[doodad]-z[other]",
          peaks = { {
              influence = 0.5,
              min_influence = 0,
              temperature_max_range = 30,
              temperature_optimal = 10,
              temperature_range = 25,
              water_max_range = 0.3,
              water_optimal = 0.3,
              water_range = 0.2
            } }
        },
        collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/brown-asterisk.png",
        name = "brown-asterisk",
        order = "b[decorative]-b[asterisk]-a[brown]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-01.png",
            height = 26,
            width = 30
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-02.png",
            height = 27,
            width = 24
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-03.png",
            height = 23,
            width = 27
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-04.png",
            height = 26,
            width = 35
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-05.png",
            height = 25,
            width = 30
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-06.png",
            height = 32,
            width = 46
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-07.png",
            height = 31,
            width = 46
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-08.png",
            height = 15,
            width = 18
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-09.png",
            height = 14,
            width = 21
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-10.png",
            height = 17,
            width = 16
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-11.png",
            height = 18,
            width = 20
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-12.png",
            height = 18,
            width = 21
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-13.png",
            height = 19,
            width = 22
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-14.png",
            height = 22,
            width = 28
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-15.png",
            height = 21,
            width = 30
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-16.png",
            height = 22,
            width = 26
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-17.png",
            height = 15,
            width = 22
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-18.png",
            height = 27,
            width = 21
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-19.png",
            height = 20,
            width = 21
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-20.png",
            height = 58,
            width = 71
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-21.png",
            height = 59,
            width = 78
          }, {
            filename = "__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-22.png",
            height = 49,
            width = 56
          } },
        render_layer = "decorative",
        selectable_in_game = false,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["brown-cane-cluster"] = {
        autoplace = {
          max_probability = 0.1,
          order = "a[doodad]-c[cane]",
          peaks = { {
              influence = 1,
              noise_layer = "brown-cane",
              noise_octaves_difference = -2,
              noise_persistence = 0.5
            }, {
              influence = -0.5
            }, {
              influence = 1,
              min_influence = 0,
              temperature_max_range = 17.5,
              temperature_optimal = 22.5,
              temperature_range = 12.5,
              water_max_range = 0.1,
              water_optimal = 0.7,
              water_range = 0
            } },
          sharpness = 1
        },
        collision_box = { { -1.5, -0.7 }, { 1.5, 0.7 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/brown-cane-cluster.png",
        name = "brown-cane-cluster",
        order = "b[decorative]-e[cane]-a[cluster]-a[brown]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/brown-cane-cluster/brown-cane-cluster-01.png",
            height = 146,
            shift = { 0.5, -0.3 },
            width = 131
          }, {
            filename = "__base__/graphics/entity/decorative/brown-cane-cluster/brown-cane-cluster-02.png",
            height = 176,
            shift = { 0.6, -0.4 },
            width = 154
          }, {
            filename = "__base__/graphics/entity/decorative/brown-cane-cluster/brown-cane-cluster-03.png",
            height = 156,
            shift = { 0.7, -0.2 },
            width = 264
          }, {
            filename = "__base__/graphics/entity/decorative/brown-cane-cluster/brown-cane-cluster-04.png",
            height = 138,
            shift = { 0.4, -0.3 },
            width = 119
          }, {
            filename = "__base__/graphics/entity/decorative/brown-cane-cluster/brown-cane-cluster-05.png",
            height = 230,
            shift = { 0.4, 0 },
            width = 140
          } },
        render_layer = "object",
        selectable_in_game = false,
        selection_box = { { -1.3, -0.7 }, { 1.3, 0.7 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["brown-cane-single"] = {
        collision_box = { { -0.9, -0.7 }, { 0.9, 0.7 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/brown-cane-single.png",
        name = "brown-cane-single",
        order = "b[decorative]-e[cane]-b[single]-a[brown]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/brown-cane-single/brown-cane-single-01.png",
            height = 60,
            shift = { 0.6, -0.4 },
            width = 56
          }, {
            filename = "__base__/graphics/entity/decorative/brown-cane-single/brown-cane-single-02.png",
            height = 43,
            shift = { 0.3, 0 },
            width = 44
          }, {
            filename = "__base__/graphics/entity/decorative/brown-cane-single/brown-cane-single-03.png",
            height = 51,
            shift = { 0.3, 0 },
            width = 48
          }, {
            filename = "__base__/graphics/entity/decorative/brown-cane-single/brown-cane-single-04.png",
            height = 37,
            width = 45
          }, {
            filename = "__base__/graphics/entity/decorative/brown-cane-single/brown-cane-single-05.png",
            height = 57,
            shift = { 0.9, -0.4 },
            width = 81
          }, {
            filename = "__base__/graphics/entity/decorative/brown-cane-single/brown-cane-single-06.png",
            height = 94,
            shift = { 0.1, 0.4 },
            width = 31
          } },
        render_layer = "object",
        selectable_in_game = false,
        selection_box = { { -0.7, -0.5 }, { 0.7, 0.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["brown-carpet-grass"] = {
        autoplace = {
          max_probability = 0.01,
          order = "a[doodad]-f[grass]-c",
          peaks = { {
              influence = 0.3,
              noise_layer = "grass1",
              noise_octaves_difference = -2.8,
              noise_persistence = 0.5
            }, {
              influence = 0.6,
              min_influence = 0,
              temperature_max_range = 10,
              temperature_optimal = 25,
              temperature_range = 5,
              water_max_range = 0.15,
              water_optimal = 0.85,
              water_range = 0.05
            }, {
              influence = 0.6,
              min_influence = 0,
              temperature_max_range = 7.5,
              temperature_optimal = 12.5,
              temperature_range = 2.5,
              water_max_range = 0.15,
              water_optimal = 0.45,
              water_range = 0.05
            }, {
              influence = 0.6,
              min_influence = 0,
              temperature_max_range = 7.5,
              temperature_optimal = 17.5,
              temperature_range = 2.5,
              water_max_range = 0.15,
              water_optimal = 0.15,
              water_range = 0.05
            } },
          sharpness = 0.7
        },
        collision_box = { { -2, -2 }, { 2, 2 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/brown-carpet-grass.png",
        name = "brown-carpet-grass",
        order = "b[decorative]-a[grass]-b[carpet]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/brown-carpet-grass/brown-carpet-grass-01.png",
            height = 70,
            width = 103
          }, {
            filename = "__base__/graphics/entity/decorative/brown-carpet-grass/brown-carpet-grass-02.png",
            height = 164,
            width = 185
          }, {
            filename = "__base__/graphics/entity/decorative/brown-carpet-grass/brown-carpet-grass-03.png",
            height = 176,
            width = 96
          }, {
            filename = "__base__/graphics/entity/decorative/brown-carpet-grass/brown-carpet-grass-04.png",
            height = 179,
            width = 200
          } },
        selectable_in_game = false,
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["brown-coral-mini"] = {
        autoplace = {
          max_probability = 0.1,
          order = "a[doodad]-z[other]",
          peaks = { {
              influence = 0.4,
              noise_layer = "coral",
              noise_octaves_difference = -2,
              noise_persistence = 0.9
            }, {
              influence = -0.3
            }, {
              influence = 0.5,
              min_influence = 0,
              temperature_max_range = 15,
              temperature_optimal = 20,
              temperature_range = 10,
              water_max_range = 0.15,
              water_optimal = 0.15,
              water_range = 0.05
            } },
          sharpness = 0.3
        },
        collision_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/brown-coral-mini.png",
        name = "brown-coral-mini",
        order = "b[decorative]-f[coral]-b[mini]-b[brown]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/brown-coral-mini/brown-coral-mini-01.png",
            height = 40,
            width = 39
          }, {
            filename = "__base__/graphics/entity/decorative/brown-coral-mini/brown-coral-mini-02.png",
            height = 23,
            width = 18
          } },
        render_layer = "object",
        selectable_in_game = false,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["brown-fluff"] = {
        autoplace = {
          order = "a[doodad]-d[fluff]",
          peaks = { {
              influence = 0.7,
              noise_layer = "fluff",
              noise_octaves_difference = -2,
              noise_persistence = 0.9
            }, {
              influence = -0.25
            }, {
              influence = 0.5,
              min_influence = 0,
              temperature_max_range = 25,
              temperature_optimal = 15,
              temperature_range = 20,
              water_max_range = 0.25,
              water_optimal = 0.55,
              water_range = 0.15
            } },
          placement_density = 3,
          sharpness = 1
        },
        collision_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/brown-fluff.png",
        name = "brown-fluff",
        order = "b[decorative]-g[fluff]-a[normal]-a[brown]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/brown-fluff/brown-fluff-01.png",
            height = 21,
            width = 21
          }, {
            filename = "__base__/graphics/entity/decorative/brown-fluff/brown-fluff-02.png",
            height = 17,
            width = 30
          }, {
            filename = "__base__/graphics/entity/decorative/brown-fluff/brown-fluff-03.png",
            height = 21,
            width = 27
          }, {
            filename = "__base__/graphics/entity/decorative/brown-fluff/brown-fluff-04.png",
            height = 19,
            width = 23
          }, {
            filename = "__base__/graphics/entity/decorative/brown-fluff/brown-fluff-05.png",
            height = 21,
            width = 28
          }, {
            filename = "__base__/graphics/entity/decorative/brown-fluff/brown-fluff-06.png",
            height = 20,
            width = 32
          }, {
            filename = "__base__/graphics/entity/decorative/brown-fluff/brown-fluff-07.png",
            height = 21,
            width = 22
          }, {
            filename = "__base__/graphics/entity/decorative/brown-fluff/brown-fluff-08.png",
            height = 32,
            width = 27
          }, {
            filename = "__base__/graphics/entity/decorative/brown-fluff/brown-fluff-09.png",
            height = 32,
            width = 27
          }, {
            filename = "__base__/graphics/entity/decorative/brown-fluff/brown-fluff-10.png",
            height = 19,
            width = 22
          } },
        selectable_in_game = false,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["brown-fluff-dry"] = {
        autoplace = {
          order = "a[doodad]-d[fluff]",
          peaks = { {
              influence = 0.7,
              noise_layer = "fluff",
              noise_octaves_difference = -2,
              noise_persistence = 0.9
            }, {
              influence = -0.3
            }, {
              influence = 0.5,
              min_influence = 0,
              temperature_max_range = 30,
              temperature_optimal = 10,
              temperature_range = 25,
              water_max_range = 0.3,
              water_optimal = 0.3,
              water_range = 0.2
            } },
          placement_density = 3,
          sharpness = 1
        },
        collision_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/brown-fluff-dry.png",
        name = "brown-fluff-dry",
        order = "b[decorative]-g[fluff]-b[dry]-a[brown]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/brown-fluff-dry/brown-fluff-dry-01.png",
            height = 21,
            width = 19
          }, {
            filename = "__base__/graphics/entity/decorative/brown-fluff-dry/brown-fluff-dry-02.png",
            height = 17,
            width = 31
          }, {
            filename = "__base__/graphics/entity/decorative/brown-fluff-dry/brown-fluff-dry-03.png",
            height = 23,
            width = 27
          }, {
            filename = "__base__/graphics/entity/decorative/brown-fluff-dry/brown-fluff-dry-04.png",
            height = 23,
            width = 24
          }, {
            filename = "__base__/graphics/entity/decorative/brown-fluff-dry/brown-fluff-dry-05.png",
            height = 29,
            width = 25
          }, {
            filename = "__base__/graphics/entity/decorative/brown-fluff-dry/brown-fluff-dry-06.png",
            height = 20,
            width = 25
          }, {
            filename = "__base__/graphics/entity/decorative/brown-fluff-dry/brown-fluff-dry-07.png",
            height = 20,
            width = 31
          } },
        selectable_in_game = false,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["brown-hairy-grass"] = {
        autoplace = {
          max_probability = 0.01,
          order = "a[doodad]-f[grass]-b",
          peaks = { {
              influence = 0.3,
              noise_layer = "grass2",
              noise_octaves_difference = -2.8,
              noise_persistence = 0.5
            }, {
              influence = 0.6,
              min_influence = 0,
              temperature_max_range = 10,
              temperature_optimal = 25,
              temperature_range = 5,
              water_max_range = 0.15,
              water_optimal = 0.85,
              water_range = 0.05
            }, {
              influence = 0.6,
              min_influence = 0,
              temperature_max_range = 7.5,
              temperature_optimal = 12.5,
              temperature_range = 2.5,
              water_max_range = 0.15,
              water_optimal = 0.45,
              water_range = 0.05
            }, {
              influence = 0.6,
              min_influence = 0,
              temperature_max_range = 7.5,
              temperature_optimal = 17.5,
              temperature_range = 2.5,
              water_max_range = 0.15,
              water_optimal = 0.15,
              water_range = 0.05
            } },
          sharpness = 0.2
        },
        collision_box = { { -1, -1 }, { 1, 1 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/brown-hairy-grass.png",
        name = "brown-hairy-grass",
        order = "b[decorative]-a[grass]-a[hairy]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/brown-hairy-grass/brown-hairy-grass-01.png",
            height = 31,
            width = 88
          }, {
            filename = "__base__/graphics/entity/decorative/brown-hairy-grass/brown-hairy-grass-02.png",
            height = 34,
            width = 39
          }, {
            filename = "__base__/graphics/entity/decorative/brown-hairy-grass/brown-hairy-grass-03.png",
            height = 29,
            width = 53
          }, {
            filename = "__base__/graphics/entity/decorative/brown-hairy-grass/brown-hairy-grass-04.png",
            height = 31,
            width = 47
          }, {
            filename = "__base__/graphics/entity/decorative/brown-hairy-grass/brown-hairy-grass-05.png",
            height = 38,
            width = 56
          }, {
            filename = "__base__/graphics/entity/decorative/brown-hairy-grass/brown-hairy-grass-06.png",
            height = 28,
            width = 59
          } },
        render_layer = "decorative",
        selectable_in_game = false,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      garballo = {
        autoplace = {
          max_probability = 0.8,
          order = "a[doodad]-e[garballo]",
          peaks = { {
              influence = 0.47,
              noise_layer = "garballo",
              noise_octaves_difference = -2,
              noise_persistence = 0.8
            }, {
              elevation_max_range = 10,
              elevation_optimal = 5,
              elevation_range = 0,
              influence = 0.3,
              min_influence = 0
            }, {
              influence = -0.01,
              noise_layer = "garballo-mini",
              noise_octaves_difference = -3,
              noise_persistence = 0.9
            }, {
              influence = 0.4,
              min_influence = 0,
              temperature_max_range = 10,
              temperature_optimal = 25,
              temperature_range = 5,
              water_max_range = 0.2,
              water_optimal = 0.4,
              water_range = 0.1
            } },
          sharpness = 1
        },
        collision_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/garballo.png",
        name = "garballo",
        order = "b[decorative]-i[garballo]-a[normal]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/garballo/garballo-01.png",
            height = 39,
            width = 50
          }, {
            filename = "__base__/graphics/entity/decorative/garballo/garballo-02.png",
            height = 40,
            width = 53
          }, {
            filename = "__base__/graphics/entity/decorative/garballo/garballo-03.png",
            height = 34,
            width = 29
          }, {
            filename = "__base__/graphics/entity/decorative/garballo/garballo-04.png",
            height = 43,
            shift = { 0.2, 0 },
            width = 44
          }, {
            filename = "__base__/graphics/entity/decorative/garballo/garballo-05.png",
            height = 46,
            width = 48
          }, {
            filename = "__base__/graphics/entity/decorative/garballo/garballo-06.png",
            height = 49,
            width = 59
          }, {
            filename = "__base__/graphics/entity/decorative/garballo/garballo-07.png",
            height = 58,
            shift = { 0.3, 0.2 },
            width = 54
          }, {
            filename = "__base__/graphics/entity/decorative/garballo/garballo-08.png",
            height = 36,
            width = 42
          }, {
            filename = "__base__/graphics/entity/decorative/garballo/garballo-09.png",
            height = 45,
            width = 58
          }, {
            filename = "__base__/graphics/entity/decorative/garballo/garballo-10.png",
            height = 39,
            width = 58
          }, {
            filename = "__base__/graphics/entity/decorative/garballo/garballo-11.png",
            height = 54,
            shift = { 0.3, 0.2 },
            width = 71
          } },
        render_layer = "object",
        selectable_in_game = false,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["garballo-mini-dry"] = {
        autoplace = {
          max_probability = 0.8,
          order = "a[doodad]-e[garballo]",
          peaks = { {
              influence = 0.57,
              noise_layer = "garballo",
              noise_octaves_difference = -2,
              noise_persistence = 0.8
            }, {
              elevation_max_range = 10,
              elevation_optimal = 10,
              elevation_range = 0,
              influence = 0.3,
              min_influence = 0
            }, {
              influence = 0.01,
              noise_layer = "garballo-mini",
              noise_octaves_difference = -3,
              noise_persistence = 0.9
            }, {
              influence = 0.3,
              min_influence = 0,
              temperature_max_range = 10,
              temperature_optimal = 25,
              temperature_range = 5,
              water_max_range = 0.2,
              water_optimal = 0.4,
              water_range = 0.1
            } },
          sharpness = 1
        },
        collision_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/garballo-mini-dry.png",
        name = "garballo-mini-dry",
        order = "b[decorative]-i[garballo]-a[mini-dry]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/garballo-mini-dry/garballo-mini-dry-01.png",
            height = 25,
            width = 18
          }, {
            filename = "__base__/graphics/entity/decorative/garballo-mini-dry/garballo-mini-dry-02.png",
            height = 25,
            width = 27
          }, {
            filename = "__base__/graphics/entity/decorative/garballo-mini-dry/garballo-mini-dry-03.png",
            height = 21,
            width = 31
          }, {
            filename = "__base__/graphics/entity/decorative/garballo-mini-dry/garballo-mini-dry-04.png",
            height = 25,
            width = 31
          }, {
            filename = "__base__/graphics/entity/decorative/garballo-mini-dry/garballo-mini-dry-05.png",
            height = 24,
            width = 31
          }, {
            filename = "__base__/graphics/entity/decorative/garballo-mini-dry/garballo-mini-dry-06.png",
            height = 27,
            width = 21
          }, {
            filename = "__base__/graphics/entity/decorative/garballo-mini-dry/garballo-mini-dry-07.png",
            height = 28,
            width = 25
          }, {
            filename = "__base__/graphics/entity/decorative/garballo-mini-dry/garballo-mini-dry-08.png",
            height = 32,
            width = 26
          }, {
            filename = "__base__/graphics/entity/decorative/garballo-mini-dry/garballo-mini-dry-09.png",
            height = 24,
            width = 23
          }, {
            filename = "__base__/graphics/entity/decorative/garballo-mini-dry/garballo-mini-dry-10.png",
            height = 26,
            width = 29
          }, {
            filename = "__base__/graphics/entity/decorative/garballo-mini-dry/garballo-mini-dry-11.png",
            height = 34,
            width = 43
          } },
        render_layer = "object",
        selectable_in_game = false,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["green-asterisk"] = {
        autoplace = {
          max_probability = 0.05,
          order = "a[doodad]-z[other]",
          peaks = { {
              influence = 0.5,
              min_influence = 0,
              temperature_max_range = 22.5,
              temperature_optimal = 17.5,
              temperature_range = 17.5,
              water_max_range = 0.25,
              water_optimal = 0.85,
              water_range = 0.15
            } }
        },
        collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/green-asterisk.png",
        name = "green-asterisk",
        order = "b[decorative]-b[asterisk]-b[green]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/green-asterisk/green-asterisk-01.png",
            height = 24,
            width = 25
          }, {
            filename = "__base__/graphics/entity/decorative/green-asterisk/green-asterisk-02.png",
            height = 22,
            width = 25
          }, {
            filename = "__base__/graphics/entity/decorative/green-asterisk/green-asterisk-03.png",
            height = 21,
            width = 29
          }, {
            filename = "__base__/graphics/entity/decorative/green-asterisk/green-asterisk-04.png",
            height = 23,
            width = 27
          }, {
            filename = "__base__/graphics/entity/decorative/green-asterisk/green-asterisk-05.png",
            height = 24,
            width = 38
          }, {
            filename = "__base__/graphics/entity/decorative/green-asterisk/green-asterisk-06.png",
            height = 22,
            width = 32
          }, {
            filename = "__base__/graphics/entity/decorative/green-asterisk/green-asterisk-07.png",
            height = 21,
            width = 40
          }, {
            filename = "__base__/graphics/entity/decorative/green-asterisk/green-asterisk-08.png",
            height = 29,
            width = 40
          }, {
            filename = "__base__/graphics/entity/decorative/green-asterisk/green-asterisk-09.png",
            height = 26,
            width = 33
          }, {
            filename = "__base__/graphics/entity/decorative/green-asterisk/green-asterisk-10.png",
            height = 14,
            width = 24
          }, {
            filename = "__base__/graphics/entity/decorative/green-asterisk/green-asterisk-11.png",
            height = 28,
            width = 22
          }, {
            filename = "__base__/graphics/entity/decorative/green-asterisk/green-asterisk-12.png",
            height = 20,
            width = 20
          } },
        render_layer = "decorative",
        selectable_in_game = false,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["green-bush-mini"] = {
        autoplace = {
          max_probability = 0.8,
          order = "a[doodad]-e[garballo]",
          peaks = { {
              influence = 0.57,
              noise_layer = "garballo",
              noise_octaves_difference = -2,
              noise_persistence = 0.8
            }, {
              elevation_max_range = 10,
              elevation_optimal = 5,
              elevation_range = 0,
              influence = 0.3,
              min_influence = 0
            }, {
              influence = 0.01
            }, {
              influence = 0.005,
              max_influence = 0,
              noise_layer = "garballo-mini",
              noise_octaves_difference = -3,
              noise_persistence = 0.9
            }, {
              influence = -0.005,
              max_influence = 0,
              noise_layer = "garballo-mini",
              noise_octaves_difference = -3,
              noise_persistence = 0.9
            }, {
              influence = 0.3,
              min_influence = 0,
              temperature_max_range = 10,
              temperature_optimal = 25,
              temperature_range = 5,
              water_max_range = 0.2,
              water_optimal = 0.4,
              water_range = 0.1
            } },
          sharpness = 1
        },
        collision_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/green-bush-mini.png",
        name = "green-bush-mini",
        order = "b[decorative]-j[bush]-a[mini]-a[green]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/green-bush-mini/green-bush-mini-01.png",
            height = 24,
            width = 33
          }, {
            filename = "__base__/graphics/entity/decorative/green-bush-mini/green-bush-mini-02.png",
            height = 21,
            width = 30
          }, {
            filename = "__base__/graphics/entity/decorative/green-bush-mini/green-bush-mini-03.png",
            height = 26,
            width = 50
          }, {
            filename = "__base__/graphics/entity/decorative/green-bush-mini/green-bush-mini-04.png",
            height = 22,
            width = 31
          }, {
            filename = "__base__/graphics/entity/decorative/green-bush-mini/green-bush-mini-05.png",
            height = 15,
            width = 16
          }, {
            filename = "__base__/graphics/entity/decorative/green-bush-mini/green-bush-mini-06.png",
            height = 15,
            width = 17
          }, {
            filename = "__base__/graphics/entity/decorative/green-bush-mini/green-bush-mini-07.png",
            height = 18,
            width = 33
          } },
        selectable_in_game = false,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["green-carpet-grass"] = {
        autoplace = {
          max_probability = 0.01,
          order = "a[doodad]-f[grass]-c",
          peaks = { {
              influence = 0.3,
              noise_layer = "grass1",
              noise_octaves_difference = -2.8,
              noise_persistence = 0.5
            }, {
              influence = 0.6,
              min_influence = 0,
              temperature_max_range = 10,
              temperature_optimal = 25,
              temperature_range = 5,
              water_max_range = 0.15,
              water_optimal = 0.85,
              water_range = 0.05
            }, {
              influence = 0.6,
              min_influence = 0,
              temperature_max_range = 7.5,
              temperature_optimal = 12.5,
              temperature_range = 2.5,
              water_max_range = 0.15,
              water_optimal = 0.45,
              water_range = 0.05
            }, {
              influence = 0.6,
              min_influence = 0,
              temperature_max_range = 7.5,
              temperature_optimal = 17.5,
              temperature_range = 2.5,
              water_max_range = 0.15,
              water_optimal = 0.15,
              water_range = 0.05
            } },
          sharpness = 0.7
        },
        collision_box = { { -2, -2 }, { 2, 2 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/green-carpet-grass.png",
        name = "green-carpet-grass",
        order = "b[decorative]-a[grass]-b[carpet]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/green-carpet-grass/green-carpet-grass-01.png",
            height = 73,
            width = 105
          }, {
            filename = "__base__/graphics/entity/decorative/green-carpet-grass/green-carpet-grass-02.png",
            height = 164,
            width = 185
          }, {
            filename = "__base__/graphics/entity/decorative/green-carpet-grass/green-carpet-grass-03.png",
            height = 171,
            width = 173
          }, {
            filename = "__base__/graphics/entity/decorative/green-carpet-grass/green-carpet-grass-04.png",
            height = 172,
            width = 106
          }, {
            filename = "__base__/graphics/entity/decorative/green-carpet-grass/green-carpet-grass-05.png",
            height = 186,
            width = 204
          }, {
            filename = "__base__/graphics/entity/decorative/green-carpet-grass/green-carpet-grass-06.png",
            height = 138,
            width = 149
          }, {
            filename = "__base__/graphics/entity/decorative/green-carpet-grass/green-carpet-grass-07.png",
            height = 160,
            width = 173
          } },
        selectable_in_game = false,
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["green-coral-mini"] = {
        autoplace = {
          max_probability = 0.15,
          order = "a[doodad]-z[other]",
          peaks = { {
              influence = 0.4,
              noise_layer = "coral",
              noise_octaves_difference = -2,
              noise_persistence = 0.9
            }, {
              influence = -0.3
            }, {
              influence = 0.5,
              min_influence = 0,
              temperature_max_range = 7.5,
              temperature_optimal = 32.5,
              temperature_range = 2.5,
              water_max_range = 0.2,
              water_optimal = 0.3,
              water_range = 0.1
            } },
          sharpness = 0.3
        },
        collision_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/green-coral-mini.png",
        name = "green-coral-mini",
        order = "b[decorative]-f[coral]-b[mini]-a[green]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/green-coral-mini/green-coral-mini-01.png",
            height = 57,
            shift = { 0, 0.3 },
            width = 52
          }, {
            filename = "__base__/graphics/entity/decorative/green-coral-mini/green-coral-mini-02.png",
            height = 27,
            width = 20
          }, {
            filename = "__base__/graphics/entity/decorative/green-coral-mini/green-coral-mini-03.png",
            height = 39,
            shift = { 0.2, 0 },
            width = 37
          }, {
            filename = "__base__/graphics/entity/decorative/green-coral-mini/green-coral-mini-04.png",
            height = 49,
            shift = { 0.4, 0.3 },
            width = 46
          }, {
            filename = "__base__/graphics/entity/decorative/green-coral-mini/green-coral-mini-05.png",
            height = 54,
            shift = { 0.2, 0.2 },
            width = 33
          }, {
            filename = "__base__/graphics/entity/decorative/green-coral-mini/green-coral-mini-06.png",
            height = 41,
            shift = { -0.1, 0 },
            width = 34
          } },
        render_layer = "object",
        selectable_in_game = false,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["green-hairy-grass"] = {
        autoplace = {
          max_probability = 0.01,
          order = "a[doodad]-f[grass]-b",
          peaks = { {
              influence = 0.3,
              noise_layer = "grass2",
              noise_octaves_difference = -2.8,
              noise_persistence = 0.5
            }, {
              influence = 0.6,
              min_influence = 0,
              temperature_max_range = 10,
              temperature_optimal = 25,
              temperature_range = 5,
              water_max_range = 0.15,
              water_optimal = 0.85,
              water_range = 0.05
            }, {
              influence = 0.6,
              min_influence = 0,
              temperature_max_range = 7.5,
              temperature_optimal = 12.5,
              temperature_range = 2.5,
              water_max_range = 0.15,
              water_optimal = 0.45,
              water_range = 0.05
            }, {
              influence = 0.6,
              min_influence = 0,
              temperature_max_range = 7.5,
              temperature_optimal = 17.5,
              temperature_range = 2.5,
              water_max_range = 0.15,
              water_optimal = 0.15,
              water_range = 0.05
            } },
          sharpness = 0.2
        },
        collision_box = { { -1, -1 }, { 1, 1 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/green-hairy-grass.png",
        name = "green-hairy-grass",
        order = "b[decorative]-a[grass]-a[hairy]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-01.png",
            height = 28,
            width = 87
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-02.png",
            height = 26,
            width = 45
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-03.png",
            height = 38,
            width = 43
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-04.png",
            height = 29,
            width = 49
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-05.png",
            height = 29,
            width = 61
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-06.png",
            height = 27,
            width = 27
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-07.png",
            height = 34,
            width = 33
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-08.png",
            height = 30,
            width = 38
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-09.png",
            height = 35,
            width = 33
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-10.png",
            height = 46,
            width = 39
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-11.png",
            height = 47,
            width = 93
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-12.png",
            height = 47,
            width = 40
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-13.png",
            height = 43,
            width = 52
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-14.png",
            height = 42,
            width = 41
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-15.png",
            height = 36,
            width = 39
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-16.png",
            height = 22,
            width = 41
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-17.png",
            height = 18,
            width = 53
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-18.png",
            height = 26,
            width = 20
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-19.png",
            height = 25,
            width = 29
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-20.png",
            height = 31,
            width = 54
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-21.png",
            height = 39,
            width = 61
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-22.png",
            height = 19,
            width = 29
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-23.png",
            height = 23,
            width = 34
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-24.png",
            height = 27,
            width = 60
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-25.png",
            height = 55,
            width = 93
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-26.png",
            height = 30,
            width = 43
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-27.png",
            height = 43,
            width = 103
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-28.png",
            height = 44,
            width = 40
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-29.png",
            height = 29,
            width = 50
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-30.png",
            height = 53,
            width = 47
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-31.png",
            height = 44,
            width = 60
          }, {
            filename = "__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-32.png",
            height = 40,
            width = 88
          } },
        selectable_in_game = false,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["green-pita"] = {
        autoplace = {
          order = "a[doodad]-b[pita]",
          peaks = { {
              influence = -0.3
            }, {
              influence = 0.7,
              noise_layer = "pita",
              noise_octaves_difference = -2,
              noise_persistence = 0.5
            }, {
              influence = -0.01,
              noise_layer = "pita-mini",
              noise_octaves_difference = -3,
              noise_persistence = 0.9
            }, {
              influence = 0.5,
              min_influence = 0,
              temperature_max_range = 15,
              temperature_optimal = 10,
              temperature_range = 10,
              water_max_range = 0.2,
              water_optimal = 0.2,
              water_range = 0.1
            } },
          sharpness = 0.9
        },
        collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/green-pita.png",
        name = "green-pita",
        order = "b[decorative]-c[pita]-a[green]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/green-pita/green-pita-01.png",
            height = 49,
            width = 60
          }, {
            filename = "__base__/graphics/entity/decorative/green-pita/green-pita-02.png",
            height = 46,
            width = 62
          }, {
            filename = "__base__/graphics/entity/decorative/green-pita/green-pita-03.png",
            height = 56,
            width = 57
          }, {
            filename = "__base__/graphics/entity/decorative/green-pita/green-pita-04.png",
            height = 54,
            width = 60
          }, {
            filename = "__base__/graphics/entity/decorative/green-pita/green-pita-05.png",
            height = 49,
            width = 60
          }, {
            filename = "__base__/graphics/entity/decorative/green-pita/green-pita-06.png",
            height = 47,
            width = 57
          }, {
            filename = "__base__/graphics/entity/decorative/green-pita/green-pita-07.png",
            height = 51,
            width = 59
          }, {
            filename = "__base__/graphics/entity/decorative/green-pita/green-pita-08.png",
            height = 46,
            width = 60
          } },
        render_layer = "object",
        selectable_in_game = false,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["green-pita-mini"] = {
        autoplace = {
          order = "a[doodad]-b[pita]",
          peaks = { {
              influence = -0.3
            }, {
              influence = 0.7,
              noise_layer = "pita",
              noise_octaves_difference = -2,
              noise_persistence = 0.5
            }, {
              influence = 0.01,
              noise_layer = "pita-mini",
              noise_octaves_difference = -3,
              noise_persistence = 0.9
            }, {
              influence = 0.5,
              min_influence = 0,
              temperature_max_range = 15,
              temperature_optimal = 10,
              temperature_range = 10,
              water_max_range = 0.25,
              water_optimal = 0.15,
              water_range = 0.15
            } },
          sharpness = 0.9
        },
        collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/green-pita-mini.png",
        name = "green-pita-mini",
        order = "b[decorative]-d[pita-mini]-a[green]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/green-pita-mini/green-pita-mini-01.png",
            height = 29,
            width = 32
          }, {
            filename = "__base__/graphics/entity/decorative/green-pita-mini/green-pita-mini-02.png",
            height = 28,
            width = 37
          }, {
            filename = "__base__/graphics/entity/decorative/green-pita-mini/green-pita-mini-03.png",
            height = 28,
            width = 35
          }, {
            filename = "__base__/graphics/entity/decorative/green-pita-mini/green-pita-mini-04.png",
            height = 28,
            width = 32
          } },
        render_layer = "decorative",
        selectable_in_game = false,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["green-small-grass"] = {
        autoplace = {
          max_probability = 0.01,
          order = "a[doodad]-f[grass]-d",
          peaks = { {
              influence = 0.35,
              noise_layer = "grass1",
              noise_octaves_difference = -2.8,
              noise_persistence = 0.5
            }, {
              influence = 0.6,
              min_influence = 0,
              temperature_max_range = 10,
              temperature_optimal = 25,
              temperature_range = 5,
              water_max_range = 0.15,
              water_optimal = 0.85,
              water_range = 0.05
            }, {
              influence = 0.6,
              min_influence = 0,
              temperature_max_range = 7.5,
              temperature_optimal = 12.5,
              temperature_range = 2.5,
              water_max_range = 0.15,
              water_optimal = 0.45,
              water_range = 0.05
            }, {
              influence = 0.6,
              min_influence = 0,
              temperature_max_range = 7.5,
              temperature_optimal = 17.5,
              temperature_range = 2.5,
              water_max_range = 0.15,
              water_optimal = 0.15,
              water_range = 0.05
            } },
          sharpness = 0.2
        },
        collision_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/green-small-grass.png",
        name = "green-small-grass",
        order = "b[decorative]-a[grass]-c[small]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/green-small-grass/green-small-grass-01.png",
            height = 42,
            width = 91
          }, {
            filename = "__base__/graphics/entity/decorative/green-small-grass/green-small-grass-02.png",
            height = 36,
            width = 38
          }, {
            filename = "__base__/graphics/entity/decorative/green-small-grass/green-small-grass-03.png",
            height = 51,
            width = 65
          }, {
            filename = "__base__/graphics/entity/decorative/green-small-grass/green-small-grass-04.png",
            height = 37,
            width = 65
          }, {
            filename = "__base__/graphics/entity/decorative/green-small-grass/green-small-grass-05.png",
            height = 31,
            width = 46
          }, {
            filename = "__base__/graphics/entity/decorative/green-small-grass/green-small-grass-06.png",
            height = 36,
            width = 56
          }, {
            filename = "__base__/graphics/entity/decorative/green-small-grass/green-small-grass-07.png",
            height = 24,
            width = 27
          }, {
            filename = "__base__/graphics/entity/decorative/green-small-grass/green-small-grass-08.png",
            height = 27,
            width = 57
          } },
        selectable_in_game = false,
        selection_box = { { -1, -1 }, { 1, 1 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["orange-coral-mini"] = {
        autoplace = {
          max_probability = 0.15,
          order = "a[doodad]-z[other]",
          peaks = { {
              influence = 0.4,
              noise_layer = "coral",
              noise_octaves_difference = -2,
              noise_persistence = 0.9
            }, {
              influence = -0.3
            }, {
              influence = 0.5,
              min_influence = 0,
              temperature_max_range = 12.5,
              temperature_optimal = 27.5,
              temperature_range = 7.5,
              water_max_range = 0.2,
              water_optimal = 0.3,
              water_range = 0.1
            } },
          sharpness = 0.3
        },
        collision_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/orange-coral-mini.png",
        name = "orange-coral-mini",
        order = "b[decorative]-f[coral]-b[mini]-c[orange]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/orange-coral-mini/orange-coral-mini-01.png",
            height = 58,
            shift = { 0, 0.3 },
            width = 50
          }, {
            filename = "__base__/graphics/entity/decorative/orange-coral-mini/orange-coral-mini-02.png",
            height = 28,
            shift = { 0.1, 0 },
            width = 21
          }, {
            filename = "__base__/graphics/entity/decorative/orange-coral-mini/orange-coral-mini-03.png",
            height = 39,
            shift = { 0.3, 0 },
            width = 39
          }, {
            filename = "__base__/graphics/entity/decorative/orange-coral-mini/orange-coral-mini-04.png",
            height = 50,
            shift = { 0.6, 0.35 },
            width = 47
          }, {
            filename = "__base__/graphics/entity/decorative/orange-coral-mini/orange-coral-mini-05.png",
            height = 55,
            shift = { 0.25, 0.2 },
            width = 33
          }, {
            filename = "__base__/graphics/entity/decorative/orange-coral-mini/orange-coral-mini-06.png",
            height = 42,
            width = 36
          } },
        render_layer = "object",
        selectable_in_game = false,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["red-asterisk"] = {
        autoplace = {
          max_probability = 0.05,
          order = "a[doodad]-z[other]",
          peaks = { {
              influence = 0.5,
              min_influence = 0,
              temperature_max_range = 25,
              temperature_optimal = 15,
              temperature_range = 20,
              water_max_range = 0.25,
              water_optimal = 0.55,
              water_range = 0.15
            } }
        },
        collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/red-asterisk.png",
        name = "red-asterisk",
        order = "b[decorative]-b[asterisk]-c[red]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/red-asterisk/red-asterisk-01.png",
            height = 29,
            width = 31
          }, {
            filename = "__base__/graphics/entity/decorative/red-asterisk/red-asterisk-02.png",
            height = 27,
            width = 24
          }, {
            filename = "__base__/graphics/entity/decorative/red-asterisk/red-asterisk-03.png",
            height = 24,
            width = 28
          }, {
            filename = "__base__/graphics/entity/decorative/red-asterisk/red-asterisk-04.png",
            height = 24,
            width = 36
          }, {
            filename = "__base__/graphics/entity/decorative/red-asterisk/red-asterisk-05.png",
            height = 28,
            width = 30
          }, {
            filename = "__base__/graphics/entity/decorative/red-asterisk/red-asterisk-06.png",
            height = 21,
            width = 32
          }, {
            filename = "__base__/graphics/entity/decorative/red-asterisk/red-asterisk-07.png",
            height = 26,
            width = 29
          } },
        render_layer = "decorative",
        selectable_in_game = false,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["root-A"] = {
        autoplace = {
          influence = 0.01,
          order = "a[doodad]-z[other]"
        },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/root-a.png",
        name = "root-A",
        order = "b[decorative]-h[root]-a[small]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/roots/root-A-01.png",
            height = 10,
            width = 22
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-02.png",
            height = 11,
            width = 9
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-03.png",
            height = 10,
            width = 11
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-04.png",
            height = 17,
            width = 13
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-05.png",
            height = 11,
            width = 15
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-06.png",
            height = 13,
            width = 14
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-07.png",
            height = 13,
            width = 15
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-08.png",
            height = 15,
            width = 12
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-09.png",
            height = 16,
            width = 22
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-10.png",
            height = 10,
            width = 11
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-11.png",
            height = 18,
            width = 22
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-12.png",
            height = 17,
            width = 26
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-13.png",
            height = 13,
            width = 15
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-14.png",
            height = 13,
            width = 13
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-15.png",
            height = 17,
            width = 22
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-16.png",
            height = 16,
            width = 22
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-17.png",
            height = 15,
            width = 13
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-18.png",
            height = 17,
            width = 14
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-19.png",
            height = 10,
            width = 12
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-A-20.png",
            height = 14,
            width = 13
          } },
        selectable_in_game = false,
        selection_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["root-B"] = {
        autoplace = {
          influence = 0.01,
          order = "a[doodad]-z[other]"
        },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/root-b.png",
        name = "root-B",
        order = "b[decorative]-h[root]-b[big]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/roots/root-B-01.png",
            height = 20,
            width = 38
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-B-02.png",
            height = 25,
            width = 32
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-B-03.png",
            height = 34,
            width = 36
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-B-04.png",
            height = 32,
            width = 40
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-B-05.png",
            height = 24,
            width = 29
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-B-06.png",
            height = 32,
            width = 38
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-B-07.png",
            height = 28,
            width = 19
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-B-08.png",
            height = 29,
            width = 46
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-B-09.png",
            height = 23,
            width = 34
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-B-10.png",
            height = 27,
            width = 21
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-B-11.png",
            height = 24,
            width = 29
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-B-12.png",
            height = 14,
            width = 28
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-B-13.png",
            height = 25,
            width = 34
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-B-14.png",
            height = 25,
            width = 33
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-B-15.png",
            height = 16,
            width = 21
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-B-16.png",
            height = 22,
            width = 35
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-B-17.png",
            height = 13,
            width = 35
          }, {
            filename = "__base__/graphics/entity/decorative/roots/root-B-18.png",
            height = 25,
            width = 33
          } },
        selectable_in_game = false,
        selection_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["small-rock"] = {
        autoplace = {
          order = "a[doodad]-a[rock]",
          peaks = { {
              influence = 0.0002
            }, {
              elevation_max_range = 30000,
              elevation_optimal = 30000,
              elevation_range = 23000,
              influence = 0.002,
              min_influence = 0
            } }
        },
        collision_box = { { -1.1, -1.1 }, { 1.1, 1.1 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/small-stone-rock.png",
        name = "small-rock",
        order = "b[decorative]-k[stone-rock]-b[small]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-01.png",
            height = 37,
            shift = { 0.21, -0.18 },
            width = 47
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-02.png",
            height = 38,
            shift = { 0.25, -0.1 },
            width = 46
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-03.png",
            height = 42,
            shift = { 0.28, -0.21 },
            width = 48
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-04.png",
            height = 39,
            shift = { 0.28, -0.12 },
            width = 56
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-05.png",
            height = 36,
            shift = { 0.34, -0.125 },
            width = 54
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-06.png",
            height = 26,
            shift = { 0, 0 },
            width = 32
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-07.png",
            height = 28,
            shift = { 0, 0 },
            width = 33
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-08.png",
            height = 26,
            shift = { 0.15, 0 },
            width = 35
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-09.png",
            height = 23,
            shift = { 0.125, 0 },
            width = 35
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-10.png",
            height = 21,
            shift = { 0, 0 },
            width = 21
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-11.png",
            height = 16,
            shift = { 0, 0 },
            width = 24
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-12.png",
            height = 17,
            shift = { 0, 0 },
            width = 19
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-13.png",
            height = 15,
            shift = { 0, 0 },
            width = 23
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-14.png",
            height = 42,
            shift = { 0.28, -0.18 },
            width = 44
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-15.png",
            height = 41,
            shift = { 0.31, -0.18 },
            width = 51
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-16.png",
            height = 40,
            shift = { 0.25, -0.18 },
            width = 55
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-17.png",
            height = 44,
            shift = { 0.37, -0.21 },
            width = 52
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-18.png",
            height = 39,
            shift = { 0.46, -0.15 },
            width = 57
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-19.png",
            height = 23,
            shift = { 0, 0 },
            width = 20
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-20.png",
            height = 22,
            shift = { 0, -0.37 },
            width = 25
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-21.png",
            height = 16,
            shift = { 0, 0.25 },
            width = 31
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-22.png",
            height = 16,
            shift = { 0.25, -0.25 },
            width = 29
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-23.png",
            height = 20,
            shift = { -0.1, -0.18 },
            width = 21
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-24.png",
            height = 29,
            shift = { 0.25, 0 },
            width = 47
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-25.png",
            height = 33,
            shift = { 0, -0.12 },
            width = 34
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-26.png",
            height = 28,
            shift = { 0.06, -0.25 },
            width = 38
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-27.png",
            height = 26,
            shift = { 0, 0 },
            width = 31
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-28.png",
            height = 24,
            shift = { 0.18, -0.09 },
            width = 45
          }, {
            filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-29.png",
            height = 26,
            shift = { 0.21, -0.09 },
            width = 48
          } },
        render_layer = "decorative",
        selectable_in_game = false,
        selection_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
        subgroup = "grass",
        type = "decorative"
      },
      ["small-ship-wreck-grass"] = {
        collision_box = { { -1.5, -0.5 }, { 1.5, 0.5 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/ship-wreck/small-ship-wreck-grass.png",
        name = "small-ship-wreck-grass",
        order = "d[remnants]-d[ship-wreck-grass]-b[small]",
        pictures = { {
            filename = "__base__/graphics/entity/ship-wreck/small-ship-wreck-grass-1.png",
            height = 45,
            width = 129
          }, {
            filename = "__base__/graphics/entity/ship-wreck/small-ship-wreck-grass-2.png",
            height = 34,
            width = 121
          }, {
            filename = "__base__/graphics/entity/ship-wreck/small-ship-wreck-grass-3.png",
            height = 37,
            width = 115
          } },
        render_layer = "floor",
        selectable_in_game = false,
        selection_box = { { -1.7, -0.6 }, { 1.7, 0.6 } },
        subgroup = "wrecks",
        type = "decorative"
      }
    },
    ["electric-pole"] = {
      ["big-electric-pole"] = {
        collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
        connection_points = { {
            shadow = {
              copper = { 2.7, 0 },
              green = { 1.8, 0 },
              red = { 3.6, 0 }
            },
            wire = {
              copper = { 0, -3.1 },
              green = { -0.6, -3.1 },
              red = { 0.6, -3.1 }
            }
          }, {
            shadow = {
              copper = { 3.1, 0.2 },
              green = { 2.3, -0.3 },
              red = { 3.8, 0.6 }
            },
            wire = {
              copper = { -0.08, -3.15 },
              green = { -0.55, -3.5 },
              red = { 0.3, -2.87 }
            }
          }, {
            shadow = {
              copper = { 2.9, 0.06 },
              green = { 3, -0.6 },
              red = { 3, 0.8 }
            },
            wire = {
              copper = { -0.1, -3.1 },
              green = { -0.1, -3.55 },
              red = { -0.1, -2.8 }
            }
          }, {
            shadow = {
              copper = { 3.1, 0.2 },
              green = { 3.8, -0.3 },
              red = { 2.35, 0.6 }
            },
            wire = {
              copper = { 0, -3.25 },
              green = { 0.45, -3.55 },
              red = { -0.54, -3 }
            }
          } },
        copper_wire_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
          height = 46,
          priority = "extra-high-no-scale",
          width = 224
        },
        corpse = "medium-remnants",
        drawing_box = { { -2.8, -0.5 }, { 0.5, 0.5 } },
        flags = { "placeable-neutral", "player-creation" },
        green_wire_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
          height = 46,
          priority = "extra-high-no-scale",
          width = 224
        },
        icon = "__base__/graphics/icons/big-electric-pole.png",
        max_health = 150,
        maximum_wire_distance = 30,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "big-electric-pole"
        },
        name = "big-electric-pole",
        pictures = {
          axially_symmetrical = false,
          direction_count = 4,
          filename = "__base__/graphics/entity/big-electric-pole/big-electric-pole.png",
          height = 165,
          priority = "high",
          shift = { 1.6, -1.1 },
          width = 168
        },
        radius_visualisation_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
          height = 12,
          width = 12
        },
        red_wire_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
          height = 46,
          priority = "extra-high-no-scale",
          width = 224
        },
        resistances = { {
            percent = 100,
            type = "fire"
          } },
        selection_box = { { -1, -1 }, { 1, 1 } },
        supply_area_distance = 2,
        type = "electric-pole",
        wire_shadow_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
          height = 46,
          priority = "extra-high-no-scale",
          width = 224
        }
      },
      ["medium-electric-pole"] = {
        collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
        connection_points = { {
            shadow = {
              copper = { 2.55, 0.4 },
              green = { 2, 0.4 },
              red = { 3.05, 0.4 }
            },
            wire = {
              copper = { -0.03, -2.5 },
              green = { -0.35, -2.5 },
              red = { 0.25, -2.5 }
            }
          }, {
            shadow = {
              copper = { 2.9, 0.1 },
              green = { 2.6, -0.15 },
              red = { 3.25, 0.35 }
            },
            wire = {
              copper = { 0.05, -2.75 },
              green = { -0.15, -2.9 },
              red = { 0.25, -2.55 }
            }
          }, {
            shadow = {
              copper = { 1.5, -0.2 },
              green = { 1.5, -0.55 },
              red = { 1.5, 0.1 }
            },
            wire = {
              copper = { -0.43, -2.4 },
              green = { -0.43, -2.63 },
              red = { -0.43, -2.2 }
            }
          }, {
            shadow = {
              copper = { 2.88, 0.2 },
              green = { 3.2, -0.1 },
              red = { 2.45, 0.4 }
            },
            wire = {
              copper = { 0, -2.7 },
              green = { 0.22, -2.85 },
              red = { -0.24, -2.55 }
            }
          } },
        copper_wire_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
          height = 46,
          priority = "extra-high-no-scale",
          width = 224
        },
        corpse = "small-remnants",
        drawing_box = { { -0.5, -2.8 }, { 0.5, 0.5 } },
        flags = { "placeable-neutral", "player-creation" },
        green_wire_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
          height = 46,
          priority = "extra-high-no-scale",
          width = 224
        },
        icon = "__base__/graphics/icons/medium-electric-pole.png",
        max_health = 100,
        maximum_wire_distance = 9,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "medium-electric-pole"
        },
        name = "medium-electric-pole",
        pictures = {
          axially_symmetrical = false,
          direction_count = 4,
          filename = "__base__/graphics/entity/medium-electric-pole/medium-electric-pole.png",
          height = 122,
          priority = "high",
          shift = { 1.4, -1 },
          width = 136
        },
        radius_visualisation_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
          height = 12,
          width = 12
        },
        red_wire_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
          height = 46,
          priority = "extra-high-no-scale",
          width = 224
        },
        resistances = { {
            percent = 100,
            type = "fire"
          } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        supply_area_distance = 3.5,
        type = "electric-pole",
        wire_shadow_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
          height = 46,
          priority = "extra-high-no-scale",
          width = 224
        }
      },
      ["small-electric-pole"] = {
        collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
        connection_points = { {
            shadow = {
              copper = { 2.7, 0 },
              green = { 3.1, 0 },
              red = { 2.3, 0 }
            },
            wire = {
              copper = { 0, -2.7 },
              green = { 0.4, -2.7 },
              red = { -0.4, -2.7 }
            }
          }, {
            shadow = {
              copper = { 2.7, -0.05 },
              green = { 3, 0.12 },
              red = { 2.2, -0.35 }
            },
            wire = {
              copper = { -0.04, -2.8 },
              green = { 0.2, -2.6 },
              red = { -0.3, -2.9 }
            }
          }, {
            shadow = {
              copper = { 2.5, -0.1 },
              green = { 2.5, 0.25 },
              red = { 2.55, -0.45 }
            },
            wire = {
              copper = { -0.2, -2.7 },
              green = { 0, -2.4 },
              red = { -0.05, -2.95 }
            }
          }, {
            shadow = {
              copper = { 2.3, -0.1 },
              green = { 1.75, 0.2 },
              red = { 2.65, -0.4 }
            },
            wire = {
              copper = { 0, -2.7 },
              green = { -0.3, -2.5 },
              red = { 0.3, -2.85 }
            }
          } },
        copper_wire_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
          height = 46,
          priority = "extra-high-no-scale",
          width = 224
        },
        corpse = "small-remnants",
        drawing_box = { { -0.5, -2.3 }, { 0.5, 0.5 } },
        flags = { "placeable-neutral", "player-creation" },
        green_wire_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
          height = 46,
          priority = "extra-high-no-scale",
          width = 224
        },
        icon = "__base__/graphics/icons/small-electric-pole.png",
        max_health = 35,
        maximum_wire_distance = 7.5,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "small-electric-pole"
        },
        name = "small-electric-pole",
        pictures = {
          axially_symetric = false,
          direction_count = 4,
          filename = "__base__/graphics/entity/small-electric-pole/small-electric-pole.png",
          height = 124,
          priority = "extra-high",
          shift = { 1.4, -1.1 },
          width = 123
        },
        radius_visualisation_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
          height = 12,
          width = 12
        },
        red_wire_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
          height = 46,
          priority = "extra-high-no-scale",
          width = 224
        },
        selection_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        supply_area_distance = 2.5,
        type = "electric-pole",
        wire_shadow_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
          height = 46,
          priority = "extra-high-no-scale",
          width = 224
        }
      },
      substation = {
        collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
        connection_points = { {
            shadow = {
              copper = { 1.9, -0.6 },
              green = { 1.3, -0.6 },
              red = { 2.65, -0.6 }
            },
            wire = {
              copper = { -0.23, -2.65 },
              green = { -0.85, -2.65 },
              red = { 0.35, -2.65 }
            }
          }, {
            shadow = {
              copper = { 1.9, -0.6 },
              green = { 1.2, -0.8 },
              red = { 2.5, -0.35 }
            },
            wire = {
              copper = { -0.26, -2.71 },
              green = { -0.67, -3 },
              red = { 0.17, -2.47 }
            }
          }, {
            shadow = {
              copper = { 1.9, -0.6 },
              green = { 1.9, -0.9 },
              red = { 1.9, -0.3 }
            },
            wire = {
              copper = { -0.23, -2.7 },
              green = { -0.23, -3.2 },
              red = { -0.23, -2.35 }
            }
          }, {
            shadow = {
              copper = { 1.8, -0.7 },
              green = { 1.3, -0.6 },
              red = { 2.4, -1.15 }
            },
            wire = {
              copper = { -0.2, -2.7 },
              green = { -0.62, -2.45 },
              red = { 0.25, -2.98 }
            }
          } },
        copper_wire_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
          height = 46,
          priority = "extra-high-no-scale",
          width = 224
        },
        corpse = "medium-remnants",
        drawing_box = { { -1, -1.5 }, { 1, 1 } },
        flags = { "placeable-neutral", "player-creation" },
        green_wire_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
          height = 46,
          priority = "extra-high-no-scale",
          width = 224
        },
        icon = "__base__/graphics/icons/substation.png",
        max_health = 200,
        maximum_wire_distance = 14,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "substation"
        },
        name = "substation",
        pictures = {
          axially_symmetrical = false,
          direction_count = 4,
          filename = "__base__/graphics/entity/substation/substation.png",
          height = 144,
          priority = "high",
          shift = { 0.9, -1 },
          width = 132
        },
        radius_visualisation_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
          height = 12,
          width = 12
        },
        red_wire_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
          height = 46,
          priority = "extra-high-no-scale",
          width = 224
        },
        resistances = { {
            percent = 90,
            type = "fire"
          } },
        selection_box = { { -1, -1 }, { 1, 1 } },
        supply_area_distance = 7,
        type = "electric-pole",
        wire_shadow_picture = {
          filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
          height = 46,
          priority = "extra-high-no-scale",
          width = 224
        },
        working_sound = {
          apparent_volume = 1.5,
          sound = {
            filename = "__base__/sound/substation.ogg"
          }
        }
      }
    },
    ["electric-turret"] = {
      ["laser-turret"] = {
        attack_parameters = {
          ammo_category = "electric",
          ammo_type = {
            action = { {
                action_delivery = { {
                    projectile = "laser",
                    starting_speed = 0.28,
                    type = "projectile"
                  } },
                type = "direct"
              } },
            category = "laser-turret",
            energy_consumption = "200kJ",
            type = "projectile"
          },
          cooldown = 20,
          damage = 2,
          projectile_center = { 0, 0 },
          projectile_creation_distance = 0.6,
          range = 25,
          sound = { {
              filename = "__base__/sound/laser.ogg",
              volume = 0.4
            } }
        },
        base_picture = {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
          height = 28,
          priority = "high",
          shift = { 0.109375, 0.03125 },
          width = 43
        },
        collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        corpse = "small-remnants",
        dying_explosion = "huge-explosion",
        energy_source = {
          buffer_capacity = "201kJ",
          drain = "6kW",
          input_flow_limit = "1200kW",
          type = "electric",
          usage_priority = "primary-input"
        },
        flags = { "placeable-player", "placeable-enemy", "player-creation" },
        folded_animation = {
          axially_symmetrical = false,
          direction_count = 4,
          filename = "__base__/graphics/entity/laser-turret/laser-turret-extension.png",
          frame_count = 1,
          height = 74,
          line_length = 1,
          priority = "medium",
          shift = { 1.171875, -0.34375 },
          width = 131
        },
        folding_animation = {
          axially_symmetrical = false,
          direction_count = 4,
          filename = "__base__/graphics/entity/laser-turret/laser-turret-extension.png",
          frame_count = 5,
          height = 74,
          priority = "medium",
          run_mode = "backward",
          shift = { 1.171875, -0.34375 },
          width = 131
        },
        folding_speed = 0.05,
        icon = "__base__/graphics/icons/laser-turret.png",
        max_health = 250,
        minable = {
          mining_time = 0.5,
          result = "laser-turret"
        },
        name = "laser-turret",
        prepared_animation = {
          axially_symmetrical = false,
          direction_count = 64,
          filename = "__base__/graphics/entity/laser-turret/laser-turret.png",
          frame_count = 1,
          height = 72,
          line_length = 8,
          priority = "medium",
          shift = { 1.328125, -0.375 },
          width = 131
        },
        preparing_animation = {
          axially_symmetrical = false,
          direction_count = 4,
          filename = "__base__/graphics/entity/laser-turret/laser-turret-extension.png",
          frame_count = 5,
          height = 74,
          priority = "medium",
          shift = { 1.171875, -0.34375 },
          width = 131
        },
        preparing_speed = 0.05,
        rotation_speed = 0.01,
        selection_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        type = "electric-turret"
      }
    },
    ["energy-shield-equipment"] = {
      ["energy-shield-equipment"] = {
        energy_per_shield = "20J",
        energy_source = {
          buffer_capacity = "120J",
          input_flow_limit = "240W",
          type = "electric",
          usage_priority = "primary-input"
        },
        max_shield_value = 50,
        name = "energy-shield-equipment",
        shape = {
          height = 2,
          type = "full",
          width = 2
        },
        sprite = {
          filename = "__base__/graphics/equipment/energy-shield-equipment.png",
          height = 64,
          priority = "medium",
          width = 64
        },
        type = "energy-shield-equipment"
      },
      ["energy-shield-mk2-equipment"] = {
        energy_per_shield = "30J",
        energy_source = {
          buffer_capacity = "180J",
          input_flow_limit = "360W",
          type = "electric",
          usage_priority = "primary-input"
        },
        max_shield_value = 150,
        name = "energy-shield-mk2-equipment",
        shape = {
          height = 2,
          type = "full",
          width = 2
        },
        sprite = {
          filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
          height = 64,
          priority = "medium",
          width = 64
        },
        type = "energy-shield-equipment"
      }
    },
    explosion = {
      ["blood-explosion-big"] = {
        animations = { {
            filename = "__core__/graphics/empty.png",
            frame_count = 1,
            height = 1,
            priority = "extra-high",
            width = 1
          } },
        created_effect = {
          action_delivery = {
            target_effects = { {
                entity_name = "blood-particle",
                initial_height = 0.5,
                initial_vertical_speed = -0.01,
                initial_vertical_speed_deviation = 0.02,
                offset_deviation = { { -0.4, -0.4 }, { 0.4, 0.4 } },
                repeat_count = 150,
                speed_from_center = 0.08,
                speed_from_center_deviation = 0.05,
                type = "create-particle"
              }, {
                entity_name = "blood-fountain",
                offset_deviation = { { -0.4, -0.4 }, { 0.4, 0.4 } },
                repeat_count = 35,
                type = "create-entity"
              } },
            type = "instant"
          },
          type = "direct"
        },
        flags = { "not-on-map" },
        name = "blood-explosion-big",
        type = "explosion"
      },
      ["blood-explosion-huge"] = {
        animations = { {
            filename = "__core__/graphics/empty.png",
            frame_count = 1,
            height = 1,
            priority = "extra-high",
            width = 1
          } },
        created_effect = {
          action_delivery = {
            target_effects = { {
                entity_name = "blood-particle",
                initial_height = 0.5,
                initial_vertical_speed = -0.01,
                initial_vertical_speed_deviation = 0.02,
                offset_deviation = { { -0.4, -0.4 }, { 0.4, 0.4 } },
                repeat_count = 150,
                speed_from_center = 0.08,
                speed_from_center_deviation = 0.05,
                type = "create-particle"
              }, {
                entity_name = "blood-fountain-big",
                offset_deviation = { { -1.6, -1.6 }, { 1.6, 1.6 } },
                repeat_count = 35,
                type = "create-entity"
              } },
            type = "instant"
          },
          type = "direct"
        },
        flags = { "not-on-map" },
        name = "blood-explosion-huge",
        type = "explosion"
      },
      ["blood-explosion-small"] = {
        animations = { {
            filename = "__core__/graphics/empty.png",
            frame_count = 1,
            height = 1,
            priority = "extra-high",
            width = 1
          } },
        created_effect = {
          action_delivery = {
            target_effects = {
              entity_name = "blood-fountain",
              offset_deviation = { { -0.4, -0.4 }, { 0.4, 0.4 } },
              repeat_count = 20,
              type = "create-entity"
            },
            type = "instant"
          },
          type = "direct"
        },
        flags = { "not-on-map" },
        name = "blood-explosion-small",
        type = "explosion"
      },
      explosion = {
        animations = { {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/explosion/explosion-1.png",
            frame_count = 16,
            height = 59,
            priority = "extra-high",
            width = 64
          }, {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/explosion/explosion-2.png",
            frame_count = 16,
            height = 57,
            priority = "extra-high",
            width = 64
          }, {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/explosion/explosion-3.png",
            frame_count = 16,
            height = 49,
            priority = "extra-high",
            width = 64
          }, {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/explosion/explosion-4.png",
            frame_count = 16,
            height = 51,
            priority = "extra-high",
            width = 64
          } },
        flags = { "not-on-map" },
        light = {
          intensity = 1,
          size = 20
        },
        name = "explosion",
        smoke = "smoke-fast",
        smoke_count = 2,
        smoke_slow_down_factor = 1,
        sound = { {
            filename = "__base__/sound/explosion1.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/explosion2.ogg",
            volume = 0.8
          } },
        type = "explosion"
      },
      ["explosion-gunshot"] = {
        animations = { {
            animation_speed = 1.5,
            filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
            frame_count = 13,
            height = 38,
            priority = "extra-high",
            shift = { 0, -0.3125 },
            width = 34
          } },
        flags = { "not-on-map" },
        light = {
          intensity = 1,
          size = 10
        },
        name = "explosion-gunshot",
        smoke = "smoke-fast",
        smoke_count = 1,
        smoke_slow_down_factor = 1,
        type = "explosion"
      },
      ["huge-explosion"] = {
        animations = { {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/huge-explosion/huge-explosion.png",
            frame_count = 54,
            height = 94,
            line_length = 6,
            priority = "extra-high",
            shift = { -0.56, -0.96 },
            width = 112
          } },
        created_effect = {
          action_delivery = {
            target_effects = { {
                entity_name = "explosion-remnants-particle",
                initial_height = 0.5,
                initial_vertical_speed = 0.08,
                initial_vertical_speed_deviation = 0.15,
                offset_deviation = { { -0.2, -0.2 }, { 0.2, 0.2 } },
                repeat_count = 20,
                speed_from_center = 0.08,
                speed_from_center_deviation = 0.15,
                type = "create-particle"
              } },
            type = "instant"
          },
          type = "direct"
        },
        flags = { "not-on-map" },
        light = {
          intensity = 1,
          size = 50
        },
        name = "huge-explosion",
        sound = { {
            filename = "__base__/sound/huge-explosion.ogg",
            volume = 1.25
          } },
        type = "explosion"
      },
      ["laser-bubble"] = {
        animation_speed = 1,
        animations = { {
            filename = "__base__/graphics/entity/laser-bubble/laser-bubble.png",
            frame_count = 5,
            height = 8,
            priority = "extra-high",
            width = 8
          } },
        flags = { "not-on-map" },
        light = {
          intensity = 1,
          size = 10
        },
        name = "laser-bubble",
        smoke = "smoke-fast",
        smoke_count = 2,
        smoke_slow_down_factor = 1,
        type = "explosion"
      },
      ["railgun-beam"] = {
        animation_speed = 3,
        animations = { {
            filename = "__base__/graphics/entity/blue-beam/blue-beam.png",
            frame_count = 6,
            height = 1,
            priority = "extra-high",
            width = 187
          } },
        beam = true,
        flags = { "not-on-map" },
        light = {
          intensity = 1,
          size = 10
        },
        name = "railgun-beam",
        rotate = true,
        smoke = "smoke-fast",
        smoke_count = 2,
        smoke_slow_down_factor = 1,
        type = "explosion"
      },
      ["water-splash"] = {
        animations = { {
            animation_speed = 0.35,
            filename = "__base__/graphics/entity/water-splash/water-splash.png",
            frame_count = 15,
            height = 66,
            line_length = 5,
            priority = "extra-high",
            shift = { -0.437, 0.5 },
            width = 92
          } },
        flags = { "not-on-map" },
        name = "water-splash",
        type = "explosion"
      }
    },
    fish = {
      fish = {
        autoplace = {
          influence = 0.01
        },
        collision_box = { { -0.4, -0.2 }, { 0.4, 0.2 } },
        flags = { "placeable-neutral", "not-on-map" },
        icon = "__base__/graphics/icons/fish.png",
        max_health = 20,
        minable = {
          mining_time = 1,
          result = "raw-fish"
        },
        name = "fish",
        order = "b-a",
        pictures = { {
            filename = "__base__/graphics/entity/fish/fish-1.png",
            height = 36,
            priority = "extra-high",
            width = 22
          }, {
            filename = "__base__/graphics/entity/fish/fish-2.png",
            height = 32,
            priority = "extra-high",
            width = 32
          } },
        selection_box = { { -0.5, -0.3 }, { 0.5, 0.3 } },
        subgroup = "creatures",
        type = "fish"
      }
    },
    ["flame-thrower-explosion"] = {
      ["flame-thrower-explosion"] = {
        animation_speed = 1,
        animations = { {
            filename = "__base__/graphics/entity/flame-thrower-explosion/flame-thrower-explosion.png",
            frame_count = 64,
            height = 64,
            line_length = 8,
            priority = "extra-high",
            width = 64
          } },
        damage = {
          amount = 0.25,
          type = "fire"
        },
        flags = { "not-on-map" },
        light = {
          intensity = 0.2,
          size = 20
        },
        name = "flame-thrower-explosion",
        slow_down_factor = 0.98,
        smoke = "smoke-fast",
        smoke_count = 1,
        smoke_slow_down_factor = 0.95,
        type = "flame-thrower-explosion"
      }
    },
    fluid = {
      ["crude-oil"] = {
        base_color = {
          b = 0,
          g = 0,
          r = 0
        },
        default_temperature = 25,
        flow_color = {
          b = 0.5,
          g = 0.5,
          r = 0.5
        },
        flow_to_energy_ratio = 0.59,
        heat_capacity = "1KJ",
        icon = "__base__/graphics/icons/fluid/crude-oil.png",
        max_temperature = 100,
        name = "crude-oil",
        order = "a[fluid]-b[crude-oil]",
        pressure_to_speed_ratio = 0.4,
        type = "fluid"
      },
      ["heavy-oil"] = {
        base_color = {
          b = 0.7,
          g = 0.7,
          r = 0
        },
        default_temperature = 25,
        flow_color = {
          b = 0.5,
          g = 0.5,
          r = 0.5
        },
        flow_to_energy_ratio = 0.59,
        heat_capacity = "1KJ",
        icon = "__base__/graphics/icons/fluid/heavy-oil.png",
        max_temperature = 100,
        name = "heavy-oil",
        order = "a[fluid]-c[heavy-oil]",
        pressure_to_speed_ratio = 0.4,
        type = "fluid"
      },
      ["light-oil"] = {
        base_color = {
          b = 0,
          g = 0.3,
          r = 0.3
        },
        default_temperature = 25,
        flow_color = {
          b = 0.9,
          g = 0.9,
          r = 0.9
        },
        flow_to_energy_ratio = 0.59,
        heat_capacity = "1KJ",
        icon = "__base__/graphics/icons/fluid/light-oil.png",
        max_temperature = 100,
        name = "light-oil",
        order = "a[fluid]-d[light-oil]",
        pressure_to_speed_ratio = 0.4,
        type = "fluid"
      },
      lubricant = {
        base_color = {
          b = 0.4,
          g = 0.6,
          r = 0.4
        },
        default_temperature = 25,
        flow_color = {
          b = 0.5,
          g = 0.5,
          r = 0.5
        },
        flow_to_energy_ratio = 0.59,
        heat_capacity = "1KJ",
        icon = "__base__/graphics/icons/fluid/lubricant.png",
        max_temperature = 100,
        name = "lubricant",
        order = "e[lubricant]",
        pressure_to_speed_ratio = 0.4,
        type = "fluid"
      },
      ["petroleum-gas"] = {
        base_color = {
          b = 0.4,
          g = 0,
          r = 0.4
        },
        default_temperature = 25,
        flow_color = {
          b = 0.5,
          g = 0.5,
          r = 0.5
        },
        flow_to_energy_ratio = 0.59,
        heat_capacity = "1KJ",
        icon = "__base__/graphics/icons/fluid/petroleum-gas.png",
        max_temperature = 100,
        name = "petroleum-gas",
        order = "a[fluid]-e[petroleum-gas]",
        pressure_to_speed_ratio = 0.4,
        type = "fluid"
      },
      ["sulfuric-acid"] = {
        base_color = {
          b = 0.2,
          g = 0.7,
          r = 0
        },
        default_temperature = 25,
        flow_color = {
          b = 0.5,
          g = 0.5,
          r = 0.5
        },
        flow_to_energy_ratio = 0.59,
        heat_capacity = "1KJ",
        icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
        max_temperature = 100,
        name = "sulfuric-acid",
        order = "a[fluid]-f[sulfuric-acid]",
        pressure_to_speed_ratio = 0.4,
        type = "fluid"
      },
      water = {
        base_color = {
          b = 0.6,
          g = 0.34,
          r = 0
        },
        default_temperature = 15,
        flow_color = {
          b = 0.7,
          g = 0.7,
          r = 0.7
        },
        flow_to_energy_ratio = 0.59,
        heat_capacity = "1KJ",
        icon = "__base__/graphics/icons/fluid/water.png",
        max_temperature = 100,
        name = "water",
        order = "a[fluid]-a[water]",
        pressure_to_speed_ratio = 0.4,
        type = "fluid"
      }
    },
    ["flying-text"] = {
      ["flying-text"] = {
        flags = { "not-on-map" },
        name = "flying-text",
        speed = 0.05,
        time_to_live = 150,
        type = "flying-text"
      }
    },
    font = {
      default = {
        from = "default",
        name = "default",
        size = 14,
        type = "font"
      },
      ["default-bold"] = {
        from = "default-bold",
        name = "default-bold",
        size = 14,
        type = "font"
      },
      ["default-button"] = {
        from = "default-bold",
        name = "default-button",
        size = 18,
        type = "font"
      },
      ["default-frame"] = {
        from = "default-bold",
        name = "default-frame",
        size = 18,
        type = "font"
      },
      ["default-game"] = {
        border = true,
        border_color = {},
        from = "default",
        name = "default-game",
        size = 18,
        type = "font"
      },
      ["default-listbox"] = {
        from = "default-bold",
        name = "default-listbox",
        size = 16,
        type = "font"
      },
      ["default-semibold"] = {
        from = "default-semibold",
        name = "default-semibold",
        size = 14,
        type = "font"
      },
      ["scenario-message-dialog"] = {
        from = "default",
        name = "scenario-message-dialog",
        size = 18,
        type = "font"
      }
    },
    furnace = {
      ["electric-furnace"] = {
        allowed_effects = { "consumption", "speed", "productivity", "pollution" },
        animation = {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-base.png",
          frame_count = 1,
          height = 100,
          priority = "high",
          shift = { 0.421875, 0 },
          width = 129
        },
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        corpse = "big-remnants",
        crafting_categories = { "smelting" },
        crafting_speed = 2,
        dying_explosion = "huge-explosion",
        energy_source = {
          emissions = 0.005,
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = "180kW",
        fast_replaceable_group = "furnace",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        icon = "__base__/graphics/icons/electric-furnace.png",
        light = {
          intensity = 1,
          size = 10
        },
        max_health = 150,
        minable = {
          mining_time = 1,
          result = "electric-furnace"
        },
        module_slots = 2,
        name = "electric-furnace",
        resistances = { {
            percent = 80,
            type = "fire"
          } },
        result_inventory_size = 1,
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        source_inventory_size = 1,
        type = "furnace",
        working_sound = {
          apparent_volume = 1.5,
          sound = {
            filename = "__base__/sound/electric-furnace.ogg",
            volume = 0.7
          }
        },
        working_visualisations = { {
            animation = {
              animation_speed = 0.5,
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
              frame_count = 12,
              height = 15,
              priority = "high",
              shift = { 0.015625, 0.890625 },
              width = 25
            },
            light = {
              intensity = 0.4,
              shift = { 0, 1 },
              size = 6
            }
          }, {
            animation = {
              animation_speed = 0.5,
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
              frame_count = 4,
              height = 13,
              priority = "high",
              shift = { -0.671875, -0.640625 },
              width = 19
            }
          }, {
            animation = {
              animation_speed = 0.5,
              filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
              frame_count = 4,
              height = 9,
              priority = "high",
              shift = { 0.0625, -1.234375 },
              width = 12
            }
          } }
      },
      ["steel-furnace"] = {
        animation = {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace.png",
          frame_count = 1,
          height = 69,
          priority = "high",
          shift = { 0.5, 0.05 },
          width = 91
        },
        collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
        corpse = "medium-remnants",
        crafting_categories = { "smelting" },
        crafting_speed = 2,
        energy_source = {
          effectivity = 1,
          emissions = 0.02,
          fuel_inventory_size = 1,
          smoke = { {
              deviation = { 0.1, 0.1 },
              frequency = 0.5,
              name = "smoke",
              position = { 0, 0 },
              starting_vertical_speed = 0.05
            } },
          type = "burner"
        },
        energy_usage = "180kW",
        fast_replaceable_group = "furnace",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        icon = "__base__/graphics/icons/steel-furnace.png",
        max_health = 200,
        minable = {
          mining_time = 1,
          result = "steel-furnace"
        },
        name = "steel-furnace",
        resistances = { {
            percent = 100,
            type = "fire"
          } },
        result_inventory_size = 1,
        selection_box = { { -0.8, -1 }, { 0.8, 1 } },
        source_inventory_size = 1,
        type = "furnace",
        working_sound = {
          sound = {
            filename = "__base__/sound/furnace.ogg"
          }
        },
        working_visualisations = { {
            animation = {
              filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
              frame_count = 12,
              height = 19,
              priority = "high",
              shift = { -0.05, 0.65 },
              width = 36
            },
            east_position = { 0, 0 },
            light = {
              intensity = 1,
              size = 1
            },
            north_position = { 0, 0 },
            south_position = { 0, 0 },
            west_position = { 0, 0 }
          } }
      },
      ["stone-furnace"] = {
        animation = {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace.png",
          frame_count = 1,
          height = 64,
          priority = "extra-high",
          shift = { 0.5, 0.05 },
          width = 81
        },
        close_sound = {
          filename = "__base__/sound/machine-close.ogg",
          volume = 0.75
        },
        collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
        corpse = "medium-remnants",
        crafting_categories = { "smelting" },
        crafting_speed = 1,
        energy_source = {
          effectivity = 1,
          emissions = 0.01,
          fuel_inventory_size = 1,
          smoke = { {
              deviation = { 0.1, 0.1 },
              frequency = 0.5,
              name = "smoke",
              position = { 0, 0 },
              starting_vertical_speed = 0.05
            } },
          type = "burner"
        },
        energy_usage = "180kW",
        fast_replaceable_group = "furnace",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        icon = "__base__/graphics/icons/stone-furnace.png",
        max_health = 150,
        minable = {
          mining_time = 1,
          result = "stone-furnace"
        },
        mined_sound = {
          filename = "__base__/sound/deconstruct-bricks.ogg"
        },
        name = "stone-furnace",
        open_sound = {
          filename = "__base__/sound/machine-open.ogg",
          volume = 0.85
        },
        repair_sound = {
          filename = "__base__/sound/manual-repair-simple.ogg"
        },
        resistances = { {
            percent = 80,
            type = "fire"
          }, {
            percent = 30,
            type = "explosion"
          } },
        result_inventory_size = 1,
        selection_box = { { -0.8, -1 }, { 0.8, 1 } },
        source_inventory_size = 1,
        type = "furnace",
        working_sound = {
          sound = {
            filename = "__base__/sound/furnace.ogg"
          }
        },
        working_visualisations = { {
            animation = {
              filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
              frame_count = 12,
              height = 27,
              priority = "extra-high",
              shift = { 0.078125, 0.5234375 },
              width = 23
            },
            east_position = { 0, 0 },
            light = {
              intensity = 1,
              size = 1
            },
            north_position = { 0, 0 },
            south_position = { 0, 0 },
            west_position = { 0, 0 }
          } }
      }
    },
    gate = {
      gate = {
        activation_distance = 3,
        close_trigger_effect = {
          sound = {
            filename = "__base__/sound/gate1.ogg",
            volume = 0.5
          },
          type = "play-sound"
        },
        collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
        corpse = "small-remnants",
        fast_replaceable_group = "wall",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        horizontal_animation = {
          layers = { {
              filename = "__base__/graphics/entity/gate/gate-horizontal.png",
              frame_count = 16,
              height = 36,
              line_length = 8,
              shift = { 0, -0.21875 },
              width = 32
            }, {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/gate/gate-horizontal-shadow.png",
              frame_count = 16,
              height = 28,
              line_length = 8,
              shift = { 0.4375, 0.46875 },
              width = 62
            } }
        },
        horizontal_base = {
          layers = { {
              filename = "__base__/graphics/entity/gate/gate-base-horizontal.png",
              height = 23,
              shift = { 0, 0.125 },
              width = 32
            }, {
              apply_runtime_tint = true,
              filename = "__base__/graphics/entity/gate/gate-base-horizontal-mask.png",
              height = 23,
              shift = { 0, 0.125 },
              width = 32
            } }
        },
        horizontal_rail_animation_left = {
          layers = { {
              filename = "__base__/graphics/entity/gate/gate-rail-horizontal-left.png",
              frame_count = 16,
              height = 47,
              line_length = 8,
              shift = { 0, -0.015625 },
              width = 32
            }, {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/gate/gate-rail-horizontal-shadow-left.png",
              frame_count = 16,
              height = 27,
              line_length = 8,
              shift = { 0.078125, 0.296875 },
              width = 73
            } }
        },
        horizontal_rail_animation_right = {
          layers = { {
              filename = "__base__/graphics/entity/gate/gate-rail-horizontal-right.png",
              frame_count = 16,
              height = 43,
              line_length = 8,
              shift = { 0, -0.078125 },
              width = 32
            }, {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/gate/gate-rail-horizontal-shadow-right.png",
              frame_count = 16,
              height = 28,
              line_length = 8,
              shift = { 0.60938, 0.4125 },
              width = 73
            } }
        },
        horizontal_rail_base = {
          filename = "__base__/graphics/entity/gate/gate-rail-base-horizontal.png",
          frame_count = 16,
          height = 45,
          line_length = 8,
          shift = { 0, 0.109375 },
          width = 64
        },
        horizontal_rail_base_mask = {
          apply_runtime_tint = true,
          filename = "__base__/graphics/entity/gate/gate-rail-base-mask-horizontal.png",
          height = 45,
          shift = { 0.015625, 0.109375 },
          width = 53
        },
        icon = "__base__/graphics/icons/gate.png",
        max_health = 350,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "gate"
        },
        name = "gate",
        open_trigger_effect = {
          sound = {
            filename = "__base__/sound/gate1.ogg",
            volume = 0.5
          },
          type = "play-sound"
        },
        opening_speed = 0.0666666,
        resistances = { {
            decrease = 3,
            percent = 20,
            type = "physical"
          }, {
            decrease = 45,
            percent = 60,
            type = "impact"
          }, {
            decrease = 10,
            percent = 30,
            type = "explosion"
          }, {
            percent = 100,
            type = "fire"
          }, {
            percent = 70,
            type = "laser"
          } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        timeout_to_close = 5,
        type = "gate",
        vertical_animation = {
          layers = { {
              filename = "__base__/graphics/entity/gate/gate-vertical.png",
              frame_count = 16,
              height = 60,
              line_length = 8,
              shift = { 0.015625, -0.40625 },
              width = 21
            }, {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/gate/gate-vertical-shadow.png",
              frame_count = 16,
              height = 50,
              line_length = 8,
              shift = { 0.328125, 0.3 },
              width = 41
            } }
        },
        vertical_base = {
          layers = { {
              filename = "__base__/graphics/entity/gate/gate-base-vertical.png",
              height = 32,
              width = 32
            }, {
              apply_runtime_tint = true,
              filename = "__base__/graphics/entity/gate/gate-base-vertical-mask.png",
              height = 32,
              width = 32
            } }
        },
        vertical_rail_animation_left = {
          layers = { {
              filename = "__base__/graphics/entity/gate/gate-rail-vertical-left.png",
              frame_count = 16,
              height = 54,
              line_length = 8,
              shift = { 0, -0.46875 },
              width = 22
            }, {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/gate/gate-rail-vertical-shadow-left.png",
              frame_count = 16,
              height = 48,
              line_length = 8,
              shift = { 0.27, 0.33875 },
              width = 47
            } }
        },
        vertical_rail_animation_right = {
          layers = { {
              filename = "__base__/graphics/entity/gate/gate-rail-vertical-right.png",
              frame_count = 16,
              height = 55,
              line_length = 8,
              shift = { 0, -0.453125 },
              width = 22
            }, {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/gate/gate-rail-vertical-shadow-right.png",
              frame_count = 16,
              height = 47,
              line_length = 8,
              shift = { 0.27, 0.303125 },
              width = 47
            } }
        },
        vertical_rail_base = {
          filename = "__base__/graphics/entity/gate/gate-rail-base-vertical.png",
          frame_count = 16,
          height = 64,
          line_length = 8,
          shift = { 0, 0 },
          width = 64
        },
        vertical_rail_base_mask = {
          apply_runtime_tint = true,
          filename = "__base__/graphics/entity/gate/gate-rail-base-mask-vertical.png",
          height = 39,
          shift = { 0.015625, -0.015625 },
          width = 63
        },
        wall_diode_green = {
          filename = "__base__/graphics/entity/gate/wall-diode-green.png",
          height = 22,
          shift = { 0, -0.78125 },
          width = 21
        },
        wall_diode_green_light = {
          color = {
            g = 1
          },
          intensity = 0.3,
          minimum_darkness = 0.3,
          shift = { 0, -0.78125 },
          size = 1
        },
        wall_diode_red = {
          filename = "__base__/graphics/entity/gate/wall-diode-red.png",
          height = 22,
          shift = { 0, -0.78125 },
          width = 21
        },
        wall_diode_red_light = {
          color = {
            r = 1
          },
          intensity = 0.3,
          minimum_darkness = 0.3,
          shift = { 0, -0.78125 },
          size = 1
        },
        wall_patch = {
          east = {
            layers = { {
                filename = "__base__/graphics/entity/gate/wall-patch-east.png",
                height = 40,
                shift = { 0.328125, -0.109375 },
                width = 11
              }, {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/gate/wall-patch-east-shadow.png",
                height = 32,
                shift = { 0.8125, 0.46875 },
                width = 38
              } }
          },
          north = {
            layers = { {
                filename = "__base__/graphics/entity/gate/wall-patch-north.png",
                height = 35,
                shift = { 0, -0.62 },
                width = 22
              }, {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/gate/wall-patch-north-shadow.png",
                height = 31,
                shift = { 0.3, 0.2 },
                width = 46
              } }
          },
          south = {
            layers = { {
                filename = "__base__/graphics/entity/gate/wall-patch-south.png",
                height = 40,
                shift = { 0, -0.125 },
                width = 22
              }, {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/gate/wall-patch-south-shadow.png",
                height = 25,
                shift = { 0.3, 0.95 },
                width = 48
              } }
          },
          west = {
            layers = { {
                filename = "__base__/graphics/entity/gate/wall-patch-west.png",
                height = 40,
                shift = { -0.328125, -0.109375 },
                width = 11
              }, {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/gate/wall-patch-west-shadow.png",
                height = 32,
                shift = { 0.1875, 0.46875 },
                width = 46
              } }
          }
        }
      }
    },
    generator = {
      ["steam-engine"] = {
        collision_box = { { -1.35, -2.35 }, { 1.35, 2.35 } },
        corpse = "big-remnants",
        dying_explosion = "huge-explosion",
        effectivity = 1,
        energy_source = {
          type = "electric",
          usage_priority = "secondary-output"
        },
        flags = { "placeable-neutral", "player-creation" },
        fluid_box = {
          base_area = 1,
          pipe_connections = { {
              position = { 0, 3 }
            }, {
              position = { 0, -3 }
            } },
          pipe_covers = {
            east = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
              height = 32,
              priority = "extra-high",
              width = 32
            },
            north = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
              height = 32,
              priority = "extra-high",
              width = 44
            },
            south = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
              height = 52,
              priority = "extra-high",
              width = 46
            },
            west = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
              height = 32,
              priority = "extra-high",
              width = 32
            }
          }
        },
        fluid_usage_per_tick = 0.1,
        horizontal_animation = {
          filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
          frame_count = 32,
          height = 137,
          line_length = 8,
          shift = { 1.34, -0.06 },
          width = 246
        },
        icon = "__base__/graphics/icons/steam-engine.png",
        max_health = 300,
        min_perceived_performance = 0.25,
        minable = {
          mining_time = 1,
          result = "steam-engine"
        },
        name = "steam-engine",
        performance_to_sound_speedup = 0.5,
        resistances = { {
            percent = 70,
            type = "fire"
          } },
        selection_box = { { -1.5, -2.5 }, { 1.5, 2.5 } },
        smoke = { {
            deviation = { 0.2, 0.2 },
            east_position = { -1.9, -1.6 },
            frequency = 0.064516129032258,
            name = "smoke",
            north_position = { 0, -2.2 },
            starting_vertical_speed = 0.05
          } },
        type = "generator",
        vertical_animation = {
          filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
          frame_count = 32,
          height = 186,
          line_length = 8,
          shift = { 0.812, 0.031 },
          width = 155
        },
        working_sound = {
          match_speed_to_activity = true,
          sound = {
            filename = "__base__/sound/steam-engine-90bpm.ogg",
            volume = 0.6
          }
        }
      }
    },
    ["generator-equipment"] = {
      ["fusion-reactor-equipment"] = {
        energy_source = {
          type = "electric",
          usage_priority = "primary-output"
        },
        name = "fusion-reactor-equipment",
        power = "750W",
        shape = {
          height = 4,
          type = "full",
          width = 4
        },
        sprite = {
          filename = "__base__/graphics/equipment/fusion-reactor-equipment.png",
          height = 128,
          priority = "medium",
          width = 128
        },
        type = "generator-equipment"
      }
    },
    ghost = {
      ghost = {
        flags = { "not-on-map" },
        minable = {
          mining_time = 0,
          results = {}
        },
        name = "ghost",
        type = "ghost"
      }
    },
    ["gui-style"] = {
      default = {
        ability_slot_style = {
          parent = "slot_button_style",
          type = "button_style"
        },
        activity_bar_style = {
          bar = {
            filename = "__core__/graphics/gui.png",
            height = 5,
            priority = "extra-high-no-scale",
            width = 1,
            x = 221
          },
          bar_background = {
            filename = "__core__/graphics/gui.png",
            height = 7,
            priority = "extra-high-no-scale",
            width = 1,
            x = 222
          },
          bar_size_ratio = 0.07,
          color = {
            g = 1
          },
          size = 200,
          speed = 0.01,
          type = "activity_bar_style"
        },
        available_preview_technology_slot_style = {
          height = 68,
          parent = "available_technology_slot_style",
          scalable = false,
          type = "button_style",
          width = 68
        },
        available_technology_slot_style = {
          clicked_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 185,
              y = 72
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          default_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 111,
              y = 72
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          hovered_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 148,
              y = 72
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          parent = "slot_button_style",
          scalable = false,
          type = "button_style"
        },
        battery_progressbar_style = {
          parent = "health_progressbar_style",
          type = "progressbar_style"
        },
        bonus_progressbar_style = {
          parent = "production_progressbar_style",
          smooth_color = {
            b = 0.8,
            r = 0.8
          },
          type = "progressbar_style"
        },
        burning_progressbar_style = {
          smooth_color = {
            r = 1
          },
          type = "progressbar_style"
        },
        button_style = {
          align = "center",
          bottom_padding = 5,
          clicked_font_color = {
            b = 1,
            g = 1,
            r = 1
          },
          clicked_graphical_set = {
            corner_size = { 3, 3 },
            filename = "__core__/graphics/gui.png",
            position = { 0, 16 },
            priority = "extra-high-no-scale",
            type = "composition"
          },
          default_font_color = {
            b = 1,
            g = 1,
            r = 1
          },
          default_graphical_set = {
            corner_size = { 3, 3 },
            filename = "__core__/graphics/gui.png",
            position = { 0, 0 },
            priority = "extra-high-no-scale",
            type = "composition"
          },
          disabled_font_color = {
            b = 0.5,
            g = 0.5,
            r = 0.5
          },
          disabled_graphical_set = {
            corner_size = { 3, 3 },
            filename = "__core__/graphics/gui.png",
            position = { 0, 0 },
            priority = "extra-high-no-scale",
            type = "composition"
          },
          font = "default-button",
          hovered_font_color = {
            b = 1,
            g = 1,
            r = 1
          },
          hovered_graphical_set = {
            corner_size = { 3, 3 },
            filename = "__core__/graphics/gui.png",
            position = { 0, 8 },
            priority = "extra-high-no-scale",
            type = "composition"
          },
          left_padding = 5,
          pie_progress_color = {
            b = 1,
            g = 1,
            r = 1
          },
          right_padding = 5,
          top_padding = 5,
          type = "button_style"
        },
        campaign_levels_listbox_style = {
          height = 350,
          type = "listbox_style",
          width = 300
        },
        campaigns_listbox_style = {
          height = 450,
          type = "listbox_style",
          width = 300
        },
        caption_label_style = {
          font = "default-bold",
          font_color = <31>{
            b = 0.22,
            g = 0.66,
            r = 0.98
          },
          parent = "label_style",
          type = "label_style"
        },
        checkbox_style = {
          checked = {
            filename = "__core__/graphics/gui.png",
            height = 16,
            priority = "extra-high-no-scale",
            width = 16,
            x = 94,
            y = 17
          },
          clicked_background = {
            filename = "__core__/graphics/gui.png",
            height = 16,
            priority = "extra-high-no-scale",
            width = 16,
            x = 77,
            y = 17
          },
          default_background = {
            filename = "__core__/graphics/gui.png",
            height = 16,
            priority = "extra-high-no-scale",
            width = 16,
            x = 43,
            y = 17
          },
          font = "default",
          font_color = {
            b = 1,
            g = 1,
            r = 1
          },
          hovered_background = {
            filename = "__core__/graphics/gui.png",
            height = 16,
            priority = "extra-high-no-scale",
            width = 16,
            x = 60,
            y = 17
          },
          type = "checkbox_style"
        },
        circuit_condition_sign_button_style = {
          bottom_padding = 1,
          left_padding = 5,
          parent = "button_style",
          right_padding = 5,
          top_padding = 0,
          type = "button_style"
        },
        console_input_textfield_style = {
          font = "default-game",
          font_color = {
            b = 1,
            g = 1,
            r = 1
          },
          graphical_set = {
            bottom_monolith_border = 2,
            left_monolith_border = 0,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 1,
              priority = "extra-high-no-scale",
              width = 1,
              x = 8,
              y = 16
            },
            right_monolith_border = 0,
            top_monolith_border = 2,
            type = "monolith"
          },
          type = "textfield_style"
        },
        control_settings_table_style = {
          horizontal_spacing = 5,
          top_padding = 20,
          type = "table_style",
          vertical_spacing = 7
        },
        controls_settings_button_style = {
          align = "left",
          bottom_padding = 0,
          default_font_color = {},
          default_graphical_set = {
            corner_size = { 3, 3 },
            filename = "__core__/graphics/gui.png",
            position = { 8, 8 },
            priority = "extra-high-no-scale",
            type = "composition"
          },
          font = "default-bold",
          left_padding = 2,
          minimal_width = 225,
          parent = "button_style",
          right_padding = 2,
          top_padding = 0,
          type = "button_style"
        },
        crafting_queue_slot_style = {
          parent = "slot_button_style",
          pie_progress_color = {
            a = 0.5,
            b = 0.22,
            g = 0.66,
            r = 0.98
          },
          scalable = false,
          type = "button_style"
        },
        cursor_box = {
          copy = { {
              max_side_length = 0.4,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.46875, 0.46875 },
                width = 32,
                x = 128,
                y = 96
              }
            }, {
              max_side_length = 0.7,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 96,
                y = 96
              }
            }, {
              max_side_length = 1.05,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 64,
                y = 96
              }
            }, {
              max_side_length = 2,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 32,
                y = 96
              }
            }, {
              max_side_length = 3,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 0,
                y = 96
              }
            } },
          electricity = { {
              max_side_length = 0.4,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.46875, 0.46875 },
                width = 32,
                x = 128,
                y = 64
              }
            }, {
              max_side_length = 0.7,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 96,
                y = 64
              }
            }, {
              max_side_length = 1.05,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 64,
                y = 64
              }
            }, {
              max_side_length = 2,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 32,
                y = 64
              }
            }, {
              max_side_length = 3,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 0,
                y = 64
              }
            } },
          logistics = { {
              max_side_length = 0.4,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.46875, 0.46875 },
                width = 32,
                x = 128,
                y = 64
              }
            }, {
              max_side_length = 0.7,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 96,
                y = 64
              }
            }, {
              max_side_length = 1.05,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 64,
                y = 64
              }
            }, {
              max_side_length = 2,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 32,
                y = 64
              }
            }, {
              max_side_length = 3,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 0,
                y = 64
              }
            } },
          not_allowed = { {
              max_side_length = 0.4,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.46875, 0.46875 },
                width = 32,
                x = 128,
                y = 32
              }
            }, {
              max_side_length = 0.7,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 96,
                y = 32
              }
            }, {
              max_side_length = 1.05,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 64,
                y = 32
              }
            }, {
              max_side_length = 2,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 32,
                y = 32
              }
            }, {
              max_side_length = 3,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 0,
                y = 32
              }
            } },
          pair = { {
              max_side_length = 0.4,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.46875, 0.46875 },
                width = 32,
                x = 128,
                y = 64
              }
            }, {
              max_side_length = 0.7,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 96,
                y = 64
              }
            }, {
              max_side_length = 1.05,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 64,
                y = 64
              }
            }, {
              max_side_length = 2,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 32,
                y = 64
              }
            }, {
              max_side_length = 3,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 0,
                y = 64
              }
            } },
          regular = { {
              max_side_length = 0.4,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.46875, 0.46875 },
                width = 32,
                x = 128,
                y = 0
              }
            }, {
              max_side_length = 0.7,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 96,
                y = 0
              }
            }, {
              max_side_length = 1.05,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 64,
                y = 0
              }
            }, {
              max_side_length = 2,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 32,
                y = 0
              }
            }, {
              max_side_length = 2.5,
              sprite = {
                filename = "__core__/graphics/cursor-boxes.png",
                height = 32,
                priority = "extra-high-no-scale",
                shift = { 0.5, 0.5 },
                width = 32,
                x = 0,
                y = 0
              }
            } }
        },
        custom_games_listbox_style = {
          height = 250,
          type = "listbox_style",
          width = 300
        },
        description_flow_style = {
          parent = "flow_style",
          type = "flow_style",
          vertical_spacing = 2
        },
        description_label_style = {
          font = "default-semibold",
          parent = "label_style",
          type = "label_style"
        },
        description_title_label_style = {
          font = "default-bold",
          parent = "description_label_style",
          type = "label_style"
        },
        dialog_button_style = {
          left_click_sound = { {
              filename = "__core__/sound/gui-click.ogg",
              volume = 1
            } },
          minimal_height = 30,
          minimal_width = 100,
          parent = "button_style",
          type = "button_style"
        },
        disabled_technology_slot_style = {
          parent = "slot_button_style",
          scalable = false,
          type = "button_style",
          visible = false
        },
        dropdown_style = {
          bottom_padding = 3,
          clicked_graphical_set = {
            corner_size = { 3, 3 },
            filename = "__core__/graphics/gui.png",
            position = { 0, 16 },
            priority = "extra-high-no-scale",
            type = "composition"
          },
          default_graphical_set = {
            corner_size = { 3, 3 },
            filename = "__core__/graphics/gui.png",
            position = { 0, 0 },
            priority = "extra-high-no-scale",
            type = "composition"
          },
          font = "default",
          hovered_graphical_set = {
            corner_size = { 3, 3 },
            filename = "__core__/graphics/gui.png",
            position = { 0, 8 },
            priority = "extra-high-no-scale",
            type = "composition"
          },
          left_padding = 6,
          listbox_style = {
            font = "default"
          },
          right_padding = 6,
          top_padding = 3,
          triangle_image = {
            filename = "__core__/graphics/gui.png",
            height = 5,
            priority = "extra-high-no-scale",
            width = 10,
            x = 36,
            y = 6
          },
          type = "dropdown_style"
        },
        electric_network_sections_table_style = {
          cell_padding = 5,
          column_graphical_set = {
            corner_size = { 3, 3 },
            filename = "__core__/graphics/gui.png",
            position = { 8, 0 },
            priority = "extra-high-no-scale",
            type = "composition"
          },
          horizontal_spacing = 0,
          type = "table_style",
          vertial_spacing = 0
        },
        electric_satisfaction_progressbar_style = {
          other_smooth_colors = { {
              color = {
                b = 0,
                g = 0,
                r = 1
              },
              less_then = 0.5
            }, {
              color = {
                b = 0,
                g = 1,
                r = 1
              },
              less_then = 1
            } },
          parent = "progressbar_style",
          type = "progressbar_style"
        },
        electric_usage_label_style = {
          parent = "label_style",
          type = "label_style",
          width = 60
        },
        fake_disabled_button_style = {
          clicked_font_color = {
            b = 0.5,
            g = 0.5,
            r = 0.5
          },
          clicked_graphical_set = {
            corner_size = { 3, 3 },
            filename = "__core__/graphics/gui.png",
            position = { 0, 0 },
            priority = "extra-high-no-scale",
            type = "composition"
          },
          default_font_color = {
            b = 0.5,
            g = 0.5,
            r = 0.5
          },
          hovered_font_color = {
            b = 0.5,
            g = 0.5,
            r = 0.5
          },
          hovered_graphical_set = {
            corner_size = { 3, 3 },
            filename = "__core__/graphics/gui.png",
            position = { 0, 0 },
            priority = "extra-high-no-scale",
            type = "composition"
          },
          parent = "button_style",
          type = "button_style"
        },
        flow_style = {
          horizontal_spacing = 8,
          max_on_row = 0,
          resize_row_to_width = false,
          resize_to_row_height = false,
          type = "flow_style",
          vertical_spacing = 8
        },
        frame_caption_label_style = {
          font = "default-frame",
          font_color = {
            b = 1,
            g = 1,
            r = 1
          },
          parent = "label_style",
          type = "label_style"
        },
        frame_in_right_container_style = {
          minimal_width = 250,
          type = "frame_style"
        },
        frame_style = {
          bottom_padding = 8,
          flow_style = {
            horizontal_spacing = 8,
            vertical_spacing = 8
          },
          font = "default-frame",
          font_color = {
            b = 1,
            g = 1,
            r = 1
          },
          graphical_set = {
            corner_size = { 3, 3 },
            filename = "__core__/graphics/gui.png",
            position = { 8, 0 },
            priority = "extra-high-no-scale",
            type = "composition"
          },
          left_padding = 8,
          right_padding = 8,
          title_bottom_padding = 15,
          title_left_padding = 0,
          title_right_padding = 0,
          title_top_padding = 0,
          top_padding = 2,
          type = "frame_style"
        },
        goal_frame_style = {
          parent = "frame_style",
          type = "frame_style"
        },
        goal_label_style = {
          font = "scenario-message-dialog",
          font_color = {
            b = 1,
            g = 1,
            r = 1
          },
          parent = "label_style",
          type = "label_style",
          width = 400
        },
        graph_style = {
          background_color = {
            a = 0.9,
            b = 0.1,
            g = 0.1,
            r = 0.1
          },
          height = 200,
          line_colors = { {
              b = 0.69,
              g = 0.41,
              r = 0.22
            }, {
              b = 0.18,
              g = 0.48,
              r = 0.85
            }, {
              b = 0.31,
              g = 0.58,
              r = 0.24
            }, {
              b = 0.16,
              g = 0.1,
              r = 0.8
            }, {
              b = 0.32,
              g = 0.31,
              r = 0.32
            }, {
              b = 0.6,
              g = 0.29,
              r = 0.41
            }, {
              b = 0.15,
              g = 0.14,
              r = 0.57
            }, {
              b = 0.23,
              g = 0.54,
              r = 0.58
            } },
          type = "graph_style",
          width = 550
        },
        green_circuit_network_content_slot_style = {
          parent = "researched_technology_slot_style",
          type = "button_style"
        },
        health_progressbar_style = {
          font = "default",
          font_color = {
            b = 1,
            g = 1,
            r = 1
          },
          smooth_bar = {
            filename = "__core__/graphics/gui.png",
            height = 11,
            priority = "extra-high-no-scale",
            width = 1,
            x = 223
          },
          smooth_bar_background = {
            filename = "__core__/graphics/gui.png",
            height = 13,
            priority = "extra-high-no-scale",
            width = 1,
            x = 224
          },
          smooth_color = {
            g = 1
          },
          smooth_size = 500,
          type = "progressbar_style"
        },
        image_tab_selected_slot_style = {
          clicked_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 75,
              y = 108
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          default_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 75,
              y = 108
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          height = 61,
          hovered_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 75,
              y = 108
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          parent = "image_tab_slot_style",
          scalable = false,
          type = "button_style",
          width = 61
        },
        image_tab_slot_style = {
          clicked_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 111
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          height = 61,
          hovered_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 111
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          parent = "slot_button_style",
          scalable = false,
          type = "button_style",
          width = 61
        },
        inner_frame_in_outer_frame_style = {
          title_bottom_padding = 5,
          type = "frame_style"
        },
        inner_frame_style = {
          bottom_padding = 0,
          graphical_set = {
            type = "none"
          },
          left_padding = 0,
          right_padding = 0,
          title_bottom_padding = 5,
          top_padding = 0,
          type = "frame_style"
        },
        label_style = {
          font = "default",
          font_color = {
            b = 1,
            g = 1,
            r = 1
          },
          type = "label_style"
        },
        listbox_item_style = {
          default = {
            background_color = {},
            font_color = {
              b = 1,
              g = 1,
              r = 1
            }
          },
          hovered = {
            background_color = {
              b = 0.4,
              g = 0.4,
              r = 0.4
            },
            font_color = {
              b = 1,
              g = 1,
              r = 1
            }
          },
          selected = {
            background_color = {
              b = 0.22,
              g = 0.66,
              r = 0.98
            },
            font_color = {}
          },
          type = "listbox_item_style"
        },
        listbox_style = {
          font = "default-listbox",
          item_style = {
            parent = "listbox_item_style"
          },
          left_click_sound = { {
              filename = "__core__/sound/listbox-click.ogg",
              volume = 1
            } },
          type = "listbox_style"
        },
        load_game_mod_disabled_listbox_item_style = {
          default = {
            background_color = {
              a = 0,
              b = 0,
              g = 0,
              r = 0
            },
            font_color = {
              b = 0.5,
              g = 0.5,
              r = 0.5
            }
          },
          hovered = {
            background_color = {
              a = 0,
              b = 0,
              g = 0,
              r = 0
            },
            font_color = {
              b = 0.5,
              g = 0.5,
              r = 0.5
            }
          },
          parent = "listbox_item_style",
          selected = {
            background_color = {
              a = 0,
              b = 0,
              g = 0,
              r = 0
            },
            font_color = {
              b = 0.5,
              g = 0.5,
              r = 0.5
            }
          },
          type = "listbox_item_style"
        },
        load_game_mod_invalid_listbox_item_style = {
          default = {
            background_color = {
              a = 0,
              b = 0,
              g = 0,
              r = 0
            },
            font_color = <32>{
              b = 0.3,
              g = 0.2,
              r = 1
            }
          },
          hovered = {
            background_color = {
              a = 0,
              b = 0,
              g = 0,
              r = 0
            },
            font_color = <table 32>
          },
          parent = "listbox_item_style",
          selected = {
            background_color = {
              a = 0,
              b = 0,
              g = 0,
              r = 0
            },
            font_color = <table 32>
          },
          type = "listbox_item_style"
        },
        load_game_mods_listbox_style = {
          font = "default",
          item_style = {
            default = {
              background_color = {
                a = 0,
                b = 0,
                g = 0,
                r = 0
              },
              font_color = {
                b = 1,
                g = 1,
                r = 1
              }
            },
            hovered = {
              background_color = {
                a = 0,
                b = 0,
                g = 0,
                r = 0
              },
              font_color = {
                b = 1,
                g = 1,
                r = 1
              }
            },
            parent = "listbox_item_style",
            selected = {
              background_color = {
                a = 0,
                b = 0,
                g = 0,
                r = 0
              },
              font_color = {
                b = 1,
                g = 1,
                r = 1
              }
            }
          },
          parent = "listbox_style",
          type = "listbox_style"
        },
        logistic_button_selected_slot_style = {
          height = 32,
          parent = "image_tab_selected_slot_style",
          scalable = false,
          type = "button_style",
          width = 32
        },
        logistic_button_slot_style = {
          parent = "slot_button_style",
          type = "button_style"
        },
        machine_frame_style = {
          flow_style = {
            horizontal_spacing = 5
          },
          parent = "inner_frame_in_outer_frame_style",
          type = "frame_style"
        },
        machine_right_part_flow_style = {
          type = "flow_style",
          vertical_spacing = 5
        },
        map_settings_dropdown_style = {
          minimal_width = 200,
          parent = "dropdown_style",
          type = "dropdown_style"
        },
        menu_button_style = {
          font = "default-button",
          hovered_font_color = {
            b = 0,
            g = 0,
            r = 0
          },
          left_click_sound = { {
              filename = "__core__/sound/gui-click.ogg",
              volume = 1
            } },
          minimal_height = 50,
          minimal_width = 300,
          parent = "button_style",
          type = "button_style"
        },
        menu_frame_style = {
          flow_style = {
            vertical_spacing = 0
          },
          type = "frame_style"
        },
        minimap_frame_style = {
          minimal_height = 250,
          parent = "frame_in_right_container_style",
          type = "frame_style"
        },
        mining_progressbar_style = {
          parent = "health_progressbar_style",
          smooth_color = <table 31>,
          type = "progressbar_style"
        },
        mod_dependency_invalid_label_style = {
          font_color = <table 32>,
          parent = "label_style",
          type = "label_style"
        },
        mod_disabled_listbox_item_style = {
          default = {
            font_color = {
              b = 0.5,
              g = 0.5,
              r = 0.5
            }
          },
          hovered = {
            font_color = {
              b = 0.5,
              g = 0.5,
              r = 0.5
            }
          },
          parent = "listbox_item_style",
          selected = {
            font_color = {
              b = 0.5,
              g = 0.5,
              r = 0.5
            }
          },
          type = "listbox_item_style"
        },
        mod_info_flow_style = {
          minimal_width = 500,
          type = "listbox_style"
        },
        mod_invalid_listbox_item_style = {
          default = {
            font_color = <table 32>
          },
          hovered = {
            font_color = <table 32>
          },
          parent = "listbox_item_style",
          selected = {
            font_color = <table 32>
          },
          type = "listbox_item_style"
        },
        mod_list_label_style = {
          font = "default-bold",
          font_color = {
            b = 0.1,
            g = 0.9,
            r = 0.9
          },
          parent = "label_style",
          type = "label_style"
        },
        mods_listbox_style = {
          height = 350,
          type = "listbox_style",
          width = 300
        },
        multiplayer_activity_bar_style = {
          type = "activity_bar_style"
        },
        naked_frame_style = {
          parent = "inner_frame_style",
          title_bottom_padding = 0,
          type = "frame_style"
        },
        name = "default",
        not_available_preview_technology_slot_style = {
          height = 68,
          parent = "not_available_technology_slot_style",
          scalable = false,
          type = "button_style",
          width = 68
        },
        not_available_slot_button_style = {
          clicked_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 185,
              y = 36
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          default_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 111,
              y = 36
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          hovered_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 148,
              y = 36
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          parent = "slot_button_style",
          type = "button_style"
        },
        not_available_technology_slot_style = {
          clicked_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 185,
              y = 36
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          default_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 111,
              y = 36
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          hovered_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 148,
              y = 36
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          parent = "slot_button_style",
          scalable = false,
          type = "button_style"
        },
        notice_textbox_style = {
          bottom_padding = 0,
          font = "default",
          font_color = {
            b = 1,
            g = 1,
            r = 1
          },
          graphical_set = {
            bottom_monolith_border = 0,
            left_monolith_border = 0,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 1,
              priority = "extra-high-no-scale",
              width = 1,
              x = 0,
              y = 50
            },
            right_monolith_border = 0,
            top_monolith_border = 0,
            type = "monolith"
          },
          left_padding = 0,
          parent = "textbox_style",
          right_padding = 0,
          selection_background_color = {
            b = 0.83,
            g = 0.7,
            r = 0.66
          },
          top_padding = 0,
          type = "textbox_style"
        },
        number_textfield_style = {
          minimal_width = 50,
          type = "textfield_style"
        },
        outer_frame_style = {
          bottom_padding = 0,
          flow_style = {
            horizontal_spacing = 0,
            resize_row_to_width = true,
            resize_to_row_height = true,
            vertical_spacing = 0
          },
          graphical_set = {
            type = "none"
          },
          left_padding = 0,
          right_padding = 0,
          title_bottom_padding = 0,
          top_padding = 0,
          type = "frame_style"
        },
        partially_promised_crafting_queue_slot_style = {
          clicked_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 257,
              y = 108
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          default_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 257,
              y = 36
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          hovered_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 257,
              y = 72
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          parent = "crafting_queue_slot_style",
          scalable = false,
          type = "button_style"
        },
        production_progressbar_style = {
          type = "progressbar_style"
        },
        progressbar_style = {
          diode_count = 10,
          diode_empty = {
            filename = "__core__/graphics/diode-grey.png",
            height = 20,
            priority = "extra-high-no-scale",
            width = 20
          },
          diode_full = {
            filename = "__core__/graphics/diode-green.png",
            height = 20,
            priority = "extra-high-no-scale",
            width = 20
          },
          font = "default",
          font_color = {
            b = 1,
            g = 1,
            r = 1
          },
          other_smooth_colors = {},
          progressbar_type = "smooth",
          smooth_bar = {
            filename = "__core__/graphics/gui.png",
            height = 5,
            priority = "extra-high-no-scale",
            width = 1,
            x = 221
          },
          smooth_bar_background = {
            filename = "__core__/graphics/gui.png",
            height = 7,
            priority = "extra-high-no-scale",
            width = 1,
            x = 222
          },
          smooth_color = {
            g = 1
          },
          smooth_size = 200,
          type = "progressbar_style"
        },
        promised_crafting_queue_slot_style = {
          clicked_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 221,
              y = 108
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          default_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 221,
              y = 36
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          hovered_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 221,
              y = 72
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          parent = "crafting_queue_slot_style",
          scalable = false,
          type = "button_style"
        },
        quick_bar_frame_style = {
          top_padding = 8,
          type = "frame_style"
        },
        radiobutton_style = {
          clicked_background = {
            filename = "__core__/graphics/gui.png",
            height = 10,
            priority = "extra-high-no-scale",
            width = 10,
            x = 65,
            y = 34
          },
          default_background = {
            filename = "__core__/graphics/gui.png",
            height = 10,
            priority = "extra-high-no-scale",
            width = 10,
            x = 43,
            y = 34
          },
          font = "default",
          font_color = {
            b = 1,
            g = 1,
            r = 1
          },
          hovered_background = {
            filename = "__core__/graphics/gui.png",
            height = 10,
            priority = "extra-high-no-scale",
            width = 10,
            x = 54,
            y = 34
          },
          selected = {
            filename = "__core__/graphics/gui.png",
            height = 10,
            priority = "extra-high-no-scale",
            width = 10,
            x = 75,
            y = 34
          },
          type = "radiobutton_style"
        },
        recipe_tooltip_cannot_craft_label_style = {
          font_color = <table 32>,
          parent = "tooltip_label_style",
          type = "label_style"
        },
        recipe_tooltip_transitive_craft_label_style = {
          font_color = <table 31>,
          parent = "tooltip_label_style",
          type = "label_style"
        },
        red_circuit_network_content_slot_style = {
          parent = "not_available_slot_button_style",
          type = "button_style"
        },
        researched_preview_technology_slot_style = {
          height = 68,
          parent = "researched_technology_slot_style",
          scalable = false,
          type = "button_style",
          width = 68
        },
        researched_technology_slot_style = {
          clicked_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 185,
              y = 108
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          default_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 111,
              y = 108
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          hovered_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 148,
              y = 108
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          parent = "slot_button_style",
          scalable = false,
          type = "button_style"
        },
        right_container_frame_style = {
          flow_style = {
            horizontal_spacing = 0,
            max_on_row = 1,
            minimum_width = 275,
            resize_row_to_width = true,
            vertical_spacing = 0
          },
          parent = "outer_frame_style",
          type = "frame_style"
        },
        saves_listbox_style = {
          height = 500,
          type = "listbox_style",
          width = 300
        },
        scenario_message_dialog_label_style = {
          font = "scenario-message-dialog",
          font_color = {
            b = 0,
            g = 0,
            r = 0
          },
          parent = "label_style",
          type = "label_style"
        },
        scenario_message_dialog_style = {
          bottom_padding = 10,
          graphical_set = {
            corner_size = { 13, 13 },
            filename = "__core__/graphics/arrows/hint-orange-box.png",
            position = { 0, 0 },
            priority = "extra-high-no-scale",
            type = "composition"
          },
          left_padding = 5,
          right_padding = 0,
          top_padding = 0,
          type = "frame_style"
        },
        scroll_pane_style = {
          flow_style = {
            parent = "flow_style"
          },
          horizontal_scroll_bar_spacing = 30,
          type = "scroll_pane_style",
          vertical_scroll_bar_spacing = 30
        },
        scrollbar_style = {
          background_color = {
            b = 0.5,
            g = 0.5,
            r = 0.5
          },
          type = "scrollbar_style"
        },
        selected_slot_button_style = {
          clicked_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 75,
              y = 108
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          default_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 75,
              y = 108
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          hovered_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 75,
              y = 108
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          parent = "slot_button_style",
          type = "button_style"
        },
        shield_progressbar_style = {
          parent = "health_progressbar_style",
          smooth_color = {
            b = 0.8,
            g = 0.2,
            r = 0.8
          },
          type = "progressbar_style"
        },
        slider_style = {
          button_style = {
            bottom_padding = 0,
            clicked_graphical_set = {
              monolith_image = {
                filename = "__core__/graphics/gui.png",
                height = 15,
                priority = "extra-high-no-scale",
                width = 15,
                x = 79
              },
              type = "monolith"
            },
            default_graphical_set = {
              monolith_image = {
                filename = "__core__/graphics/gui.png",
                height = 15,
                priority = "extra-high-no-scale",
                width = 15,
                x = 47
              },
              type = "monolith"
            },
            height = 15,
            hovered_graphical_set = {
              monolith_image = {
                filename = "__core__/graphics/gui.png",
                height = 15,
                priority = "extra-high-no-scale",
                width = 15,
                x = 63
              },
              type = "monolith"
            },
            left_padding = 0,
            right_padding = 0,
            top_padding = 0,
            width = 15
          },
          height = 15,
          left_side_graphical_set = {
            corner_size = { 3, 3 },
            filename = "__core__/graphics/gui.png",
            position = { 0, 8 },
            priority = "extra-high-no-scale",
            type = "composition"
          },
          right_side_graphical_set = {
            corner_size = { 3, 3 },
            filename = "__core__/graphics/gui.png",
            position = { 16, 0 },
            priority = "extra-high-no-scale",
            type = "composition"
          },
          type = "slider_style",
          width = 300
        },
        slot_button_style = {
          bottom_padding = 1,
          clicked_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 185
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          default_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 111
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          height = 36,
          hovered_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 148
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          left_padding = 1,
          parent = "button_style",
          pie_progress_color = {
            a = 0.5,
            b = 0.22,
            g = 0.66,
            r = 0.98
          },
          right_padding = 1,
          scalable = false,
          top_padding = 1,
          type = "button_style",
          width = 36
        },
        slot_table_spacing_flow_style = {
          horizontal_spacing = 2,
          type = "flow_style",
          vertical_spacing = 2
        },
        slot_table_style = {
          horizontal_spacing = 2,
          type = "table_style",
          vertical_spacing = 2
        },
        slot_with_filter_button_style = {
          clicked_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 221,
              y = 36
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          default_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 221,
              y = 36
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          hovered_graphical_set = {
            bottom_monolith_border = 1,
            left_monolith_border = 1,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 36,
              priority = "extra-high-no-scale",
              width = 36,
              x = 221,
              y = 36
            },
            right_monolith_border = 1,
            top_monolith_border = 1,
            type = "monolith"
          },
          parent = "slot_button_style",
          type = "button_style"
        },
        statistics_progressbar_style = {
          parent = "progressbar_style",
          smooth_size = 160,
          type = "progressbar_style"
        },
        tab_style = {
          border_color = {
            b = 0.6,
            g = 0.6,
            r = 0.6
          },
          bottom_padding = 8,
          default_font_color = {
            b = 1,
            g = 1,
            r = 1
          },
          font = "default-bold",
          left_padding = 8,
          right_padding = 8,
          selected_font_color = <table 31>,
          top_padding = 8,
          type = "tab_style"
        },
        table_spacing_flow_style = {
          horizontal_spacing = 5,
          type = "flow_style",
          vertical_spacing = 5
        },
        table_style = {
          horizontal_spacing = 5,
          type = "table_style",
          vertical_spacing = 5
        },
        technology_preview_frame_style = {
          flow_style = {
            max_on_row = 1,
            minimal_width = 450,
            resize_row_to_width = true
          },
          parent = "inner_frame_in_outer_frame_style",
          type = "frame_style"
        },
        textbox_style = {
          font = "default",
          font_color = {},
          graphical_set = {
            corner_size = { 3, 3 },
            filename = "__core__/graphics/gui.png",
            position = { 16, 0 },
            priority = "extra-high-no-scale",
            type = "composition"
          },
          selection_background_color = {
            b = 0.83,
            g = 0.7,
            r = 0.66
          },
          type = "textbox_style"
        },
        textfield_style = {
          font = "default",
          font_color = {},
          graphical_set = {
            corner_size = { 3, 3 },
            filename = "__core__/graphics/gui.png",
            position = { 16, 0 },
            priority = "extra-high-no-scale",
            type = "composition"
          },
          left_padding = 3,
          minimal_width = 150,
          right_padding = 2,
          selection_background_color = {
            b = 0.83,
            g = 0.7,
            r = 0.66
          },
          type = "textfield_style"
        },
        tool_bar_frame_style = {
          top_padding = 8,
          type = "frame_style"
        },
        tool_equip_gui_label_style = {
          parent = "description_label_style",
          type = "label_style"
        },
        tooltip_frame_style = {
          graphical_set = {
            bottom_monolith_border = 0,
            left_monolith_border = 0,
            monolith_image = {
              filename = "__core__/graphics/gui.png",
              height = 1,
              priority = "extra-high-no-scale",
              width = 1,
              x = 11,
              y = 3
            },
            right_monolith_border = 0,
            top_monolith_border = 0,
            type = "monolith"
          },
          type = "frame_style"
        },
        tooltip_label_style = {
          parent = "description_label_style",
          type = "label_style"
        },
        tooltip_title_label_style = {
          font = "default-bold",
          parent = "description_label_style",
          type = "label_style"
        },
        train_station_listbox_style = {
          height = 150,
          type = "listbox_style",
          width = 250
        },
        train_station_schedule_listbox_style = {
          parent = "train_station_listbox_style",
          type = "listbox_style"
        },
        type = "gui-style",
        vehicle_health_progressbar_style = {
          parent = "health_progressbar_style",
          smooth_color = {
            b = 0.8,
            g = 0.8,
            r = 0.8
          },
          type = "progressbar_style"
        }
      }
    },
    gun = {
      ["combat-shotgun"] = {
        attack_parameters = {
          ammo_category = "shotgun-shell",
          cooldown = 30,
          damage_modifier = 1.2,
          explosion = "explosion-gunshot",
          movement_slow_down_factor = 0.5,
          projectile_creation_distance = 0.6,
          range = 20,
          sound = { {
              filename = "__base__/sound/pump-shotgun.ogg",
              volume = 0.5
            } }
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/combat-shotgun.png",
        name = "combat-shotgun",
        order = "b[shotgun]-a[combat]",
        stack_size = 5,
        subgroup = "gun",
        type = "gun"
      },
      ["flame-thrower"] = {
        attack_parameters = {
          ammo_category = "flame-thrower",
          cooldown = 2,
          movement_slow_down_factor = 0.6,
          projectile_creation_distance = 0.6,
          range = 15
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/flame-thrower.png",
        name = "flame-thrower",
        order = "e[flame-thrower]",
        stack_size = 5,
        subgroup = "gun",
        type = "gun"
      },
      pistol = {
        attack_parameters = {
          ammo_category = "bullet",
          cooldown = 10,
          movement_slow_down_factor = 0.7,
          projectile_creation_distance = 0.6,
          range = 15,
          shell_particle = {
            center = { 0, 0.6 },
            creation_distance = 0.6,
            direction_deviation = 0.1,
            name = "shell-particle",
            speed = 0.1,
            speed_deviation = 0.03,
            starting_frame_speed = 0.4,
            starting_frame_speed_deviation = 0.1
          },
          sound = { {
              filename = "__base__/sound/gunshot.ogg",
              volume = 0.3
            } }
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/pistol.png",
        name = "pistol",
        order = "a[basic-clips]-a[pistol]",
        stack_size = 5,
        subgroup = "gun",
        type = "gun"
      },
      railgun = {
        attack_parameters = {
          ammo_category = "railgun",
          cooldown = 180,
          movement_slow_down_factor = 0.6,
          projectile_creation_distance = 0.6,
          range = 20,
          sound = { {
              filename = "__base__/sound/railgun.ogg",
              volume = 0.8
            } }
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/railgun.png",
        name = "railgun",
        order = "c[railgun]",
        stack_size = 5,
        subgroup = "gun",
        type = "gun"
      },
      ["rocket-launcher"] = {
        attack_parameters = {
          ammo_category = "rocket",
          cooldown = 60,
          movement_slow_down_factor = 0.8,
          projectile_creation_distance = 0.6,
          range = 22
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/rocket-launcher.png",
        name = "rocket-launcher",
        order = "d[rocket-launcher]",
        stack_size = 5,
        subgroup = "gun",
        type = "gun"
      },
      shotgun = {
        attack_parameters = {
          ammo_category = "shotgun-shell",
          cooldown = 60,
          explosion = "explosion-gunshot",
          movement_slow_down_factor = 0.6,
          projectile_creation_distance = 0.6,
          range = 20,
          sound = { {
              filename = "__base__/sound/pump-shotgun.ogg",
              volume = 0.5
            } }
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/shotgun.png",
        name = "shotgun",
        order = "b[shotgun]-a[basic]",
        stack_size = 5,
        subgroup = "gun",
        type = "gun"
      },
      ["submachine-gun"] = {
        attack_parameters = {
          ammo_category = "bullet",
          cooldown = 4,
          movement_slow_down_factor = 0.7,
          projectile_creation_distance = 0.6,
          range = 15,
          shell_particle = {
            center = { 0, 0.6 },
            creation_distance = 0.6,
            direction_deviation = 0.1,
            name = "shell-particle",
            speed = 0.1,
            speed_deviation = 0.03,
            starting_frame_speed = 0.4,
            starting_frame_speed_deviation = 0.1
          },
          sound = { {
              filename = "__base__/sound/gunshot.ogg",
              volume = 0.2
            } }
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/submachine-gun.png",
        name = "submachine-gun",
        order = "a[basic-clips]-b[submachine-gun]",
        stack_size = 1,
        subgroup = "gun",
        type = "gun"
      },
      ["tank-cannon"] = {
        attack_parameters = {
          ammo_category = "cannon-shell",
          cooldown = 90,
          movement_slow_down_factor = 0,
          projectile_creation_distance = 0.6,
          range = 25,
          sound = { {
              filename = "__base__/sound/cannon.ogg",
              volume = 0.3
            } }
        },
        flags = { "goes-to-main-inventory", "hidden" },
        icon = "__base__/graphics/icons/tank-cannon.png",
        name = "tank-cannon",
        order = "z[tank]-a[cannon]",
        stack_size = 5,
        subgroup = "gun",
        type = "gun"
      }
    },
    inserter = {
      ["basic-inserter"] = {
        collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
        corpse = "small-remnants",
        energy_per_movement = 5000,
        energy_per_rotation = 5000,
        energy_source = {
          drain = "0.4kW",
          type = "electric",
          usage_priority = "secondary-input"
        },
        extension_speed = 0.028,
        fast_replaceable_group = "inserter",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        hand_base_picture = {
          filename = "__base__/graphics/entity/basic-inserter/basic-inserter-hand-base.png",
          height = 33,
          priority = "extra-high",
          width = 8
        },
        hand_base_shadow = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
          height = 34,
          priority = "extra-high",
          width = 8
        },
        hand_closed_picture = {
          filename = "__base__/graphics/entity/basic-inserter/basic-inserter-hand-closed.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        hand_closed_shadow = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        hand_open_picture = {
          filename = "__base__/graphics/entity/basic-inserter/basic-inserter-hand-open.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        hand_open_shadow = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        icon = "__base__/graphics/icons/basic-inserter.png",
        insert_position = { 0, 1.2 },
        max_health = 40,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "basic-inserter"
        },
        name = "basic-inserter",
        pickup_position = { 0, -1 },
        platform_picture = {
          sheet = {
            filename = "__base__/graphics/entity/basic-inserter/basic-inserter-platform.png",
            height = 46,
            priority = "extra-high",
            width = 46
          }
        },
        resistances = { {
            percent = 90,
            type = "fire"
          } },
        rotation_speed = 0.014,
        selection_box = { { -0.4, -0.35 }, { 0.4, 0.45 } },
        type = "inserter",
        working_sound = {
          match_progress_to_activity = true,
          sound = { {
              filename = "__base__/sound/inserter-basic-1.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-basic-2.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-basic-3.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-basic-4.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-basic-5.ogg",
              volume = 0.75
            } }
        }
      },
      ["burner-inserter"] = {
        collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
        corpse = "small-remnants",
        energy_per_movement = 100000,
        energy_per_rotation = 100000,
        energy_source = {
          effectivity = 1,
          fuel_inventory_size = 1,
          smoke = { {
              deviation = { 0.1, 0.1 },
              frequency = 0.3,
              name = "smoke"
            } },
          type = "burner"
        },
        extension_speed = 0.02,
        fast_replaceable_group = "inserter",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        hand_base_picture = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base.png",
          height = 34,
          priority = "extra-high",
          width = 8
        },
        hand_base_shadow = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
          height = 34,
          priority = "extra-high",
          width = 8
        },
        hand_closed_picture = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        hand_closed_shadow = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        hand_open_picture = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        hand_open_shadow = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        icon = "__base__/graphics/icons/burner-inserter.png",
        insert_position = { 0, 1.2 },
        max_health = 40,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "burner-inserter"
        },
        name = "burner-inserter",
        pickup_position = { 0, -1 },
        platform_picture = {
          sheet = {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-platform.png",
            height = 46,
            priority = "extra-high",
            width = 46
          }
        },
        resistances = { {
            percent = 90,
            type = "fire"
          } },
        rotation_speed = 0.01,
        selection_box = { { -0.4, -0.35 }, { 0.4, 0.45 } },
        type = "inserter",
        working_sound = {
          match_progress_to_activity = true,
          sound = { {
              filename = "__base__/sound/inserter-basic-1.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-basic-2.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-basic-3.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-basic-4.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-basic-5.ogg",
              volume = 0.75
            } }
        }
      },
      ["fast-inserter"] = {
        collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
        corpse = "small-remnants",
        energy_per_movement = 5000,
        energy_per_rotation = 5000,
        energy_source = {
          drain = "0.4kW",
          type = "electric",
          usage_priority = "secondary-input"
        },
        extension_speed = 0.07,
        fast_replaceable_group = "inserter",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        hand_base_picture = {
          filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-base.png",
          height = 34,
          priority = "extra-high",
          width = 8
        },
        hand_base_shadow = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
          height = 34,
          priority = "extra-high",
          width = 8
        },
        hand_closed_picture = {
          filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-closed.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        hand_closed_shadow = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        hand_open_picture = {
          filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-open.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        hand_open_shadow = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        icon = "__base__/graphics/icons/fast-inserter.png",
        insert_position = { 0, 1.2 },
        max_health = 40,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "fast-inserter"
        },
        name = "fast-inserter",
        pickup_position = { 0, -1 },
        platform_picture = {
          sheet = {
            filename = "__base__/graphics/entity/fast-inserter/fast-inserter-platform.png",
            height = 46,
            priority = "extra-high",
            width = 46
          }
        },
        resistances = { {
            percent = 90,
            type = "fire"
          } },
        rotation_speed = 0.035,
        selection_box = { { -0.4, -0.35 }, { 0.4, 0.45 } },
        type = "inserter",
        working_sound = {
          match_progress_to_activity = true,
          sound = { {
              filename = "__base__/sound/inserter-fast-1.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-fast-2.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-fast-3.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-fast-4.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-fast-5.ogg",
              volume = 0.75
            } }
        }
      },
      ["long-handed-inserter"] = {
        collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
        corpse = "small-remnants",
        energy_per_movement = 5000,
        energy_per_rotation = 5000,
        energy_source = {
          drain = "0.4kW",
          type = "electric",
          usage_priority = "secondary-input"
        },
        extension_speed = 0.04,
        fast_replaceable_group = "inserter",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        hand_base_picture = {
          filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-base.png",
          height = 34,
          priority = "extra-high",
          width = 8
        },
        hand_base_shadow = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
          height = 34,
          priority = "extra-high",
          width = 8
        },
        hand_closed_picture = {
          filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-closed.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        hand_closed_shadow = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        hand_open_picture = {
          filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-open.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        hand_open_shadow = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        hand_size = 1.5,
        icon = "__base__/graphics/icons/long-handed-inserter.png",
        insert_position = { 0, 2.2 },
        max_health = 40,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "long-handed-inserter"
        },
        name = "long-handed-inserter",
        pickup_position = { 0, -2 },
        platform_picture = {
          sheet = {
            filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-platform.png",
            height = 46,
            priority = "extra-high",
            width = 46
          }
        },
        resistances = { {
            percent = 90,
            type = "fire"
          } },
        rotation_speed = 0.02,
        selection_box = { { -0.4, -0.35 }, { 0.4, 0.45 } },
        type = "inserter",
        working_sound = {
          match_progress_to_activity = true,
          sound = { {
              filename = "__base__/sound/inserter-long-handed-1.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-long-handed-2.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-long-handed-3.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-long-handed-4.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-long-handed-5.ogg",
              volume = 0.75
            } }
        }
      },
      ["smart-inserter"] = {
        collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
        corpse = "small-remnants",
        energy_per_movement = 7000,
        energy_per_rotation = 7000,
        energy_source = {
          drain = "0.4kW",
          type = "electric",
          usage_priority = "secondary-input"
        },
        extension_speed = 0.07,
        fast_replaceable_group = "inserter",
        filter_count = 5,
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        hand_base_picture = {
          filename = "__base__/graphics/entity/smart-inserter/smart-inserter-hand-base.png",
          height = 34,
          priority = "extra-high",
          width = 8
        },
        hand_base_shadow = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
          height = 34,
          priority = "extra-high",
          width = 8
        },
        hand_closed_picture = {
          filename = "__base__/graphics/entity/smart-inserter/smart-inserter-hand-closed.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        hand_closed_shadow = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        hand_open_picture = {
          filename = "__base__/graphics/entity/smart-inserter/smart-inserter-hand-open.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        hand_open_shadow = {
          filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
          height = 41,
          priority = "extra-high",
          width = 18
        },
        icon = "__base__/graphics/icons/smart-inserter.png",
        insert_position = { 0, 1.2 },
        max_health = 40,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "smart-inserter"
        },
        name = "smart-inserter",
        pickup_position = { 0, -1 },
        platform_picture = {
          sheet = {
            filename = "__base__/graphics/entity/smart-inserter/smart-inserter-platform.png",
            height = 46,
            priority = "extra-high",
            width = 46
          }
        },
        programmable = true,
        resistances = { {
            percent = 90,
            type = "fire"
          } },
        rotation_speed = 0.035,
        selection_box = { { -0.4, -0.35 }, { 0.4, 0.45 } },
        type = "inserter",
        uses_arm_movement = "basic-inserter",
        working_sound = {
          match_progress_to_activity = true,
          sound = { {
              filename = "__base__/sound/inserter-fast-1.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-fast-2.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-fast-3.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-fast-4.ogg",
              volume = 0.75
            }, {
              filename = "__base__/sound/inserter-fast-5.ogg",
              volume = 0.75
            } }
        }
      }
    },
    item = {
      ["advanced-circuit"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/advanced-circuit.png",
        name = "advanced-circuit",
        order = "d[advanced-circuit]",
        stack_size = 200,
        subgroup = "intermediate-product",
        type = "item"
      },
      ["alien-artifact"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/alien-artifact.png",
        name = "alien-artifact",
        order = "g[alien-artifact]",
        stack_size = 500,
        subgroup = "raw-material",
        type = "item"
      },
      ["alien-science-pack"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/alien-science-pack.png",
        name = "alien-science-pack",
        order = "d[alien-science-pack]",
        stack_size = 200,
        subgroup = "science-pack",
        type = "item"
      },
      ["assembling-machine-1"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/assembling-machine-1.png",
        name = "assembling-machine-1",
        order = "a[assembling-machine-1]",
        place_result = "assembling-machine-1",
        stack_size = 50,
        subgroup = "production-machine",
        type = "item"
      },
      ["assembling-machine-2"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/assembling-machine-2.png",
        name = "assembling-machine-2",
        order = "b[assembling-machine-2]",
        place_result = "assembling-machine-2",
        stack_size = 50,
        subgroup = "production-machine",
        type = "item"
      },
      ["assembling-machine-3"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/assembling-machine-3.png",
        name = "assembling-machine-3",
        order = "c[assembling-machine-3]",
        place_result = "assembling-machine-3",
        stack_size = 50,
        subgroup = "production-machine",
        type = "item"
      },
      ["basic-accumulator"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/basic-accumulator.png",
        name = "basic-accumulator",
        order = "e[accumulator]-a[basic-accumulator]",
        place_result = "basic-accumulator",
        stack_size = 50,
        subgroup = "energy",
        type = "item"
      },
      ["basic-beacon"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/basic-beacon.png",
        name = "basic-beacon",
        order = "a[beacon]",
        place_result = "basic-beacon",
        stack_size = 10,
        subgroup = "module",
        type = "item"
      },
      ["basic-electric-discharge-defense-equipment"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/basic-electric-discharge-defense-equipment.png",
        name = "basic-electric-discharge-defense-equipment",
        order = "d[active-defense]-b[basic-electric-discharge-defense-equipment]",
        placed_as_equipment_result = "basic-electric-discharge-defense-equipment",
        stack_size = 20,
        subgroup = "equipment",
        type = "item"
      },
      ["basic-exoskeleton-equipment"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/basic-exoskeleton-equipment.png",
        name = "basic-exoskeleton-equipment",
        order = "e[exoskeleton]-a[basic-exoskeleton-equipment]",
        placed_as_equipment_result = "basic-exoskeleton-equipment",
        stack_size = 10,
        subgroup = "equipment",
        type = "item"
      },
      ["basic-inserter"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/basic-inserter.png",
        name = "basic-inserter",
        order = "b[basic-inserter]",
        place_result = "basic-inserter",
        stack_size = 50,
        subgroup = "inserter",
        type = "item"
      },
      ["basic-laser-defense-equipment"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/basic-laser-defense-equipment.png",
        name = "basic-laser-defense-equipment",
        order = "d[active-defense]-a[basic-laser-defense-equipment]",
        placed_as_equipment_result = "basic-laser-defense-equipment",
        stack_size = 20,
        subgroup = "equipment",
        type = "item"
      },
      ["basic-mining-drill"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/basic-mining-drill.png",
        name = "basic-mining-drill",
        order = "a[items]-b[basic-mining-drill]",
        place_result = "basic-mining-drill",
        stack_size = 50,
        subgroup = "extraction-machine",
        type = "item"
      },
      ["basic-splitter"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/basic-splitter.png",
        name = "basic-splitter",
        order = "c[splitter]-a[basic-splitter]",
        place_result = "basic-splitter",
        stack_size = 50,
        subgroup = "belt",
        type = "item"
      },
      ["basic-transport-belt"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/basic-transport-belt.png",
        name = "basic-transport-belt",
        order = "a[transport-belt]-a[basic-transport-belt]",
        place_result = "basic-transport-belt",
        stack_size = 50,
        subgroup = "belt",
        type = "item"
      },
      ["basic-transport-belt-to-ground"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/basic-transport-belt-to-ground.png",
        name = "basic-transport-belt-to-ground",
        order = "b[transport-belt-to-ground]-a[basic-transport-belt-to-ground]",
        place_result = "basic-transport-belt-to-ground",
        stack_size = 50,
        subgroup = "belt",
        type = "item"
      },
      battery = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/battery.png",
        name = "battery",
        order = "i[battery]",
        stack_size = 200,
        subgroup = "intermediate-product",
        type = "item"
      },
      ["battery-equipment"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/battery-equipment.png",
        name = "battery-equipment",
        order = "c[battery]-a[battery-equipment]",
        placed_as_equipment_result = "battery-equipment",
        stack_size = 20,
        subgroup = "equipment",
        type = "item"
      },
      ["battery-mk2-equipment"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/battery-mk2-equipment.png",
        name = "battery-mk2-equipment",
        order = "c[battery]-b[battery-equipment-mk2]",
        placed_as_equipment_result = "battery-mk2-equipment",
        stack_size = 20,
        subgroup = "equipment",
        type = "item"
      },
      ["big-electric-pole"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/big-electric-pole.png",
        name = "big-electric-pole",
        order = "a[energy]-c[big-electric-pole]",
        place_result = "big-electric-pole",
        stack_size = 50,
        subgroup = "energy-pipe-distribution",
        type = "item"
      },
      boiler = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/boiler.png",
        name = "boiler",
        order = "b[steam-power]-a[boiler]",
        place_result = "boiler",
        stack_size = 50,
        subgroup = "energy",
        type = "item"
      },
      ["burner-inserter"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/burner-inserter.png",
        name = "burner-inserter",
        order = "a[burner-inserter]",
        place_result = "burner-inserter",
        stack_size = 50,
        subgroup = "inserter",
        type = "item"
      },
      ["burner-mining-drill"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/burner-mining-drill.png",
        name = "burner-mining-drill",
        order = "a[items]-a[burner-mining-drill]",
        place_result = "burner-mining-drill",
        stack_size = 50,
        subgroup = "extraction-machine",
        type = "item"
      },
      car = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/car.png",
        name = "car",
        order = "b[personal-transport]-a[car]",
        place_result = "car",
        stack_size = 1,
        subgroup = "transport",
        type = "item"
      },
      ["cargo-wagon"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/cargo-wagon.png",
        name = "cargo-wagon",
        order = "a[train-system]-f[cargo-wagon]",
        place_result = "cargo-wagon",
        stack_size = 5,
        subgroup = "transport",
        type = "item"
      },
      ["chemical-plant"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/chemical-plant.png",
        name = "chemical-plant",
        order = "e[chemical-plant]",
        place_result = "chemical-plant",
        stack_size = 10,
        subgroup = "production-machine",
        type = "item"
      },
      coal = {
        dark_background_icon = "__base__/graphics/icons/coal-dark-background.png",
        flags = { "goes-to-main-inventory" },
        fuel_value = "8MJ",
        icon = "__base__/graphics/icons/coal.png",
        name = "coal",
        order = "b[coal]",
        stack_size = 50,
        subgroup = "raw-material",
        type = "item"
      },
      coin = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/coin.png",
        name = "coin",
        order = "y",
        stack_size = 100000,
        subgroup = "science-pack",
        type = "item"
      },
      computer = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/computer.png",
        name = "computer",
        order = "g[computer]",
        stack_size = 1,
        subgroup = "defensive-structure",
        type = "item"
      },
      ["construction-robot"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/construction-robot.png",
        name = "construction-robot",
        order = "a[robot]-b[construction-robot]",
        place_result = "construction-robot",
        stack_size = 50,
        subgroup = "logistic-network",
        type = "item"
      },
      ["copper-cable"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/copper-cable.png",
        name = "copper-cable",
        order = "0[copper-cable]",
        stack_size = 200,
        subgroup = "circuit-network",
        type = "item"
      },
      ["copper-ore"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/copper-ore.png",
        name = "copper-ore",
        order = "f[copper-ore]",
        stack_size = 50,
        subgroup = "raw-resource",
        type = "item"
      },
      ["copper-plate"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/copper-plate.png",
        name = "copper-plate",
        order = "c[copper-plate]",
        stack_size = 100,
        subgroup = "raw-material",
        type = "item"
      },
      ["crude-oil-barrel"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/fluid/crude-oil-barrel.png",
        name = "crude-oil-barrel",
        order = "b[crude-oil-barrel]",
        stack_size = 10,
        subgroup = "barrel",
        type = "item"
      },
      ["curved-rail"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/curved-rail.png",
        name = "curved-rail",
        order = "a[train-system]-b[curved-rail]",
        place_result = "curved-rail",
        stack_size = 50,
        subgroup = "transport",
        type = "item"
      },
      ["diesel-locomotive"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/diesel-locomotive.png",
        name = "diesel-locomotive",
        order = "a[train-system]-e[diesel-locomotive]",
        place_result = "diesel-locomotive",
        stack_size = 5,
        subgroup = "transport",
        type = "item"
      },
      ["electric-engine-unit"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/electric-engine-unit.png",
        name = "electric-engine-unit",
        order = "g[electric-engine-unit]",
        stack_size = 50,
        subgroup = "intermediate-product",
        type = "item"
      },
      ["electric-furnace"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/electric-furnace.png",
        name = "electric-furnace",
        order = "c[electric-furnace]",
        place_result = "electric-furnace",
        stack_size = 50,
        subgroup = "smelting-machine",
        type = "item"
      },
      ["electronic-circuit"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/electronic-circuit.png",
        name = "electronic-circuit",
        order = "c[electronic-circuit]",
        stack_size = 200,
        subgroup = "intermediate-product",
        type = "item"
      },
      ["empty-barrel"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/fluid/empty-barrel.png",
        name = "empty-barrel",
        order = "a[empty-barrel]",
        stack_size = 10,
        subgroup = "barrel",
        type = "item"
      },
      ["energy-shield-equipment"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/energy-shield-equipment.png",
        name = "energy-shield-equipment",
        order = "b[shield]-a[energy-shield-equipment]",
        placed_as_equipment_result = "energy-shield-equipment",
        stack_size = 20,
        subgroup = "equipment",
        type = "item"
      },
      ["energy-shield-mk2-equipment"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/energy-shield-mk2-equipment.png",
        name = "energy-shield-mk2-equipment",
        order = "b[shield]-b[energy-shield-equipment-mk2]",
        placed_as_equipment_result = "energy-shield-mk2-equipment",
        stack_size = 20,
        subgroup = "equipment",
        type = "item"
      },
      ["engine-unit"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/engine-unit.png",
        name = "engine-unit",
        order = "f[engine-unit]",
        stack_size = 50,
        subgroup = "intermediate-product",
        type = "item"
      },
      explosives = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/explosives.png",
        name = "explosives",
        order = "h[explosives]",
        stack_size = 50,
        subgroup = "intermediate-product",
        type = "item"
      },
      ["express-splitter"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/express-splitter.png",
        name = "express-splitter",
        order = "c[splitter]-c[express-splitter]",
        place_result = "express-splitter",
        stack_size = 50,
        subgroup = "belt",
        type = "item"
      },
      ["express-transport-belt"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/express-transport-belt.png",
        name = "express-transport-belt",
        order = "a[transport-belt]-c[express-transport-belt]",
        place_result = "express-transport-belt",
        stack_size = 50,
        subgroup = "belt",
        type = "item"
      },
      ["express-transport-belt-to-ground"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/express-transport-belt-to-ground.png",
        name = "express-transport-belt-to-ground",
        order = "b[transport-belt-to-ground]-c[express-transport-belt-to-ground]",
        place_result = "express-transport-belt-to-ground",
        stack_size = 50,
        subgroup = "belt",
        type = "item"
      },
      ["fast-inserter"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/fast-inserter.png",
        name = "fast-inserter",
        order = "d[fast-inserter]",
        place_result = "fast-inserter",
        stack_size = 50,
        subgroup = "inserter",
        type = "item"
      },
      ["fast-splitter"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/fast-splitter.png",
        name = "fast-splitter",
        order = "c[splitter]-b[fast-splitter]",
        place_result = "fast-splitter",
        stack_size = 50,
        subgroup = "belt",
        type = "item"
      },
      ["fast-transport-belt"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/fast-transport-belt.png",
        name = "fast-transport-belt",
        order = "a[transport-belt]-b[fast-transport-belt]",
        place_result = "fast-transport-belt",
        stack_size = 50,
        subgroup = "belt",
        type = "item"
      },
      ["fast-transport-belt-to-ground"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/fast-transport-belt-to-ground.png",
        name = "fast-transport-belt-to-ground",
        order = "b[transport-belt-to-ground]-b[fast-transport-belt-to-ground]",
        place_result = "fast-transport-belt-to-ground",
        stack_size = 50,
        subgroup = "belt",
        type = "item"
      },
      ["flying-robot-frame"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/flying-robot-frame.png",
        name = "flying-robot-frame",
        order = "j[flying-robot-frame]",
        stack_size = 50,
        subgroup = "intermediate-product",
        type = "item"
      },
      ["fusion-reactor-equipment"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/fusion-reactor-equipment.png",
        name = "fusion-reactor-equipment",
        order = "a[energy-source]-b[fusion-reactor]",
        placed_as_equipment_result = "fusion-reactor-equipment",
        stack_size = 20,
        subgroup = "equipment",
        type = "item"
      },
      gate = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/gate.png",
        name = "gate",
        order = "a[wall]-b[gate]",
        place_result = "gate",
        stack_size = 50,
        subgroup = "defensive-structure",
        type = "item"
      },
      ["green-wire"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/green-wire.png",
        name = "green-wire",
        order = "a[wires]-b[green-wire]",
        stack_size = 200,
        subgroup = "circuit-network",
        type = "item"
      },
      ["gun-turret"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/gun-turret.png",
        name = "gun-turret",
        order = "b[turret]-a[gun-turret]",
        place_result = "gun-turret",
        stack_size = 50,
        subgroup = "defensive-structure",
        type = "item"
      },
      ["iron-chest"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/iron-chest.png",
        name = "iron-chest",
        order = "a[items]-b[iron-chest]",
        place_result = "iron-chest",
        stack_size = 50,
        subgroup = "storage",
        type = "item"
      },
      ["iron-gear-wheel"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/iron-gear-wheel.png",
        name = "iron-gear-wheel",
        order = "b[iron-gear-wheel]",
        stack_size = 100,
        subgroup = "intermediate-product",
        type = "item"
      },
      ["iron-ore"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/iron-ore.png",
        name = "iron-ore",
        order = "e[iron-ore]",
        stack_size = 50,
        subgroup = "raw-resource",
        type = "item"
      },
      ["iron-plate"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/iron-plate.png",
        name = "iron-plate",
        order = "b[iron-plate]",
        stack_size = 100,
        subgroup = "raw-material",
        type = "item"
      },
      ["iron-stick"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/iron-stick.png",
        name = "iron-stick",
        order = "a[iron-stick]",
        stack_size = 100,
        subgroup = "intermediate-product",
        type = "item"
      },
      lab = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/lab.png",
        name = "lab",
        order = "g[lab]",
        place_result = "lab",
        stack_size = 10,
        subgroup = "production-machine",
        type = "item"
      },
      ["land-mine"] = {
        damage_radius = 5,
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/land-mine.png",
        name = "land-mine",
        order = "f[land-mine]",
        place_result = "land-mine",
        stack_size = 20,
        subgroup = "gun",
        trigger_radius = 1,
        type = "item"
      },
      ["laser-turret"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/laser-turret.png",
        name = "laser-turret",
        order = "b[turret]-b[laser-turret]",
        place_result = "laser-turret",
        stack_size = 50,
        subgroup = "defensive-structure",
        type = "item"
      },
      ["logistic-chest-active-provider"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/logistic-chest-active-provider.png",
        name = "logistic-chest-active-provider",
        order = "b[storage]-c[logistic-chest-active-provider]",
        place_result = "logistic-chest-active-provider",
        stack_size = 50,
        subgroup = "logistic-network",
        type = "item"
      },
      ["logistic-chest-passive-provider"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/logistic-chest-passive-provider.png",
        name = "logistic-chest-passive-provider",
        order = "b[storage]-c[logistic-chest-passive-provider]",
        place_result = "logistic-chest-passive-provider",
        stack_size = 50,
        subgroup = "logistic-network",
        type = "item"
      },
      ["logistic-chest-requester"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/logistic-chest-requester.png",
        name = "logistic-chest-requester",
        order = "b[storage]-c[logistic-chest-requester]",
        place_result = "logistic-chest-requester",
        stack_size = 50,
        subgroup = "logistic-network",
        type = "item"
      },
      ["logistic-chest-storage"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/logistic-chest-storage.png",
        name = "logistic-chest-storage",
        order = "b[storage]-c[logistic-chest-storage]",
        place_result = "logistic-chest-storage",
        stack_size = 50,
        subgroup = "logistic-network",
        type = "item"
      },
      ["logistic-robot"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/logistic-robot.png",
        name = "logistic-robot",
        order = "a[robot]-a[logistic-robot]",
        place_result = "logistic-robot",
        stack_size = 50,
        subgroup = "logistic-network",
        type = "item"
      },
      ["long-handed-inserter"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/long-handed-inserter.png",
        name = "long-handed-inserter",
        order = "c[long-handed-inserter]",
        place_result = "long-handed-inserter",
        stack_size = 50,
        subgroup = "inserter",
        type = "item"
      },
      ["medium-electric-pole"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/medium-electric-pole.png",
        name = "medium-electric-pole",
        order = "a[energy]-b[medium-electric-pole]",
        place_result = "medium-electric-pole",
        stack_size = 50,
        subgroup = "energy-pipe-distribution",
        type = "item"
      },
      ["night-vision-equipment"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/night-vision-equipment.png",
        name = "night-vision-equipment",
        order = "f[night-vision]-a[night-vision-equipment]",
        placed_as_equipment_result = "night-vision-equipment",
        stack_size = 20,
        subgroup = "equipment",
        type = "item"
      },
      ["offshore-pump"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/offshore-pump.png",
        name = "offshore-pump",
        order = "b[fluids]-a[offshore-pump]",
        place_result = "offshore-pump",
        stack_size = 20,
        subgroup = "extraction-machine",
        type = "item"
      },
      ["oil-refinery"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/oil-refinery.png",
        name = "oil-refinery",
        order = "d[refinery]",
        place_result = "oil-refinery",
        stack_size = 10,
        subgroup = "production-machine",
        type = "item"
      },
      pipe = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/pipe.png",
        name = "pipe",
        order = "a[pipe]-a[pipe]",
        place_result = "pipe",
        stack_size = 50,
        subgroup = "energy-pipe-distribution",
        type = "item"
      },
      ["pipe-to-ground"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/pipe-to-ground.png",
        name = "pipe-to-ground",
        order = "a[pipe]-b[pipe-to-ground]",
        place_result = "pipe-to-ground",
        stack_size = 50,
        subgroup = "energy-pipe-distribution",
        type = "item"
      },
      ["plastic-bar"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/plastic-bar.png",
        name = "plastic-bar",
        order = "g[plastic-bar]",
        stack_size = 100,
        subgroup = "raw-material",
        type = "item"
      },
      ["player-port"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/player-port.png",
        name = "player-port",
        order = "z[not-used]",
        place_result = "player-port",
        stack_size = 50,
        subgroup = "defensive-structure",
        type = "item"
      },
      ["processing-unit"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/processing-unit.png",
        name = "processing-unit",
        order = "e[processing-unit]",
        stack_size = 100,
        subgroup = "intermediate-product",
        type = "item"
      },
      pumpjack = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/pumpjack.png",
        name = "pumpjack",
        order = "b[fluids]-b[pumpjack]",
        place_result = "pumpjack",
        stack_size = 20,
        subgroup = "extraction-machine",
        type = "item"
      },
      radar = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/radar.png",
        name = "radar",
        order = "d[radar]-a[radar]",
        place_result = "radar",
        stack_size = 50,
        subgroup = "defensive-structure",
        type = "item"
      },
      ["rail-signal"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/rail-signal.png",
        name = "rail-signal",
        order = "a[train-system]-d[rail-signal]",
        place_result = "rail-signal",
        stack_size = 50,
        subgroup = "transport",
        type = "item"
      },
      ["raw-wood"] = {
        flags = { "goes-to-main-inventory" },
        fuel_value = "4MJ",
        icon = "__base__/graphics/icons/raw-wood.png",
        name = "raw-wood",
        order = "a[raw-wood]",
        stack_size = 50,
        subgroup = "raw-material",
        type = "item"
      },
      ["red-wire"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/red-wire.png",
        name = "red-wire",
        order = "a[wires]-a[red-wire]",
        stack_size = 200,
        subgroup = "circuit-network",
        type = "item"
      },
      roboport = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/roboport.png",
        name = "roboport",
        order = "c[signal]-a[roboport]",
        place_result = "roboport",
        stack_size = 5,
        subgroup = "logistic-network",
        type = "item"
      },
      ["rocket-defense"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/rocket-defense.png",
        name = "rocket-defense",
        order = "e[rocket-defense]",
        place_result = "rocket-defense",
        stack_size = 5,
        subgroup = "defensive-structure",
        type = "item"
      },
      ["science-pack-1"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/science-pack-1.png",
        name = "science-pack-1",
        order = "a[science-pack-1]",
        stack_size = 200,
        subgroup = "science-pack",
        type = "item"
      },
      ["science-pack-2"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/science-pack-2.png",
        name = "science-pack-2",
        order = "a[science-pack-2]",
        stack_size = 200,
        subgroup = "science-pack",
        type = "item"
      },
      ["science-pack-3"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/science-pack-3.png",
        name = "science-pack-3",
        order = "a[science-pack-3]",
        stack_size = 200,
        subgroup = "science-pack",
        type = "item"
      },
      ["small-electric-pole"] = {
        flags = { "goes-to-quickbar" },
        fuel_value = "4MJ",
        icon = "__base__/graphics/icons/small-electric-pole.png",
        name = "small-electric-pole",
        order = "a[energy]-a[small-electric-pole]",
        place_result = "small-electric-pole",
        stack_size = 50,
        subgroup = "energy-pipe-distribution",
        type = "item"
      },
      ["small-lamp"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/small-lamp.png",
        name = "small-lamp",
        order = "c[light]-a[small-lamp]",
        place_result = "small-lamp",
        stack_size = 50,
        subgroup = "energy",
        type = "item"
      },
      ["small-plane"] = {
        flags = { "goes-to-quickbar", "hidden" },
        icon = "__base__/graphics/icons/small-plane.png",
        name = "small-plane",
        order = "h[small-plane]",
        stack_size = 1,
        subgroup = "defensive-structure",
        type = "item"
      },
      ["small-pump"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/small-pump.png",
        name = "small-pump",
        order = "b[pipe]-c[small-pump]",
        place_result = "small-pump",
        stack_size = 50,
        subgroup = "energy-pipe-distribution",
        type = "item"
      },
      ["smart-chest"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/smart-chest.png",
        name = "smart-chest",
        order = "a[items]-d[smart-chest]",
        place_result = "smart-chest",
        stack_size = 50,
        subgroup = "storage",
        type = "item"
      },
      ["smart-inserter"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/smart-inserter.png",
        name = "smart-inserter",
        order = "f[inserter]-e[smart-inserter]",
        place_result = "smart-inserter",
        stack_size = 50,
        subgroup = "inserter",
        type = "item"
      },
      ["solar-panel"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/solar-panel.png",
        name = "solar-panel",
        order = "d[solar-panel]-a[solar-panel]",
        place_result = "solar-panel",
        stack_size = 50,
        subgroup = "energy",
        type = "item"
      },
      ["solar-panel-equipment"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/solar-panel-equipment.png",
        name = "solar-panel-equipment",
        order = "a[energy-source]-a[solar-panel]",
        placed_as_equipment_result = "solar-panel-equipment",
        stack_size = 20,
        subgroup = "equipment",
        type = "item"
      },
      ["solid-fuel"] = {
        flags = { "goes-to-main-inventory" },
        fuel_value = "25MJ",
        icon = "__base__/graphics/icons/solid-fuel.png",
        name = "solid-fuel",
        order = "c[solid-fuel]",
        stack_size = 50,
        subgroup = "raw-resource",
        type = "item"
      },
      ["steam-engine"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/steam-engine.png",
        name = "steam-engine",
        order = "b[steam-power]-b[steam-engine]",
        place_result = "steam-engine",
        stack_size = 10,
        subgroup = "energy",
        type = "item"
      },
      ["steel-chest"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/steel-chest.png",
        name = "steel-chest",
        order = "a[items]-c[steel-chest]",
        place_result = "steel-chest",
        stack_size = 50,
        subgroup = "storage",
        type = "item"
      },
      ["steel-furnace"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/steel-furnace.png",
        name = "steel-furnace",
        order = "b[steel-furnace]",
        place_result = "steel-furnace",
        stack_size = 50,
        subgroup = "smelting-machine",
        type = "item"
      },
      ["steel-plate"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/steel-plate.png",
        name = "steel-plate",
        order = "d[steel-plate]",
        stack_size = 100,
        subgroup = "raw-material",
        type = "item"
      },
      stone = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/stone.png",
        name = "stone",
        order = "d[stone]",
        stack_size = 50,
        subgroup = "raw-resource",
        type = "item"
      },
      ["stone-brick"] = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/stone-brick.png",
        name = "stone-brick",
        order = "e[stone-brick]",
        stack_size = 100,
        subgroup = "raw-material",
        type = "item"
      },
      ["stone-furnace"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/stone-furnace.png",
        name = "stone-furnace",
        order = "a[stone-furnace]",
        place_result = "stone-furnace",
        stack_size = 50,
        subgroup = "smelting-machine",
        type = "item"
      },
      ["stone-wall"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/stone-wall.png",
        name = "stone-wall",
        order = "a[stone-wall]-a[stone-wall]",
        place_result = "stone-wall",
        stack_size = 50,
        subgroup = "defensive-structure",
        type = "item"
      },
      ["storage-tank"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/storage-tank.png",
        name = "storage-tank",
        order = "b[fluid]-a[storage-tank]",
        place_result = "storage-tank",
        stack_size = 50,
        subgroup = "storage",
        type = "item"
      },
      ["straight-rail"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/straight-rail.png",
        name = "straight-rail",
        order = "a[train-system]-a[straight-rail]",
        place_result = "straight-rail",
        stack_size = 50,
        subgroup = "transport",
        type = "item"
      },
      substation = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/substation.png",
        name = "substation",
        order = "a[energy]-d[substation]",
        place_result = "substation",
        stack_size = 50,
        subgroup = "energy-pipe-distribution",
        type = "item"
      },
      sulfur = {
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/sulfur.png",
        name = "sulfur",
        order = "f[sulfur]",
        stack_size = 50,
        subgroup = "raw-material",
        type = "item"
      },
      tank = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/tank.png",
        name = "tank",
        order = "b[personal-transport]-b[tank]",
        place_result = "tank",
        stack_size = 1,
        subgroup = "transport",
        type = "item"
      },
      ["train-stop"] = {
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/train-stop.png",
        name = "train-stop",
        order = "a[train-system]-c[train-stop]",
        place_result = "train-stop",
        stack_size = 10,
        subgroup = "transport",
        type = "item"
      },
      wood = {
        flags = { "goes-to-main-inventory" },
        fuel_value = "2MJ",
        icon = "__base__/graphics/icons/wood.png",
        name = "wood",
        order = "a[wood]",
        stack_size = 50,
        subgroup = "raw-material",
        type = "item"
      },
      ["wooden-chest"] = {
        flags = { "goes-to-quickbar" },
        fuel_value = "4MJ",
        icon = "__base__/graphics/icons/wooden-chest.png",
        name = "wooden-chest",
        order = "a[items]-a[wooden-chest]",
        place_result = "wooden-chest",
        stack_size = 50,
        subgroup = "storage",
        type = "item"
      }
    },
    ["item-entity"] = {
      ["item-on-ground"] = {
        collision_box = { { -0.14, -0.14 }, { 0.14, 0.14 } },
        flags = { "placeable-off-grid", "not-on-map" },
        name = "item-on-ground",
        selection_box = { { -0.17, -0.17 }, { 0.17, 0.17 } },
        type = "item-entity"
      }
    },
    ["item-group"] = {
      combat = {
        icon = "__base__/graphics/technology/military.png",
        inventory_order = "b",
        name = "combat",
        order = "d",
        type = "item-group"
      },
      enemies = {
        icon = "__core__/graphics/enemy-force-icon.png",
        inventory_order = "a",
        name = "enemies",
        order = "aa",
        type = "item-group"
      },
      environment = {
        icon = "__core__/graphics/neutral-force-icon.png",
        inventory_order = "a",
        name = "environment",
        order = "a",
        type = "item-group"
      },
      ["intermediate-products"] = {
        icon = "__base__/graphics/technology/engine.png",
        inventory_order = "a",
        name = "intermediate-products",
        order = "c",
        type = "item-group"
      },
      logistics = {
        icon = "__base__/graphics/technology/logistics.png",
        inventory_order = "c",
        name = "logistics",
        order = "aaa",
        type = "item-group"
      },
      other = {
        icon = "__core__/graphics/questionmark.png",
        inventory_order = "z",
        name = "other",
        order = "z",
        type = "item-group"
      },
      production = {
        icon = "__base__/graphics/technology/automation.png",
        inventory_order = "d",
        name = "production",
        order = "b",
        type = "item-group"
      }
    },
    ["item-subgroup"] = {
      ammo = {
        group = "combat",
        name = "ammo",
        order = "b",
        type = "item-subgroup"
      },
      armor = {
        group = "combat",
        name = "armor",
        order = "d",
        type = "item-subgroup"
      },
      barrel = {
        group = "intermediate-products",
        name = "barrel",
        order = "d",
        type = "item-subgroup"
      },
      belt = {
        group = "logistics",
        name = "belt",
        order = "b",
        type = "item-subgroup"
      },
      capsule = {
        group = "combat",
        name = "capsule",
        order = "c",
        type = "item-subgroup"
      },
      ["circuit-network"] = {
        group = "intermediate-products",
        name = "circuit-network",
        order = "f",
        type = "item-subgroup"
      },
      corpses = {
        group = "environment",
        name = "corpses",
        order = "c",
        type = "item-subgroup"
      },
      creatures = {
        group = "environment",
        name = "creatures",
        order = "a",
        type = "item-subgroup"
      },
      ["defensive-structure"] = {
        group = "combat",
        name = "defensive-structure",
        order = "f",
        type = "item-subgroup"
      },
      enemies = {
        group = "enemies",
        name = "enemies",
        order = "a",
        type = "item-subgroup"
      },
      energy = {
        group = "production",
        name = "energy",
        order = "b",
        type = "item-subgroup"
      },
      ["energy-pipe-distribution"] = {
        group = "logistics",
        name = "energy-pipe-distribution",
        order = "d",
        type = "item-subgroup"
      },
      equipment = {
        group = "combat",
        name = "equipment",
        order = "e",
        type = "item-subgroup"
      },
      ["extraction-machine"] = {
        group = "production",
        name = "extraction-machine",
        order = "c",
        type = "item-subgroup"
      },
      fluid = {
        group = "intermediate-products",
        name = "fluid",
        order = "a",
        type = "item-subgroup"
      },
      grass = {
        group = "environment",
        name = "grass",
        order = "b",
        type = "item-subgroup"
      },
      gun = {
        group = "combat",
        name = "gun",
        order = "a",
        type = "item-subgroup"
      },
      inserter = {
        group = "logistics",
        name = "inserter",
        order = "c",
        type = "item-subgroup"
      },
      ["intermediate-product"] = {
        group = "intermediate-products",
        name = "intermediate-product",
        order = "e",
        type = "item-subgroup"
      },
      ["logistic-network"] = {
        group = "logistics",
        name = "logistic-network",
        order = "f",
        type = "item-subgroup"
      },
      module = {
        group = "production",
        name = "module",
        order = "f",
        type = "item-subgroup"
      },
      other = {
        group = "other",
        name = "other",
        order = "z",
        type = "item-subgroup"
      },
      ["production-machine"] = {
        group = "production",
        name = "production-machine",
        order = "e",
        type = "item-subgroup"
      },
      ["raw-material"] = {
        group = "intermediate-products",
        name = "raw-material",
        order = "c",
        type = "item-subgroup"
      },
      ["raw-resource"] = {
        group = "intermediate-products",
        name = "raw-resource",
        order = "b",
        type = "item-subgroup"
      },
      remnants = {
        group = "environment",
        name = "remnants",
        order = "d",
        type = "item-subgroup"
      },
      ["science-pack"] = {
        group = "intermediate-products",
        name = "science-pack",
        order = "g",
        type = "item-subgroup"
      },
      ["smelting-machine"] = {
        group = "production",
        name = "smelting-machine",
        order = "d",
        type = "item-subgroup"
      },
      storage = {
        group = "logistics",
        name = "storage",
        order = "a",
        type = "item-subgroup"
      },
      tool = {
        group = "production",
        name = "tool",
        order = "a",
        type = "item-subgroup"
      },
      transport = {
        group = "logistics",
        name = "transport",
        order = "e",
        type = "item-subgroup"
      },
      trees = {
        group = "environment",
        name = "trees",
        order = "aa",
        type = "item-subgroup"
      },
      wrecks = {
        group = "environment",
        name = "wrecks",
        order = "e",
        type = "item-subgroup"
      }
    },
    lab = {
      lab = {
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        corpse = "big-remnants",
        dying_explosion = "huge-explosion",
        energy_source = {
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = "60kW",
        flags = { "placeable-player", "player-creation" },
        icon = "__base__/graphics/icons/lab.png",
        inputs = { "science-pack-1", "science-pack-2", "science-pack-3", "alien-science-pack" },
        light = {
          intensity = 0.75,
          size = 8
        },
        max_health = 150,
        minable = {
          mining_time = 1,
          result = "lab"
        },
        module_slots = 2,
        name = "lab",
        off_animation = {
          filename = "__base__/graphics/entity/lab/lab.png",
          frame_count = 1,
          height = 91,
          shift = { 0.2, 0.15 },
          width = 113
        },
        on_animation = {
          animation_speed = 0.33333333333333,
          filename = "__base__/graphics/entity/lab/lab.png",
          frame_count = 33,
          height = 91,
          line_length = 11,
          shift = { 0.2, 0.15 },
          width = 113
        },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        type = "lab",
        working_sound = {
          apparent_volume = 1.5,
          sound = {
            filename = "__base__/sound/lab.ogg",
            volume = 0.7
          }
        }
      }
    },
    lamp = {
      ["small-lamp"] = {
        collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
        corpse = "small-remnants",
        energy_source = {
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage_per_tick = "5KW",
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/small-lamp.png",
        light = {
          intensity = 0.9,
          size = 40
        },
        max_health = 55,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "small-lamp"
        },
        name = "small-lamp",
        picture_off = {
          filename = "__base__/graphics/entity/small-lamp/small-lamp.png",
          height = 75,
          priority = "high",
          shift = { 0, -0.1 },
          width = 83
        },
        picture_on = {
          filename = "__base__/graphics/entity/small-lamp/small-lamp.png",
          height = 75,
          priority = "high",
          shift = { 0, -0.1 },
          width = 83,
          x = 83
        },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        type = "lamp"
      }
    },
    ["land-mine"] = {
      ["land-mine"] = {
        action = {
          action_delivery = {
            source_effects = { {
                action = {
                  action_delivery = {
                    target_effects = {
                      damage = {
                        amount = 40,
                        type = "explosion"
                      },
                      type = "damage"
                    },
                    type = "instant"
                  },
                  collision_mask = { "player-layer" },
                  perimeter = 6,
                  type = "area"
                },
                affects_target = true,
                type = "nested-result"
              }, {
                entity_name = "explosion",
                type = "create-entity"
              }, {
                damage = {
                  amount = 1000,
                  type = "explosion"
                },
                type = "damage"
              } },
            type = "instant"
          },
          type = "direct"
        },
        collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        corpse = "small-remnants",
        dying_explosion = "explosion-gunshot",
        flags = { "placeable-player", "placeable-enemy", "player-creation", "placeable-off-grid" },
        icon = "__base__/graphics/icons/land-mine.png",
        max_health = 15,
        minable = {
          mining_time = 1,
          result = "land-mine"
        },
        name = "land-mine",
        picture_safe = {
          filename = "__base__/graphics/entity/land-mine/land-mine.png",
          height = 32,
          priority = "medium",
          width = 32
        },
        picture_set = {
          filename = "__base__/graphics/entity/land-mine/land-mine-set.png",
          height = 32,
          priority = "medium",
          width = 32
        },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        trigger_radius = 2.5,
        type = "land-mine"
      }
    },
    locomotive = {
      ["diesel-locomotive"] = {
        air_resistance = 0.002,
        back_light = { {
            color = {
              r = 1
            },
            intensity = 0.6,
            minimum_darkness = 0.3,
            shift = { -0.6, 3.5 },
            size = 2
          }, {
            color = {
              r = 1
            },
            intensity = 0.6,
            minimum_darkness = 0.3,
            shift = { 0.6, 3.5 },
            size = 2
          } },
        braking_force = 10,
        close_sound = {
          filename = "__base__/sound/car-door-close.ogg",
          volume = 0.7
        },
        collision_box = { { -0.6, -2.6 }, { 0.6, 2.6 } },
        connection_distance = 3.3,
        corpse = "medium-remnants",
        crash_trigger = {
          sound = { {
              filename = "__base__/sound/car-crash.ogg",
              volume = 0.8
            } },
          type = "play-sound"
        },
        drawing_box = { { -1, -4 }, { 1, 3 } },
        drive_over_tie_trigger = {
          sound = { {
              filename = "__base__/sound/train-tie-1.ogg",
              volume = 0.6
            }, {
              filename = "__base__/sound/train-tie-2.ogg",
              volume = 0.6
            }, {
              filename = "__base__/sound/train-tie-3.ogg",
              volume = 0.6
            }, {
              filename = "__base__/sound/train-tie-4.ogg",
              volume = 0.6
            } },
          type = "play-sound"
        },
        dying_explosion = "huge-explosion",
        energy_per_hit_point = 5,
        energy_source = {
          effectivity = 1,
          fuel_inventory_size = 3,
          smoke = { {
              deviation = { 0.1, 0.1 },
              frequency = 210,
              height = 2,
              height_deviation = 0.2,
              name = "smoke",
              position = { 0, 0 },
              slow_down_factor = 3,
              starting_frame = 1,
              starting_frame_deviation = 5,
              starting_frame_speed = 0,
              starting_frame_speed_deviation = 5,
              starting_vertical_speed = 0.2,
              starting_vertical_speed_deviation = 0.06
            } },
          type = "burner"
        },
        flags = { "placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map" },
        friction_force = 0.0015,
        front_light = { {
            intensity = 0.6,
            minimum_darkness = 0.3,
            picture = {
              filename = "__core__/graphics/light-cone.png",
              height = 200,
              priority = "medium",
              scale = 2,
              width = 200
            },
            shift = { -0.6, -16 },
            size = 2,
            type = "oriented"
          }, {
            intensity = 0.6,
            minimum_darkness = 0.3,
            picture = {
              filename = "__core__/graphics/light-cone.png",
              height = 200,
              priority = "medium",
              scale = 2,
              width = 200
            },
            shift = { 0.6, -16 },
            size = 2,
            type = "oriented"
          } },
        icon = "__base__/graphics/icons/diesel-locomotive.png",
        joint_distance = 4.6,
        max_health = 1000,
        max_power = "600kW",
        max_speed = 1.2,
        minable = {
          mining_time = 1,
          result = "diesel-locomotive"
        },
        name = "diesel-locomotive",
        open_sound = {
          filename = "__base__/sound/car-door-open.ogg",
          volume = 0.7
        },
        pictures = {
          axially_symmetrical = false,
          direction_count = 256,
          filenames = { "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-01.png", "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-02.png", "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-03.png", "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-04.png", "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-05.png", "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-06.png", "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-07.png", "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-08.png" },
          height = 248,
          line_length = 4,
          lines_per_file = 8,
          priority = "very-low",
          shift = { 0.9, -0.45 },
          width = 346
        },
        rail_category = "regular",
        resistances = { {
            decrease = 15,
            percent = 50,
            type = "fire"
          }, {
            decrease = 15,
            percent = 30,
            type = "physical"
          }, {
            decrease = 50,
            percent = 60,
            type = "impact"
          }, {
            decrease = 15,
            percent = 30,
            type = "explosion"
          }, {
            decrease = 10,
            percent = 20,
            type = "acid"
          } },
        selection_box = { { -0.85, -2.6 }, { 0.9, 2.5 } },
        sound_minimum_speed = 0.5,
        stand_by_light = { {
            color = {
              b = 1
            },
            intensity = 0.5,
            minimum_darkness = 0.3,
            shift = { -0.6, -3.5 },
            size = 2
          }, {
            color = {
              b = 1
            },
            intensity = 0.5,
            minimum_darkness = 0.3,
            shift = { 0.6, -3.5 },
            size = 2
          } },
        stop_trigger = { {
            entity_name = "smoke-train-stop",
            initial_height = 0,
            offset_deviation = { { -0.75, -2.7 }, { -0.3, 2.7 } },
            repeat_count = 125,
            speed = { -0.03, 0 },
            speed_multiplier = 0.75,
            speed_multiplier_deviation = 1.1,
            type = "create-smoke"
          }, {
            entity_name = "smoke-train-stop",
            initial_height = 0,
            offset_deviation = { { 0.3, -2.7 }, { 0.75, 2.7 } },
            repeat_count = 125,
            speed = { 0.03, 0 },
            speed_multiplier = 0.75,
            speed_multiplier_deviation = 1.1,
            type = "create-smoke"
          }, {
            sound = { {
                filename = "__base__/sound/train-breaks.ogg",
                volume = 0.6
              } },
            type = "play-sound"
          } },
        tie_distance = 50,
        type = "locomotive",
        weight = 2000,
        working_sound = {
          match_speed_to_activity = true,
          sound = {
            filename = "__base__/sound/train-engine.ogg",
            volume = 0.4
          }
        }
      }
    },
    ["logistic-container"] = {
      ["logistic-chest-active-provider"] = {
        close_sound = {
          filename = "__base__/sound/metallic-chest-close.ogg",
          volume = 0.7
        },
        collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
        corpse = "small-remnants",
        fast_replaceable_group = "container",
        flags = { "placeable-player", "player-creation" },
        icon = "__base__/graphics/icons/logistic-chest-active-provider.png",
        inventory_size = 48,
        logistic_mode = "active-provider",
        max_health = 150,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "logistic-chest-active-provider"
        },
        name = "logistic-chest-active-provider",
        open_sound = {
          filename = "__base__/sound/metallic-chest-open.ogg",
          volume = 0.65
        },
        picture = {
          filename = "__base__/graphics/entity/logistic-chest/logistic-chest-active-provider.png",
          height = 32,
          priority = "extra-high",
          shift = { 0.1, 0 },
          width = 38
        },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        type = "logistic-container"
      },
      ["logistic-chest-passive-provider"] = {
        close_sound = {
          filename = "__base__/sound/metallic-chest-close.ogg",
          volume = 0.7
        },
        collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
        corpse = "small-remnants",
        fast_replaceable_group = "container",
        flags = { "placeable-player", "player-creation" },
        icon = "__base__/graphics/icons/logistic-chest-passive-provider.png",
        inventory_size = 48,
        logistic_mode = "passive-provider",
        max_health = 150,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "logistic-chest-passive-provider"
        },
        name = "logistic-chest-passive-provider",
        open_sound = {
          filename = "__base__/sound/metallic-chest-open.ogg",
          volume = 0.65
        },
        picture = {
          filename = "__base__/graphics/entity/logistic-chest/logistic-chest-passive-provider.png",
          height = 32,
          priority = "extra-high",
          shift = { 0.1, 0 },
          width = 38
        },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        type = "logistic-container"
      },
      ["logistic-chest-requester"] = {
        close_sound = {
          filename = "__base__/sound/metallic-chest-close.ogg",
          volume = 0.7
        },
        collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
        corpse = "small-remnants",
        fast_replaceable_group = "container",
        flags = { "placeable-player", "player-creation" },
        icon = "__base__/graphics/icons/logistic-chest-requester.png",
        inventory_size = 48,
        logistic_mode = "requester",
        max_health = 150,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "logistic-chest-requester"
        },
        name = "logistic-chest-requester",
        open_sound = {
          filename = "__base__/sound/metallic-chest-open.ogg",
          volume = 0.65
        },
        picture = {
          filename = "__base__/graphics/entity/logistic-chest/logistic-chest-requester.png",
          height = 32,
          priority = "extra-high",
          shift = { 0.1, 0 },
          width = 38
        },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        type = "logistic-container"
      },
      ["logistic-chest-storage"] = {
        close_sound = {
          filename = "__base__/sound/metallic-chest-close.ogg",
          volume = 0.7
        },
        collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
        corpse = "small-remnants",
        fast_replaceable_group = "container",
        flags = { "placeable-player", "player-creation" },
        icon = "__base__/graphics/icons/logistic-chest-storage.png",
        inventory_size = 48,
        logistic_mode = "storage",
        max_health = 150,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "logistic-chest-storage"
        },
        name = "logistic-chest-storage",
        open_sound = {
          filename = "__base__/sound/metallic-chest-open.ogg",
          volume = 0.65
        },
        picture = {
          filename = "__base__/graphics/entity/logistic-chest/logistic-chest-storage.png",
          height = 32,
          priority = "extra-high",
          shift = { 0.1, 0 },
          width = 38
        },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        type = "logistic-container"
      }
    },
    ["logistic-robot"] = {
      ["logistic-robot"] = {
        cargo_centered = { 0, 0.2 },
        collision_box = { { 0, 0 }, { 0, 0 } },
        energy_per_move = "1kJ",
        energy_per_tick = "0.01kJ",
        flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/logistic-robot.png",
        idle = {
          axially_symmetrical = false,
          direction_count = 16,
          filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
          frame_count = 1,
          height = 42,
          line_length = 16,
          priority = "high",
          shift = { 0.015625, -0.09375 },
          width = 41,
          y = 42
        },
        idle_with_cargo = {
          axially_symmetrical = false,
          direction_count = 16,
          filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
          frame_count = 1,
          height = 42,
          line_length = 16,
          priority = "high",
          shift = { 0.015625, -0.09375 },
          width = 41
        },
        in_motion = {
          axially_symmetrical = false,
          direction_count = 16,
          filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
          frame_count = 1,
          height = 42,
          line_length = 16,
          priority = "high",
          shift = { 0.015625, -0.09375 },
          width = 41,
          y = 126
        },
        in_motion_with_cargo = {
          axially_symmetrical = false,
          direction_count = 16,
          filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
          frame_count = 1,
          height = 42,
          line_length = 16,
          priority = "high",
          shift = { 0.015625, -0.09375 },
          width = 41,
          y = 84
        },
        max_energy = "300kJ",
        max_health = 100,
        max_payload_size = 1,
        max_to_charge = 0.95,
        min_to_charge = 0.2,
        minable = {
          hardness = 0.1,
          mining_time = 0.1,
          result = "logistic-robot"
        },
        name = "logistic-robot",
        selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
        shadow_idle = {
          axially_symmetrical = false,
          direction_count = 16,
          filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
          frame_count = 1,
          height = 23,
          line_length = 16,
          priority = "high",
          shift = { 0.96875, 0.609375 },
          width = 59,
          y = 23
        },
        shadow_idle_with_cargo = {
          axially_symmetrical = false,
          direction_count = 16,
          filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
          frame_count = 1,
          height = 23,
          line_length = 16,
          priority = "high",
          shift = { 0.96875, 0.609375 },
          width = 59
        },
        shadow_in_motion = {
          axially_symmetrical = false,
          direction_count = 16,
          filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
          frame_count = 1,
          height = 23,
          line_length = 16,
          priority = "high",
          shift = { 0.96875, 0.609375 },
          width = 59,
          y = 23
        },
        shadow_in_motion_with_cargo = {
          axially_symmetrical = false,
          direction_count = 16,
          filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
          frame_count = 1,
          height = 23,
          line_length = 16,
          priority = "high",
          shift = { 0.96875, 0.609375 },
          width = 59
        },
        speed = 0.05,
        speed_multiplier_when_out_of_energy = 0.2,
        transfer_distance = 0.5,
        type = "logistic-robot",
        working_sound = {
          max_sounds_per_type = 3,
          sound = { {
              filename = "__base__/sound/flying-robot-1.ogg",
              volume = 0.6
            }, {
              filename = "__base__/sound/flying-robot-2.ogg",
              volume = 0.6
            }, {
              filename = "__base__/sound/flying-robot-3.ogg",
              volume = 0.6
            }, {
              filename = "__base__/sound/flying-robot-4.ogg",
              volume = 0.6
            }, {
              filename = "__base__/sound/flying-robot-5.ogg",
              volume = 0.6
            } }
        }
      }
    },
    ["map-settings"] = {
      ["map-settings"] = {
        enemy_evolution = {
          destroy_factor = 0.005,
          enabled = true,
          pollution_factor = 3e-05,
          time_factor = 8e-06
        },
        enemy_expansion = {
          enabled = true,
          max_expansion_cooldown = 216000,
          max_expansion_distance = 7,
          min_base_spacing = 3,
          min_expansion_cooldown = 18000,
          min_player_base_distance = 3,
          settler_group_max_size = 20,
          settler_group_min_size = 5
        },
        max_failed_behavior_count = 10,
        name = "map-settings",
        path_finder = {
          cache_absolute_path_credit = 1,
          cache_accept_path_end_distance_ratio = 0.15,
          cache_accept_path_start_distance_ratio = 0.2,
          cache_ageing = 0.05,
          cache_keep_path_threshold = 0.5,
          cache_last_connection_point = 50,
          cache_last_connection_point_ratio = 0.2,
          cache_max_age_spacing = 600,
          cache_max_connect_to_cache_steps = 100,
          cache_num_connection_points = 5,
          cache_path_end_distance_rating_multiplier = 20,
          cache_path_start_distance_rating_multiplier = 10,
          cache_per_node_path_credit = 0.001,
          direct_distance_to_consider_short_request = 100,
          enemy_with_different_destination_collision_penalty = 30,
          fwd2bwd_ratio = 5,
          general_entity_collision_penalty = 10,
          goal_pressure_ratio = 2,
          ignore_moving_enemy_collision_distance = 5,
          long_cache_min_cacheable_distance = 30,
          long_cache_path_max_age = 108000,
          long_cache_size = 25,
          max_clients_to_accept_any_new_request = 10,
          max_clients_to_accept_short_new_request = 10,
          max_steps_worked_per_tick = 100,
          short_cache_min_algo_steps_to_cache = 50,
          short_cache_min_cacheable_distance = 10,
          short_cache_path_max_age = 600,
          short_cache_size = 5,
          stale_enemy_with_same_destination_collision_penalty = 30,
          use_path_cache = true
        },
        pollution = {
          ageing = 0.55,
          diffusion_ratio = 0.02,
          enabled = true,
          expected_max_per_chunk = 7000,
          min_to_diffuse = 15,
          min_to_show_per_chunk = 700
        },
        steering = {
          default = {
            force_unit_fuzzy_goto_behavior = false,
            radius = 1.2,
            separation_factor = 1.2,
            separation_force = 0.005
          },
          moving = {
            force_unit_fuzzy_goto_behavior = false,
            radius = 3,
            separation_factor = 3,
            separation_force = 0.01
          }
        },
        type = "map-settings",
        unit_group = {
          max_group_gathering_time = 36000,
          max_group_radius = 30,
          max_member_speedup_when_behind = 1.4,
          max_wait_time_for_late_members = 7200,
          min_group_gathering_time = 3600,
          min_group_radius = 5,
          tick_tolerance_when_member_arrives = 60
        }
      }
    },
    market = {
      market = {
        collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
        corpse = "big-remnants",
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/market.png",
        max_health = 150,
        name = "market",
        order = "d-a-a",
        picture = {
          filename = "__base__/graphics/entity/market/market.png",
          height = 127,
          shift = { 0.95, 0.2 },
          width = 156
        },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        subgroup = "production-machine",
        type = "market"
      }
    },
    ["mining-drill"] = {
      ["basic-mining-drill"] = {
        animations = {
          east = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/basic-mining-drill/east.png",
            frame_count = 64,
            height = 100,
            line_length = 8,
            priority = "extra-high",
            run_mode = "forward-then-backward",
            shift = { 0.45, 0 },
            width = 129
          },
          north = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/basic-mining-drill/north.png",
            frame_count = 64,
            height = 114,
            line_length = 8,
            priority = "extra-high",
            run_mode = "forward-then-backward",
            shift = { 0.2, -0.2 },
            width = 110
          },
          south = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/basic-mining-drill/south.png",
            frame_count = 64,
            height = 111,
            line_length = 8,
            priority = "extra-high",
            run_mode = "forward-then-backward",
            shift = { 0.15, 0 },
            width = 109
          },
          west = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/basic-mining-drill/west.png",
            frame_count = 64,
            height = 100,
            line_length = 8,
            priority = "extra-high",
            run_mode = "forward-then-backward",
            shift = { 0.25, 0 },
            width = 128
          }
        },
        collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
        corpse = "big-remnants",
        energy_source = {
          emissions = 0.1,
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = "90kW",
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/basic-mining-drill.png",
        max_health = 300,
        minable = {
          mining_time = 1,
          result = "basic-mining-drill"
        },
        mining_power = 3,
        mining_speed = 0.5,
        module_slots = 3,
        name = "basic-mining-drill",
        radius_visualisation_picture = {
          filename = "__base__/graphics/entity/basic-mining-drill/mining-drill-radius-visualization.png",
          height = 12,
          width = 12
        },
        resource_categories = { "basic-solid" },
        resource_searching_radius = 2.49,
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        type = "mining-drill",
        vector_to_place_result = { 0, -1.85 },
        working_sound = {
          apparent_volume = 1.5,
          sound = {
            filename = "__base__/sound/electric-mining-drill.ogg",
            volume = 0.75
          }
        }
      },
      ["burner-mining-drill"] = {
        animations = {
          east = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/burner-mining-drill/east.png",
            frame_count = 32,
            height = 74,
            line_length = 4,
            priority = "extra-high",
            run_mode = "forward-then-backward",
            shift = { 0.45, -0.1 },
            width = 94
          },
          north = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/burner-mining-drill/north.png",
            frame_count = 32,
            height = 76,
            line_length = 4,
            priority = "extra-high",
            run_mode = "forward-then-backward",
            shift = { 0.7, -0.1 },
            width = 110
          },
          south = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/burner-mining-drill/south.png",
            frame_count = 32,
            height = 88,
            line_length = 4,
            priority = "extra-high",
            run_mode = "forward-then-backward",
            shift = { 0.4, 0 },
            width = 89
          },
          west = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/burner-mining-drill/west.png",
            frame_count = 32,
            height = 78,
            line_length = 4,
            priority = "extra-high",
            run_mode = "forward-then-backward",
            shift = { 0.1, -0.05 },
            width = 91
          }
        },
        collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
        corpse = "medium-remnants",
        energy_source = {
          effectivity = 1,
          emissions = 0.033333333333333,
          fuel_inventory_size = 1,
          smoke = { {
              deviation = { 0.1, 0.1 },
              frequency = 1,
              name = "smoke"
            } },
          type = "burner"
        },
        energy_usage = "300kW",
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/burner-mining-drill.png",
        max_health = 100,
        minable = {
          mining_time = 1,
          result = "burner-mining-drill"
        },
        mining_power = 2.5,
        mining_speed = 0.35,
        name = "burner-mining-drill",
        resource_categories = { "basic-solid" },
        resource_searching_radius = 0.99,
        selection_box = { { -1, -1 }, { 1, 1 } },
        type = "mining-drill",
        vector_to_place_result = { -0.5, -1.3 },
        working_sound = {
          sound = {
            filename = "__base__/sound/burner-mining-drill.ogg",
            volume = 0.8
          }
        }
      },
      pumpjack = {
        animations = {
          north = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/pumpjack/pumpjack-animation.png",
            frame_count = 40,
            height = 110,
            line_length = 10,
            priority = "extra-high",
            shift = { 0.125, -0.71875 },
            width = 116
          }
        },
        base_picture = {
          sheet = {
            filename = "__base__/graphics/entity/pumpjack/pumpjack-base.png",
            height = 113,
            priority = "extra-high",
            shift = { 0.1875, -0.03125 },
            width = 114
          }
        },
        collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
        corpse = "big-remnants",
        drawing_box = { { -1.6, -2.5 }, { 1.5, 1.6 } },
        dying_explosion = "huge-explosion",
        energy_source = {
          emissions = 0.1,
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = "90kW",
        flags = { "placeable-neutral", "player-creation" },
        fluid_box = {
          base_area = 1,
          base_level = 1,
          pipe_connections = { {
              positions = { { 1, -2 }, { 2, -1 }, { -1, 2 }, { -2, 1 } }
            } },
          pipe_covers = {
            east = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
              height = 32,
              priority = "extra-high",
              width = 32
            },
            north = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
              height = 32,
              priority = "extra-high",
              width = 44
            },
            south = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
              height = 52,
              priority = "extra-high",
              width = 46
            },
            west = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
              height = 32,
              priority = "extra-high",
              width = 32
            }
          }
        },
        icon = "__base__/graphics/icons/pumpjack.png",
        max_health = 100,
        minable = {
          mining_time = 1,
          result = "pumpjack"
        },
        mining_power = 2,
        mining_speed = 1,
        module_slots = 2,
        name = "pumpjack",
        radius_visualisation_picture = {
          filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
          height = 12,
          width = 12
        },
        resource_categories = { "basic-fluid" },
        resource_searching_radius = 0.49,
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        type = "mining-drill",
        vector_to_place_result = { 0, 0 },
        working_sound = {
          apparent_volume = 1.5,
          sound = {
            filename = "__base__/sound/pumpjack.ogg"
          }
        }
      }
    },
    ["mining-tool"] = {
      ["iron-axe"] = {
        action = {
          action_delivery = {
            target_effects = {
              damage = {
                amount = 5,
                type = "physical"
              },
              type = "damage"
            },
            type = "instant"
          },
          type = "direct"
        },
        durability = 4000,
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/iron-axe.png",
        name = "iron-axe",
        order = "a[mining]-a[iron-axe]",
        speed = 2.5,
        stack_size = 20,
        subgroup = "tool",
        type = "mining-tool"
      },
      ["steel-axe"] = {
        action = {
          action_delivery = {
            target_effects = {
              damage = {
                amount = 8,
                type = "physical"
              },
              type = "damage"
            },
            type = "instant"
          },
          type = "direct"
        },
        durability = 5000,
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/steel-axe.png",
        name = "steel-axe",
        order = "a[mining]-b[steel-axe]",
        speed = 4,
        stack_size = 20,
        subgroup = "tool",
        type = "mining-tool"
      }
    },
    module = {
      ["effectivity-module"] = {
        effect = {
          consumption = {
            bonus = -0.3
          }
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/effectivity-module.png",
        name = "effectivity-module",
        order = "c[effectivity]-a[effectivity-module-1]",
        stack_size = 50,
        subgroup = "module",
        type = "module"
      },
      ["effectivity-module-2"] = {
        effect = {
          consumption = {
            bonus = -0.4
          }
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/effectivity-module-2.png",
        name = "effectivity-module-2",
        order = "c[effectivity]-b[effectivity-module-2]",
        stack_size = 50,
        subgroup = "module",
        type = "module"
      },
      ["effectivity-module-3"] = {
        effect = {
          consumption = {
            bonus = -0.5
          }
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/effectivity-module-3.png",
        name = "effectivity-module-3",
        order = "c[effectivity]-c[effectivity-module-3]",
        stack_size = 50,
        subgroup = "module",
        type = "module"
      },
      ["productivity-module"] = {
        effect = {
          consumption = {
            bonus = 0.4
          },
          pollution = {
            bonus = 0.3
          },
          productivity = {
            bonus = 0.04
          },
          speed = {
            bonus = -0.15
          }
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/productivity-module.png",
        limitation = { "sulfuric-acid", "basic-oil-processing", "advanced-oil-processing", "heavy-oil-cracking", "light-oil-cracking", "solid-fuel-from-light-oil", "solid-fuel-from-heavy-oil", "solid-fuel-from-petroleum-gas", "lubricant", "iron-plate", "copper-plate", "steel-plate", "stone-brick", "sulfur", "plastic-bar", "empty-barrel", "iron-stick", "iron-gear-wheel", "copper-cable", "electronic-circuit", "advanced-circuit", "engine-unit", "electric-engine-unit", "processing-unit", "explosives", "battery", "flying-robot-frame", "science-pack-1", "science-pack-2", "science-pack-3", "alien-science-pack" },
        limitation_message_key = "production-module-usable-only-on-intermeidates",
        name = "productivity-module",
        order = "c[productivity]-a[productivity-module-1]",
        stack_size = 50,
        subgroup = "module",
        type = "module"
      },
      ["productivity-module-2"] = {
        effect = {
          consumption = {
            bonus = 0.6
          },
          pollution = {
            bonus = 0.4
          },
          productivity = {
            bonus = 0.06
          },
          speed = {
            bonus = -0.15
          }
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/productivity-module-2.png",
        limitation = { "sulfuric-acid", "basic-oil-processing", "advanced-oil-processing", "heavy-oil-cracking", "light-oil-cracking", "solid-fuel-from-light-oil", "solid-fuel-from-heavy-oil", "solid-fuel-from-petroleum-gas", "lubricant", "iron-plate", "copper-plate", "steel-plate", "stone-brick", "sulfur", "plastic-bar", "empty-barrel", "iron-stick", "iron-gear-wheel", "copper-cable", "electronic-circuit", "advanced-circuit", "engine-unit", "electric-engine-unit", "processing-unit", "explosives", "battery", "flying-robot-frame", "science-pack-1", "science-pack-2", "science-pack-3", "alien-science-pack" },
        limitation_message_key = "production-module-usable-only-on-intermeidates",
        name = "productivity-module-2",
        order = "c[productivity]-b[productivity-module-2]",
        stack_size = 50,
        subgroup = "module",
        type = "module"
      },
      ["productivity-module-3"] = {
        effect = {
          consumption = {
            bonus = 0.8
          },
          pollution = {
            bonus = 0.5
          },
          productivity = {
            bonus = 0.1
          },
          speed = {
            bonus = -0.15
          }
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/productivity-module-3.png",
        limitation = { "sulfuric-acid", "basic-oil-processing", "advanced-oil-processing", "heavy-oil-cracking", "light-oil-cracking", "solid-fuel-from-light-oil", "solid-fuel-from-heavy-oil", "solid-fuel-from-petroleum-gas", "lubricant", "iron-plate", "copper-plate", "steel-plate", "stone-brick", "sulfur", "plastic-bar", "empty-barrel", "iron-stick", "iron-gear-wheel", "copper-cable", "electronic-circuit", "advanced-circuit", "engine-unit", "electric-engine-unit", "processing-unit", "explosives", "battery", "flying-robot-frame", "science-pack-1", "science-pack-2", "science-pack-3", "alien-science-pack" },
        limitation_message_key = "production-module-usable-only-on-intermeidates",
        name = "productivity-module-3",
        order = "c[productivity]-c[productivity-module-3]",
        stack_size = 50,
        subgroup = "module",
        type = "module"
      },
      ["speed-module"] = {
        effect = {
          consumption = {
            bonus = 0.5
          },
          speed = {
            bonus = 0.2
          }
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/speed-module.png",
        name = "speed-module",
        order = "a[speed]-a[speed-module-1]",
        stack_size = 50,
        subgroup = "module",
        type = "module"
      },
      ["speed-module-2"] = {
        effect = {
          consumption = {
            bonus = 0.6
          },
          speed = {
            bonus = 0.3
          }
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/speed-module-2.png",
        name = "speed-module-2",
        order = "a[speed]-b[speed-module-2]",
        stack_size = 50,
        subgroup = "module",
        type = "module"
      },
      ["speed-module-3"] = {
        effect = {
          consumption = {
            bonus = 0.7
          },
          speed = {
            bonus = 0.5
          }
        },
        flags = { "goes-to-main-inventory" },
        icon = "__base__/graphics/icons/speed-module-3.png",
        name = "speed-module-3",
        order = "a[speed]-c[speed-module-3]",
        stack_size = 50,
        subgroup = "module",
        type = "module"
      }
    },
    ["movement-bonus-equipment"] = {
      ["basic-exoskeleton-equipment"] = {
        energy_consumption = "200W",
        energy_source = {
          type = "electric",
          usage_priority = "secondary-input"
        },
        movement_bonus = 0.3,
        name = "basic-exoskeleton-equipment",
        shape = {
          height = 4,
          type = "full",
          width = 2
        },
        sprite = {
          filename = "__base__/graphics/equipment/basic-exoskeleton-equipment.png",
          height = 128,
          priority = "medium",
          width = 64
        },
        type = "movement-bonus-equipment"
      }
    },
    ["night-vision-equipment"] = {
      ["night-vision-equipment"] = {
        energy_input = "10W",
        energy_source = {
          buffer_capacity = "120J",
          input_flow_limit = "240W",
          type = "electric",
          usage_priority = "primary-input"
        },
        name = "night-vision-equipment",
        shape = {
          height = 2,
          type = "full",
          width = 3
        },
        sprite = {
          filename = "__base__/graphics/equipment/night-vision-equipment.png",
          height = 64,
          priority = "medium",
          width = 96
        },
        type = "night-vision-equipment"
      }
    },
    ["noise-layer"] = {
      ["brown-cane"] = {
        name = "brown-cane",
        type = "noise-layer"
      },
      coal = {
        name = "coal",
        type = "noise-layer"
      },
      ["copper-ore"] = {
        name = "copper-ore",
        type = "noise-layer"
      },
      coral = {
        name = "coral",
        type = "noise-layer"
      },
      ["crude-oil"] = {
        name = "crude-oil",
        type = "noise-layer"
      },
      dirt = {
        name = "dirt",
        type = "noise-layer"
      },
      ["dirt-dark"] = {
        name = "dirt-dark",
        type = "noise-layer"
      },
      ["enemy-base"] = {
        name = "enemy-base",
        type = "noise-layer"
      },
      fluff = {
        name = "fluff",
        type = "noise-layer"
      },
      garballo = {
        name = "garballo",
        type = "noise-layer"
      },
      ["garballo-mini"] = {
        name = "garballo-mini",
        type = "noise-layer"
      },
      grass = {
        name = "grass",
        type = "noise-layer"
      },
      ["grass-dry"] = {
        name = "grass-dry",
        type = "noise-layer"
      },
      ["grass-medium"] = {
        name = "grass-medium",
        type = "noise-layer"
      },
      grass1 = {
        name = "grass1",
        type = "noise-layer"
      },
      grass2 = {
        name = "grass2",
        type = "noise-layer"
      },
      ["iron-ore"] = {
        name = "iron-ore",
        type = "noise-layer"
      },
      pita = {
        name = "pita",
        type = "noise-layer"
      },
      ["pita-mini"] = {
        name = "pita-mini",
        type = "noise-layer"
      },
      sand = {
        name = "sand",
        type = "noise-layer"
      },
      ["sand-dark"] = {
        name = "sand-dark",
        type = "noise-layer"
      },
      stone = {
        name = "stone",
        type = "noise-layer"
      },
      trees = {
        name = "trees",
        type = "noise-layer"
      }
    },
    ["offshore-pump"] = {
      ["offshore-pump"] = {
        collision_box = { { -0.6, -0.3 }, { 0.6, 0.3 } },
        corpse = "small-remnants",
        flags = { "placeable-neutral", "player-creation", "filter-directions" },
        fluid = "water",
        fluid_box = {
          base_area = 1,
          pipe_connections = { {
              position = { 0, 1 }
            } },
          pipe_covers = {
            east = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
              height = 32,
              priority = "extra-high",
              width = 32
            },
            north = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
              height = 32,
              priority = "extra-high",
              width = 44
            },
            south = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
              height = 52,
              priority = "extra-high",
              width = 46
            },
            west = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
              height = 32,
              priority = "extra-high",
              width = 32
            }
          }
        },
        icon = "__base__/graphics/icons/offshore-pump.png",
        max_health = 80,
        minable = {
          mining_time = 1,
          result = "offshore-pump"
        },
        name = "offshore-pump",
        picture = {
          east = {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
            height = 102,
            priority = "high",
            shift = { 0.9, 0.05 },
            width = 160,
            x = 160
          },
          north = {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
            height = 102,
            priority = "high",
            shift = { 0.9, 0.05 },
            width = 160
          },
          south = {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
            height = 102,
            priority = "high",
            shift = { 0.9, 0.65 },
            width = 160,
            x = 320
          },
          west = {
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
            height = 102,
            priority = "high",
            shift = { 1, 0.05 },
            width = 160,
            x = 480
          }
        },
        pumping_speed = 1,
        resistances = { {
            percent = 70,
            type = "fire"
          } },
        selection_box = { { -1, -1.49 }, { 1, 0.49 } },
        tile_width = 1,
        type = "offshore-pump"
      }
    },
    particle = {
      ["blood-particle"] = {
        flags = { "not-on-map" },
        life_time = 180,
        movement_modifier_when_on_ground = 0,
        name = "blood-particle",
        pictures = { {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-01.png",
            frame_count = 6,
            height = 6,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0.6,
              g = 0.1,
              r = 0.6
            },
            width = 5
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-02.png",
            frame_count = 6,
            height = 3,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0.6,
              g = 0.1,
              r = 0.6
            },
            width = 4
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-03.png",
            frame_count = 6,
            height = 7,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0.6,
              g = 0.1,
              r = 0.6
            },
            width = 4
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-04.png",
            frame_count = 6,
            height = 3,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0.6,
              g = 0.1,
              r = 0.6
            },
            width = 3
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-05.png",
            frame_count = 6,
            height = 5,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0.6,
              g = 0.1,
              r = 0.6
            },
            width = 4
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-06.png",
            frame_count = 6,
            height = 3,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0.6,
              g = 0.1,
              r = 0.6
            },
            width = 7
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-07.png",
            frame_count = 6,
            height = 5,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0.6,
              g = 0.1,
              r = 0.6
            },
            width = 5
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-08.png",
            frame_count = 6,
            height = 10,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0.6,
              g = 0.1,
              r = 0.6
            },
            width = 9
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-09.png",
            frame_count = 6,
            height = 4,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0.6,
              g = 0.1,
              r = 0.6
            },
            width = 7
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-10.png",
            frame_count = 6,
            height = 5,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0.6,
              g = 0.1,
              r = 0.6
            },
            width = 4
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-11.png",
            frame_count = 6,
            height = 5,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0.6,
              g = 0.1,
              r = 0.6
            },
            width = 4
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-12.png",
            frame_count = 6,
            height = 5,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0.6,
              g = 0.1,
              r = 0.6
            },
            width = 4
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-13.png",
            frame_count = 6,
            height = 5,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0.6,
              g = 0.1,
              r = 0.6
            },
            width = 4
          } },
        shadows = { {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-01.png",
            frame_count = 6,
            height = 6,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0,
              g = 0,
              r = 0
            },
            width = 5
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-02.png",
            frame_count = 6,
            height = 3,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0,
              g = 0,
              r = 0
            },
            width = 4
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-03.png",
            frame_count = 6,
            height = 7,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0,
              g = 0,
              r = 0
            },
            width = 4
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-04.png",
            frame_count = 6,
            height = 3,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0,
              g = 0,
              r = 0
            },
            width = 3
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-05.png",
            frame_count = 6,
            height = 5,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0,
              g = 0,
              r = 0
            },
            width = 4
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-06.png",
            frame_count = 6,
            height = 3,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0,
              g = 0,
              r = 0
            },
            width = 7
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-07.png",
            frame_count = 6,
            height = 5,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0,
              g = 0,
              r = 0
            },
            width = 5
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-08.png",
            frame_count = 6,
            height = 10,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0,
              g = 0,
              r = 0
            },
            width = 9
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-09.png",
            frame_count = 6,
            height = 4,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0,
              g = 0,
              r = 0
            },
            width = 7
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-10.png",
            frame_count = 6,
            height = 5,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0,
              g = 0,
              r = 0
            },
            width = 4
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-11.png",
            frame_count = 6,
            height = 5,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0,
              g = 0,
              r = 0
            },
            width = 4
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-12.png",
            frame_count = 6,
            height = 5,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0,
              g = 0,
              r = 0
            },
            width = 4
          }, {
            filename = "__base__/graphics/entity/blood-particle/blood-particle-13.png",
            frame_count = 6,
            height = 5,
            priority = "extra-high",
            scale = 1,
            tint = {
              b = 0,
              g = 0,
              r = 0
            },
            width = 4
          } },
        type = "particle"
      },
      ["coal-particle"] = {
        flags = { "not-on-map" },
        life_time = 180,
        name = "coal-particle",
        pictures = { {
            filename = "__base__/graphics/entity/coal-particle/coal-particle-1.png",
            frame_count = 1,
            height = 5,
            priority = "extra-high",
            width = 5
          }, {
            filename = "__base__/graphics/entity/coal-particle/coal-particle-2.png",
            frame_count = 1,
            height = 6,
            priority = "extra-high",
            width = 7
          }, {
            filename = "__base__/graphics/entity/coal-particle/coal-particle-3.png",
            frame_count = 1,
            height = 6,
            priority = "extra-high",
            width = 3
          }, {
            filename = "__base__/graphics/entity/coal-particle/coal-particle-4.png",
            frame_count = 1,
            height = 4,
            priority = "extra-high",
            width = 4
          } },
        shadows = { {
            filename = "__base__/graphics/entity/coal-particle/coal-particle-shadow-1.png",
            frame_count = 1,
            height = 5,
            priority = "extra-high",
            width = 5
          }, {
            filename = "__base__/graphics/entity/coal-particle/coal-particle-shadow-2.png",
            frame_count = 1,
            height = 6,
            priority = "extra-high",
            width = 7
          }, {
            filename = "__base__/graphics/entity/coal-particle/coal-particle-shadow-3.png",
            frame_count = 1,
            height = 6,
            priority = "extra-high",
            width = 3
          }, {
            filename = "__base__/graphics/entity/coal-particle/coal-particle-shadow-4.png",
            frame_count = 1,
            height = 4,
            priority = "extra-high",
            width = 6
          } },
        type = "particle"
      },
      ["copper-ore-particle"] = {
        flags = { "not-on-map" },
        life_time = 180,
        name = "copper-ore-particle",
        pictures = { {
            filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-1.png",
            frame_count = 1,
            height = 5,
            priority = "extra-high",
            width = 5
          }, {
            filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-2.png",
            frame_count = 1,
            height = 4,
            priority = "extra-high",
            width = 6
          }, {
            filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-3.png",
            frame_count = 1,
            height = 8,
            priority = "extra-high",
            width = 7
          }, {
            filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-4.png",
            frame_count = 1,
            height = 5,
            priority = "extra-high",
            width = 6
          } },
        shadows = { {
            filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-shadow-1.png",
            frame_count = 1,
            height = 5,
            priority = "extra-high",
            width = 5
          }, {
            filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-shadow-2.png",
            frame_count = 1,
            height = 4,
            priority = "extra-high",
            width = 6
          }, {
            filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-shadow-3.png",
            frame_count = 1,
            height = 8,
            priority = "extra-high",
            width = 7
          }, {
            filename = "__base__/graphics/entity/copper-ore-particle/copper-ore-particle-shadow-4.png",
            frame_count = 1,
            height = 5,
            priority = "extra-high",
            width = 6
          } },
        type = "particle"
      },
      ["explosion-remnants-particle"] = {
        ended_in_water_trigger_effect = {
          entity_name = "water-splash",
          type = "create-entity"
        },
        flags = { "not-on-map" },
        life_time = 900,
        name = "explosion-remnants-particle",
        pictures = {
          sheet = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/explosion-particle/explosion-particle.png",
            frame_count = 10,
            height = 38,
            priority = "extra-high",
            variation_count = 40,
            width = 38
          }
        },
        regular_trigger_effect = {
          entity_name = "smoke-explosion-particle",
          offset_deviation = { { -0.06, -0.06 }, { 0.06, 0.06 } },
          speed_from_center = 0.007,
          starting_frame_deviation = 5,
          starting_frame_speed_deviation = 5,
          type = "create-smoke"
        },
        regular_trigger_effect_frequency = 1,
        shadows = {
          sheet = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/explosion-particle/explosion-particle-shadow.png",
            frame_count = 10,
            height = 38,
            priority = "extra-high",
            shift = { 0.0625, 0 },
            variation_count = 40,
            width = 48
          }
        },
        type = "particle"
      },
      ["iron-ore-particle"] = {
        flags = { "not-on-map" },
        life_time = 180,
        name = "iron-ore-particle",
        pictures = { {
            filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-1.png",
            frame_count = 1,
            height = 5,
            priority = "extra-high",
            width = 5
          }, {
            filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-2.png",
            frame_count = 1,
            height = 5,
            priority = "extra-high",
            width = 7
          }, {
            filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-3.png",
            frame_count = 1,
            height = 7,
            priority = "extra-high",
            width = 6
          }, {
            filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-4.png",
            frame_count = 1,
            height = 8,
            priority = "extra-high",
            width = 9
          } },
        shadows = { {
            filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-shadow-1.png",
            frame_count = 1,
            height = 5,
            priority = "extra-high",
            width = 5
          }, {
            filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-shadow-2.png",
            frame_count = 1,
            height = 5,
            priority = "extra-high",
            width = 7
          }, {
            filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-shadow-3.png",
            frame_count = 1,
            height = 7,
            priority = "extra-high",
            width = 6
          }, {
            filename = "__base__/graphics/entity/iron-ore-particle/iron-ore-particle-shadow-4.png",
            frame_count = 1,
            height = 8,
            priority = "extra-high",
            width = 9
          } },
        type = "particle"
      },
      ["shell-particle"] = {
        flags = { "not-on-map" },
        life_time = 600,
        name = "shell-particle",
        pictures = { {
            filename = "__base__/graphics/entity/shell-particle/shell-particle-1.png",
            frame_count = 5,
            height = 6,
            priority = "extra-high",
            width = 6
          }, {
            filename = "__base__/graphics/entity/shell-particle/shell-particle-2.png",
            frame_count = 5,
            height = 7,
            priority = "extra-high",
            width = 5
          } },
        shadows = { {
            filename = "__base__/graphics/entity/shell-particle/shell-particle-shadow-1.png",
            frame_count = 5,
            height = 7,
            priority = "extra-high",
            width = 9
          }, {
            filename = "__base__/graphics/entity/shell-particle/shell-particle-shadow-2.png",
            frame_count = 5,
            height = 8,
            priority = "extra-high",
            width = 7
          } },
        type = "particle"
      },
      ["stone-particle"] = {
        flags = { "not-on-map" },
        life_time = 180,
        name = "stone-particle",
        pictures = { {
            filename = "__base__/graphics/entity/stone-particle/stone-particle-1.png",
            frame_count = 1,
            height = 4,
            priority = "extra-high",
            width = 5
          }, {
            filename = "__base__/graphics/entity/stone-particle/stone-particle-2.png",
            frame_count = 1,
            height = 4,
            priority = "extra-high",
            width = 4
          }, {
            filename = "__base__/graphics/entity/stone-particle/stone-particle-3.png",
            frame_count = 1,
            height = 6,
            priority = "extra-high",
            width = 5
          }, {
            filename = "__base__/graphics/entity/stone-particle/stone-particle-4.png",
            frame_count = 1,
            height = 7,
            priority = "extra-high",
            width = 7
          } },
        shadows = { {
            filename = "__base__/graphics/entity/stone-particle/stone-particle-shadow-1.png",
            frame_count = 1,
            height = 4,
            priority = "extra-high",
            width = 5
          }, {
            filename = "__base__/graphics/entity/stone-particle/stone-particle-shadow-2.png",
            frame_count = 1,
            height = 4,
            priority = "extra-high",
            width = 4
          }, {
            filename = "__base__/graphics/entity/stone-particle/stone-particle-shadow-3.png",
            frame_count = 1,
            height = 6,
            priority = "extra-high",
            width = 5
          }, {
            filename = "__base__/graphics/entity/stone-particle/stone-particle-shadow-4.png",
            frame_count = 1,
            height = 7,
            priority = "extra-high",
            width = 7
          } },
        type = "particle"
      },
      ["wooden-particle"] = {
        flags = { "not-on-map" },
        life_time = 180,
        name = "wooden-particle",
        pictures = { {
            filename = "__base__/graphics/entity/wooden-particle/wooden-particle-1.png",
            frame_count = 1,
            height = 5,
            priority = "extra-high",
            width = 5
          }, {
            filename = "__base__/graphics/entity/wooden-particle/wooden-particle-2.png",
            frame_count = 1,
            height = 4,
            priority = "extra-high",
            width = 6
          }, {
            filename = "__base__/graphics/entity/wooden-particle/wooden-particle-3.png",
            frame_count = 1,
            height = 8,
            priority = "extra-high",
            width = 7
          }, {
            filename = "__base__/graphics/entity/wooden-particle/wooden-particle-4.png",
            frame_count = 1,
            height = 5,
            priority = "extra-high",
            width = 6
          } },
        shadows = { {
            filename = "__base__/graphics/entity/wooden-particle/wooden-particle-shadow-1.png",
            frame_count = 1,
            height = 5,
            priority = "extra-high",
            width = 5
          }, {
            filename = "__base__/graphics/entity/wooden-particle/wooden-particle-shadow-2.png",
            frame_count = 1,
            height = 4,
            priority = "extra-high",
            width = 6
          }, {
            filename = "__base__/graphics/entity/wooden-particle/wooden-particle-shadow-3.png",
            frame_count = 1,
            height = 8,
            priority = "extra-high",
            width = 7
          }, {
            filename = "__base__/graphics/entity/wooden-particle/wooden-particle-shadow-4.png",
            frame_count = 1,
            height = 5,
            priority = "extra-high",
            width = 6
          } },
        type = "particle"
      }
    },
    ["particle-source"] = {
      ["blood-fountain"] = {
        height = 0.4,
        height_deviation = 0.1,
        horizontal_speed = 0.025,
        horizontal_speed_deviation = 0.025,
        name = "blood-fountain",
        particle = "blood-particle",
        time_before_start = 0,
        time_before_start_deviation = 3,
        time_to_live = 10,
        time_to_live_deviation = 5,
        type = "particle-source",
        vertical_speed = 0.05,
        vertical_speed_deviation = 0.03
      },
      ["blood-fountain-big"] = {
        height = 0.4,
        height_deviation = 0.1,
        horizontal_speed = 0.04,
        horizontal_speed_deviation = 0.04,
        name = "blood-fountain-big",
        particle = "blood-particle",
        time_before_start = 0,
        time_before_start_deviation = 10,
        time_to_live = 30,
        time_to_live_deviation = 5,
        type = "particle-source",
        vertical_speed = 0.15,
        vertical_speed_deviation = 0.05
      }
    },
    pipe = {
      pipe = {
        collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
        corpse = "small-remnants",
        fast_replaceable_group = "pipe",
        flags = { "placeable-neutral", "player-creation" },
        fluid_box = {
          base_area = 1,
          pipe_connections = { {
              position = { 0, -1 }
            }, {
              position = { 1, 0 }
            }, {
              position = { 0, 1 }
            }, {
              position = { -1, 0 }
            } }
        },
        horizontal_window_bounding_box = { { -0.25, -0.25 }, { 0.25, 0.15625 } },
        icon = "__base__/graphics/icons/pipe.png",
        max_health = 50,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "pipe"
        },
        name = "pipe",
        pictures = {
          corner_down_left = {
            filename = "__base__/graphics/entity/pipe/pipe-corner-down-left.png",
            height = 32,
            priority = "extra-high",
            width = 36
          },
          corner_down_right = {
            filename = "__base__/graphics/entity/pipe/pipe-corner-down-right.png",
            height = 32,
            priority = "extra-high",
            width = 32
          },
          corner_up_left = {
            filename = "__base__/graphics/entity/pipe/pipe-corner-up-left.png",
            height = 44,
            priority = "extra-high",
            width = 44
          },
          corner_up_right = {
            filename = "__base__/graphics/entity/pipe/pipe-corner-up-right.png",
            height = 40,
            priority = "extra-high",
            width = 32
          },
          cross = {
            filename = "__base__/graphics/entity/pipe/pipe-cross.png",
            height = 40,
            priority = "extra-high",
            width = 40
          },
          ending_down = {
            filename = "__base__/graphics/entity/pipe/pipe-ending-down.png",
            height = 32,
            priority = "extra-high",
            width = 44
          },
          ending_left = {
            filename = "__base__/graphics/entity/pipe/pipe-ending-left.png",
            height = 44,
            priority = "extra-high",
            width = 58
          },
          ending_right = {
            filename = "__base__/graphics/entity/pipe/pipe-ending-right.png",
            height = 44,
            priority = "extra-high",
            width = 32
          },
          ending_up = {
            filename = "__base__/graphics/entity/pipe/pipe-ending-up.png",
            height = 42,
            priority = "extra-high",
            width = 44
          },
          fluid_background = {
            filename = "__base__/graphics/entity/pipe/fluid-background.png",
            height = 20,
            priority = "extra-high",
            width = 32
          },
          high_temperature_flow = {
            filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
            height = 18,
            priority = "extra-high",
            width = 160
          },
          horizontal_window_background = {
            filename = "__base__/graphics/entity/pipe/pipe-horizontal-window-background.png",
            height = 42,
            priority = "extra-high",
            width = 32
          },
          low_temperature_flow = {
            filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
            height = 18,
            priority = "extra-high",
            width = 160
          },
          middle_temperature_flow = {
            filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
            height = 18,
            priority = "extra-high",
            width = 160
          },
          straight_horizontal = {
            filename = "__base__/graphics/entity/pipe/pipe-straight-horizontal.png",
            height = 42,
            priority = "extra-high",
            width = 32
          },
          straight_horizontal_window = {
            filename = "__base__/graphics/entity/pipe/pipe-straight-horizontal-window.png",
            height = 42,
            priority = "extra-high",
            width = 32
          },
          straight_vertical = {
            filename = "__base__/graphics/entity/pipe/pipe-straight-vertical.png",
            height = 42,
            priority = "extra-high",
            width = 44
          },
          straight_vertical_single = {
            filename = "__base__/graphics/entity/pipe/pipe-straight-vertical-single.png",
            height = 58,
            priority = "extra-high",
            width = 44
          },
          straight_vertical_window = {
            filename = "__base__/graphics/entity/pipe/pipe-straight-vertical-window.png",
            height = 32,
            priority = "extra-high",
            width = 44
          },
          t_down = {
            filename = "__base__/graphics/entity/pipe/pipe-t-down.png",
            height = 44,
            priority = "extra-high",
            width = 40
          },
          t_left = {
            filename = "__base__/graphics/entity/pipe/pipe-t-left.png",
            height = 42,
            priority = "extra-high",
            width = 44
          },
          t_right = {
            filename = "__base__/graphics/entity/pipe/pipe-t-right.png",
            height = 32,
            priority = "extra-high",
            width = 40
          },
          t_up = {
            filename = "__base__/graphics/entity/pipe/pipe-t-up.png",
            height = 42,
            priority = "extra-high",
            width = 32
          },
          vertical_window_background = {
            filename = "__base__/graphics/entity/pipe/pipe-vertical-window-background.png",
            height = 32,
            priority = "extra-high",
            width = 44
          }
        },
        resistances = { {
            percent = 90,
            type = "fire"
          } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        type = "pipe",
        vertical_window_bounding_box = { { -0.28125, -0.40625 }, { 0.03125, 0.125 } },
        working_sound = {
          match_volume_to_activity = true,
          max_sounds_per_type = 3,
          sound = { {
              filename = "__base__/sound/pipe.ogg",
              volume = 0.65
            } }
        }
      }
    },
    ["pipe-to-ground"] = {
      ["pipe-to-ground"] = {
        collision_box = { { -0.29, -0.29 }, { 0.29, 0.2 } },
        corpse = "small-remnants",
        flags = { "placeable-neutral", "player-creation" },
        fluid_box = {
          base_area = 1,
          pipe_connections = { {
              position = { 0, -1 }
            }, {
              max_underground_distance = 10,
              position = { 0, 1 }
            } },
          pipe_covers = {
            east = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
              height = 32,
              priority = "extra-high",
              width = 32
            },
            north = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
              height = 32,
              priority = "extra-high",
              width = 44
            },
            south = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
              height = 52,
              priority = "extra-high",
              width = 46
            },
            west = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
              height = 32,
              priority = "extra-high",
              width = 32
            }
          }
        },
        icon = "__base__/graphics/icons/pipe-to-ground.png",
        max_health = 50,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "pipe-to-ground"
        },
        name = "pipe-to-ground",
        pictures = {
          down = {
            filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-down.png",
            height = 32,
            priority = "high",
            width = 40
          },
          left = {
            filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-left.png",
            height = 42,
            priority = "high",
            width = 32
          },
          right = {
            filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-right.png",
            height = 40,
            priority = "high",
            width = 32
          },
          up = {
            filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-up.png",
            height = 32,
            priority = "high",
            width = 44
          }
        },
        resistances = { {
            percent = 80,
            type = "fire"
          } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        type = "pipe-to-ground",
        underground_sprite = {
          filename = "__core__/graphics/arrows/underground-lines.png",
          height = 32,
          priority = "high",
          width = 32
        }
      }
    },
    player = {
      player = {
        animations = { {
            idle = {
              layers = { <33>{
                  animation_speed = 0.15,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-basic-idle.png",
                  frame_count = 22,
                  height = 73,
                  priority = "very-low",
                  shift = { 0, -0.5 },
                  width = 53
                }, <34>{
                  animation_speed = 0.15,
                  apply_runtime_tint = true,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-basic-idle-color.png",
                  frame_count = 22,
                  height = 45,
                  priority = "very-low",
                  shift = { -0.015625, -0.8125 },
                  width = 28
                } }
            },
            idle_with_gun = {
              layers = { <35>{
                  animation_speed = 0.15,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-basic-idle-gun.png",
                  frame_count = 22,
                  height = 74,
                  priority = "very-low",
                  shift = { -0.28125, -0.53125 },
                  width = 65
                }, <36>{
                  animation_speed = 0.15,
                  apply_runtime_tint = true,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-basic-idle-gun-color.png",
                  frame_count = 22,
                  height = 43,
                  priority = "very-low",
                  shift = { -0.3125, -0.703125 },
                  width = 35
                } }
            },
            mining_with_hands = {
              layers = { <37>{
                  animation_speed = 0.6,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-basic-mine.png",
                  frame_count = 14,
                  height = 57,
                  priority = "very-low",
                  shift = { -0.15625, -0.21875 },
                  width = 48
                }, <38>{
                  animation_speed = 0.6,
                  apply_runtime_tint = true,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-basic-mine-color.png",
                  frame_count = 14,
                  height = 46,
                  priority = "very-low",
                  shift = { -0.15625, -0.390625 },
                  width = 38
                } }
            },
            mining_with_tool = {
              layers = { <39>{
                  animation_speed = 0.9,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-basic-mine-tool.png",
                  frame_count = 26,
                  height = 103,
                  line_length = 13,
                  priority = "very-low",
                  shift = { -0.0625, -0.21875 },
                  width = 104
                }, <40>{
                  animation_speed = 0.9,
                  apply_runtime_tint = true,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-basic-mine-tool-color.png",
                  frame_count = 26,
                  height = 68,
                  line_length = 13,
                  priority = "very-low",
                  shift = { -0.046875, -0.390625 },
                  width = 69
                } }
            },
            running = {
              layers = { <41>{
                  animation_speed = 0.6,
                  axially_symmetrical = false,
                  direction_count = 8,
                  distance_per_frame = 0.35,
                  filename = "__base__/graphics/entity/player/player-basic-run.png",
                  frame_count = 22,
                  height = 71,
                  priority = "very-low",
                  shift = { 0, -0.484375 },
                  width = 48
                }, <42>{
                  apply_runtime_tint = true,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-basic-run-color.png",
                  frame_count = 22,
                  height = 55,
                  priority = "very-low",
                  shift = { 0, -0.703125 },
                  width = 40
                } }
            },
            running_with_gun = {
              layers = { <43>{
                  animation_speed = 0.6,
                  direction_count = 18,
                  distance_per_frame = 0.35,
                  filename = "__base__/graphics/entity/player/player-basic-run-gun.png",
                  frame_count = 22,
                  height = 78,
                  priority = "very-low",
                  shift = { 0.140625, -0.328125 },
                  width = 61
                }, <44>{
                  apply_runtime_tint = true,
                  direction_count = 18,
                  filename = "__base__/graphics/entity/player/player-basic-run-gun-color.png",
                  frame_count = 22,
                  height = 50,
                  priority = "very-low",
                  shift = { 0.015625, -0.625 },
                  width = 34
                } }
            }
          }, {
            armors = { "basic-armor", "heavy-armor", "heavy-armor" },
            idle = {
              layers = { <table 33>, <table 34>, {
                  animation_speed = 0.15,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor1-idle.png",
                  frame_count = 22,
                  height = 42,
                  priority = "very-low",
                  shift = { -0.03125, -0.84375 },
                  width = 28
                }, {
                  animation_speed = 0.15,
                  apply_runtime_tint = true,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor1-idle-color.png",
                  frame_count = 22,
                  height = 45,
                  priority = "very-low",
                  shift = { -0.03125, -0.796875 },
                  width = 28
                } }
            },
            idle_with_gun = {
              layers = { <table 35>, <table 36>, {
                  animation_speed = 0.15,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor1-idle-gun.png",
                  frame_count = 22,
                  height = 45,
                  priority = "very-low",
                  shift = { -0.296875, -0.734375 },
                  width = 36
                }, {
                  animation_speed = 0.15,
                  apply_runtime_tint = true,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor1-idle-gun-color.png",
                  frame_count = 22,
                  height = 45,
                  priority = "very-low",
                  shift = { -0.296875, -0.734375 },
                  width = 36
                } }
            },
            mining_with_hands = {
              layers = { <table 37>, <table 38>, {
                  animation_speed = 0.6,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor1-mine.png",
                  frame_count = 14,
                  height = 47,
                  priority = "very-low",
                  shift = { -0.15625, -0.40625 },
                  width = 40
                }, {
                  animation_speed = 0.6,
                  apply_runtime_tint = true,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor1-mine-color.png",
                  frame_count = 14,
                  height = 47,
                  priority = "very-low",
                  shift = { -0.15625, -0.40625 },
                  width = 40
                } }
            },
            mining_with_tool = {
              layers = { <table 39>, <table 40>, {
                  animation_speed = 0.9,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor1-mine-tool.png",
                  frame_count = 26,
                  height = 68,
                  line_length = 26,
                  priority = "very-low",
                  shift = { -0.0625, -0.390625 },
                  width = 70
                }, {
                  animation_speed = 0.9,
                  apply_runtime_tint = true,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor1-mine-tool-color.png",
                  frame_count = 26,
                  height = 68,
                  line_length = 26,
                  priority = "very-low",
                  shift = { -0.0625, -0.390625 },
                  width = 70
                } }
            },
            running = {
              layers = { <table 41>, <table 42>, {
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor1-run.png",
                  frame_count = 22,
                  height = 53,
                  priority = "very-low",
                  shift = { 0, -0.796875 },
                  width = 36
                }, {
                  apply_runtime_tint = true,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor1-run-color.png",
                  frame_count = 22,
                  height = 53,
                  priority = "very-low",
                  shift = { 0, -0.796875 },
                  width = 36
                } }
            },
            running_with_gun = {
              layers = { <table 43>, <table 44>, {
                  direction_count = 18,
                  filename = "__base__/graphics/entity/player/player-armor1-run-gun.png",
                  frame_count = 22,
                  height = 51,
                  priority = "very-low",
                  shift = { 0, -0.65625 },
                  width = 35
                }, {
                  apply_runtime_tint = true,
                  direction_count = 18,
                  filename = "__base__/graphics/entity/player/player-armor1-run-gun-color.png",
                  frame_count = 22,
                  height = 51,
                  priority = "very-low",
                  shift = { 0, -0.65625 },
                  width = 35
                } }
            }
          }, {
            armors = { "basic-modular-armor", "power-armor", "power-armor-mk2" },
            idle = {
              layers = { <table 33>, <table 34>, {
                  animation_speed = 0.15,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor2-idle.png",
                  frame_count = 22,
                  height = 43,
                  priority = "very-low",
                  shift = { -0.015625, -0.83125 },
                  width = 38
                }, {
                  animation_speed = 0.15,
                  apply_runtime_tint = true,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor2-idle-color.png",
                  frame_count = 22,
                  height = 45,
                  priority = "very-low",
                  shift = { -0.015625, -0.796875 },
                  width = 38
                } }
            },
            idle_with_gun = {
              layers = { <table 35>, <table 36>, {
                  animation_speed = 0.15,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor2-idle-gun.png",
                  frame_count = 22,
                  height = 43,
                  priority = "very-low",
                  shift = { -0.296875, -0.78125 },
                  width = 38
                }, {
                  animation_speed = 0.15,
                  apply_runtime_tint = true,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor2-idle-gun-color.png",
                  frame_count = 22,
                  height = 44,
                  priority = "very-low",
                  shift = { -0.296875, -0.703125 },
                  width = 38
                } }
            },
            mining_with_hands = {
              layers = { <table 37>, <table 38>, {
                  animation_speed = 0.6,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor2-mine.png",
                  frame_count = 14,
                  height = 46,
                  priority = "very-low",
                  shift = { -0.15625, -0.421875 },
                  width = 42
                }, {
                  animation_speed = 0.6,
                  apply_runtime_tint = true,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor2-mine-color.png",
                  frame_count = 14,
                  height = 47,
                  priority = "very-low",
                  shift = { -0.15625, -0.40625 },
                  width = 40
                } }
            },
            mining_with_tool = {
              layers = { <table 39>, <table 40>, {
                  animation_speed = 0.9,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor2-mine-tool.png",
                  frame_count = 26,
                  height = 61,
                  line_length = 26,
                  priority = "very-low",
                  shift = { -0.0625, -0.4375 },
                  width = 72
                }, {
                  animation_speed = 0.9,
                  apply_runtime_tint = true,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor2-mine-tool-color.png",
                  frame_count = 26,
                  height = 68,
                  line_length = 26,
                  priority = "very-low",
                  shift = { -0.046875, -0.359375 },
                  width = 69
                } }
            },
            running = {
              layers = { <table 41>, <table 42>, {
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor2-run.png",
                  frame_count = 22,
                  height = 54,
                  priority = "very-low",
                  shift = { 0, -0.78125 },
                  width = 40
                }, {
                  apply_runtime_tint = true,
                  axially_symmetrical = false,
                  direction_count = 8,
                  filename = "__base__/graphics/entity/player/player-armor2-run-color.png",
                  frame_count = 22,
                  height = 43,
                  priority = "very-low",
                  shift = { 0, -0.890625 },
                  width = 40
                } }
            },
            running_with_gun = {
              layers = { <table 43>, <table 44>, {
                  direction_count = 18,
                  filename = "__base__/graphics/entity/player/player-armor2-run-gun.png",
                  frame_count = 22,
                  height = 47,
                  priority = "very-low",
                  shift = { 0, -0.6875 },
                  width = 37
                }, {
                  apply_runtime_tint = true,
                  direction_count = 18,
                  filename = "__base__/graphics/entity/player/player-armor2-run-gun-color.png",
                  frame_count = 22,
                  height = 50,
                  priority = "very-low",
                  shift = { 0, -0.609375 },
                  width = 37
                } }
            }
          } },
        collision_box = { { -0.2, -0.2 }, { 0.2, 0.2 } },
        crafting_categories = { "crafting" },
        distance_per_frame = 0.13,
        eat = { {
            filename = "__base__/sound/eat.ogg",
            volume = 1
          } },
        flags = { "pushable", "placeable-off-grid", "breaths-air", "not-repairable", "not-on-map" },
        healing_per_tick = 0.01,
        heartbeat = { {
            filename = "__base__/sound/heartbeat.ogg"
          } },
        icon = "__base__/graphics/icons/player.png",
        inventory_size = 60,
        light = { {
            intensity = 0.4,
            minimum_darkness = 0.3,
            size = 25
          }, {
            intensity = 0.6,
            minimum_darkness = 0.3,
            picture = {
              filename = "__core__/graphics/light-cone.png",
              height = 200,
              priority = "medium",
              scale = 2,
              width = 200
            },
            shift = { 0, -13 },
            size = 2,
            type = "oriented"
          } },
        max_health = 100,
        maximum_corner_sliding_distance = 0.7,
        mining_categories = { "basic-solid" },
        mining_speed = 0.01,
        mining_with_hands_particles_animation_positions = { 29, 63 },
        mining_with_tool_particles_animation_positions = { 28 },
        name = "player",
        order = "a",
        running_sound_animation_positions = { 14, 29 },
        running_speed = 0.15,
        selection_box = { { -0.4, -1.4 }, { 0.4, 0.2 } },
        subgroup = "creatures",
        type = "player"
      }
    },
    ["player-port"] = {
      ["player-port"] = {
        animation = {
          filename = "__base__/graphics/entity/player-port/player-port-animation.png",
          frame_count = 2,
          height = 64,
          width = 64
        },
        collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/player-port.png",
        max_health = 50,
        minable = {
          mining_time = 1,
          result = "player-port"
        },
        name = "player-port",
        selection_box = { { -1, -1 }, { 1, 1 } },
        type = "player-port"
      }
    },
    projectile = {
      ["acid-projectile-purple"] = {
        acceleration = 0.005,
        action = {
          action_delivery = {
            target_effects = { {
                entity_name = "acid-splash-purple",
                type = "create-entity"
              }, {
                damage = {
                  amount = 10,
                  type = "acid"
                },
                type = "damage"
              } },
            type = "instant"
          },
          type = "direct"
        },
        animation = {
          filename = "__base__/graphics/entity/acid-projectile-purple/acid-projectile-purple.png",
          frame_count = 33,
          height = 18,
          line_length = 5,
          priority = "high",
          width = 16
        },
        flags = { "not-on-map" },
        name = "acid-projectile-purple",
        rotatable = false,
        shadow = {
          filename = "__base__/graphics/entity/acid-projectile-purple/acid-projectile-purple-shadow.png",
          frame_count = 33,
          height = 16,
          line_length = 5,
          priority = "high",
          shift = { -0.09, 0.395 },
          width = 28
        },
        type = "projectile"
      },
      ["basic-grenade"] = {
        acceleration = 0.005,
        action = {
          action_delivery = {
            target_effects = { {
                entity_name = "huge-explosion",
                type = "create-entity"
              }, {
                action = {
                  action_delivery = {
                    target_effects = { {
                        damage = {
                          amount = 25,
                          type = "explosion"
                        },
                        type = "damage"
                      }, {
                        entity_name = "explosion",
                        type = "create-entity"
                      } },
                    type = "instant"
                  },
                  perimeter = 6.5,
                  type = "area"
                },
                type = "nested-result"
              }, {
                check_buildability = true,
                entity_name = "small-scorchmark",
                type = "create-entity"
              } },
            type = "instant"
          },
          type = "direct"
        },
        animation = {
          filename = "__base__/graphics/entity/basic-grenade/basic-grenade.png",
          frame_count = 1,
          height = 24,
          priority = "high",
          width = 24
        },
        flags = { "not-on-map" },
        light = {
          intensity = 0.5,
          size = 4
        },
        name = "basic-grenade",
        shadow = {
          filename = "__base__/graphics/entity/basic-grenade/basic-grenade-shadow.png",
          frame_count = 1,
          height = 32,
          priority = "high",
          width = 24
        },
        type = "projectile"
      },
      ["blue-laser"] = {
        acceleration = 0.005,
        action = {
          action_delivery = {
            target_effects = { {
                entity_name = "laser-bubble",
                type = "create-entity"
              }, {
                damage = {
                  amount = 10,
                  type = "laser"
                },
                type = "damage"
              } },
            type = "instant"
          },
          type = "direct"
        },
        animation = {
          filename = "__base__/graphics/entity/blue-laser/blue-laser.png",
          frame_count = 1,
          height = 14,
          priority = "high",
          width = 7
        },
        flags = { "not-on-map" },
        light = {
          intensity = 0.5,
          size = 10
        },
        name = "blue-laser",
        speed = 0.15,
        type = "projectile"
      },
      ["cannon-projectile"] = {
        acceleration = 0,
        action = {
          action_delivery = {
            target_effects = { {
                entity_name = "explosion-gunshot",
                type = "create-entity"
              }, {
                damage = {
                  amount = 150,
                  type = "physical"
                },
                type = "damage"
              }, {
                damage = {
                  amount = 50,
                  type = "explosion"
                },
                type = "damage"
              } },
            type = "instant"
          },
          type = "direct"
        },
        animation = {
          filename = "__base__/graphics/entity/bullet/bullet.png",
          frame_count = 1,
          height = 50,
          priority = "high",
          width = 3
        },
        collision_box = { { -0.05, -1.1 }, { 0.05, 1.1 } },
        direction_only = true,
        final_action = {
          action_delivery = {
            target_effects = { {
                check_buildability = true,
                entity_name = "small-scorchmark",
                type = "create-entity"
              } },
            type = "instant"
          },
          type = "direct"
        },
        flags = { "not-on-map" },
        name = "cannon-projectile",
        piercing_damage = 300,
        type = "projectile"
      },
      ["defender-capsule"] = {
        acceleration = 0.005,
        action = {
          action_delivery = {
            target_effects = { {
                entity_name = "defender",
                type = "create-entity"
              } },
            type = "instant"
          },
          type = "direct"
        },
        animation = {
          filename = "__base__/graphics/entity/combat-robot-capsule/defender-capsule.png",
          frame_count = 1,
          height = 32,
          priority = "high",
          width = 32
        },
        flags = { "not-on-map" },
        light = {
          intensity = 0.5,
          size = 4
        },
        name = "defender-capsule",
        shadow = {
          filename = "__base__/graphics/entity/combat-robot-capsule/combat-robot-capsule-shadow.png",
          frame_count = 1,
          height = 32,
          priority = "high",
          width = 32
        },
        smoke = <45>{ {
            deviation = { 0.15, 0.15 },
            frequency = 1,
            name = "smoke-fast",
            position = { 0, 0 },
            slow_down_factor = 1,
            starting_frame = 3,
            starting_frame_deviation = 5,
            starting_frame_speed = 0,
            starting_frame_speed_deviation = 5
          } },
        type = "projectile"
      },
      ["destroyer-capsule"] = {
        acceleration = 0.005,
        action = {
          action_delivery = {
            target_effects = { {
                entity_name = "destroyer",
                offset = { -0.7, -0.7 },
                type = "create-entity"
              }, {
                entity_name = "destroyer",
                offset = { -0.7, 0.7 },
                type = "create-entity"
              }, {
                entity_name = "destroyer",
                offset = { 0.7, -0.7 },
                type = "create-entity"
              }, {
                entity_name = "destroyer",
                offset = { 0.7, 0.7 },
                type = "create-entity"
              }, {
                entity_name = "destroyer",
                offset = { 0, 0 },
                type = "create-entity"
              } },
            type = "instant"
          },
          type = "direct"
        },
        animation = {
          filename = "__base__/graphics/entity/combat-robot-capsule/destroyer-capsule.png",
          frame_count = 1,
          height = 32,
          priority = "high",
          width = 32
        },
        flags = { "not-on-map" },
        light = {
          intensity = 0.5,
          size = 4
        },
        name = "destroyer-capsule",
        shadow = {
          filename = "__base__/graphics/entity/combat-robot-capsule/combat-robot-capsule-shadow.png",
          frame_count = 1,
          height = 32,
          priority = "high",
          width = 32
        },
        smoke = <table 45>,
        type = "projectile"
      },
      ["distractor-capsule"] = {
        acceleration = 0.005,
        action = {
          action_delivery = {
            target_effects = { {
                entity_name = "distractor",
                offset = { 0.5, -0.5 },
                type = "create-entity"
              }, {
                entity_name = "distractor",
                offset = { -0.5, -0.5 },
                type = "create-entity"
              }, {
                entity_name = "distractor",
                offset = { 0, 0.5 },
                type = "create-entity"
              } },
            type = "instant"
          },
          type = "direct"
        },
        animation = {
          filename = "__base__/graphics/entity/combat-robot-capsule/distractor-capsule.png",
          frame_count = 1,
          height = 32,
          priority = "high",
          width = 32
        },
        flags = { "not-on-map" },
        light = {
          intensity = 0.5,
          size = 4
        },
        name = "distractor-capsule",
        shadow = {
          filename = "__base__/graphics/entity/combat-robot-capsule/combat-robot-capsule-shadow.png",
          frame_count = 1,
          height = 32,
          priority = "high",
          width = 32
        },
        smoke = <table 45>,
        type = "projectile"
      },
      ["explosive-rocket"] = {
        acceleration = 0.005,
        action = {
          action_delivery = {
            target_effects = { {
                entity_name = "explosion",
                type = "create-entity"
              }, {
                action = {
                  action_delivery = {
                    target_effects = { {
                        damage = {
                          amount = 40,
                          type = "explosion"
                        },
                        type = "damage"
                      }, {
                        entity_name = "explosion",
                        type = "create-entity"
                      } },
                    type = "instant"
                  },
                  perimeter = 6.5,
                  type = "area"
                },
                type = "nested-result"
              } },
            type = "instant"
          },
          type = "direct"
        },
        animation = {
          filename = "__base__/graphics/entity/rocket/rocket.png",
          frame_count = 1,
          height = 30,
          priority = "high",
          width = 10
        },
        flags = { "not-on-map" },
        light = {
          intensity = 0.5,
          size = 4
        },
        name = "explosive-rocket",
        shadow = {
          filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
          frame_count = 1,
          height = 30,
          priority = "high",
          width = 10
        },
        smoke = { {
            deviation = { 0.15, 0.15 },
            frequency = 1,
            name = "smoke-fast",
            position = { 0, 0 },
            slow_down_factor = 1,
            starting_frame = 3,
            starting_frame_deviation = 5,
            starting_frame_speed = 0,
            starting_frame_speed_deviation = 5
          } },
        type = "projectile"
      },
      laser = {
        acceleration = 0.005,
        action = {
          action_delivery = {
            target_effects = { {
                entity_name = "laser-bubble",
                type = "create-entity"
              }, {
                damage = {
                  amount = 5,
                  type = "laser"
                },
                type = "damage"
              } },
            type = "instant"
          },
          type = "direct"
        },
        animation = {
          filename = "__base__/graphics/entity/laser/laser.png",
          frame_count = 1,
          height = 14,
          priority = "high",
          width = 7
        },
        flags = { "not-on-map" },
        light = {
          intensity = 0.5,
          size = 10
        },
        name = "laser",
        speed = 0.15,
        type = "projectile"
      },
      ["piercing-shotgun-pellet"] = {
        acceleration = 0,
        action = {
          action_delivery = {
            target_effects = {
              damage = {
                amount = 6,
                type = "physical"
              },
              type = "damage"
            },
            type = "instant"
          },
          type = "direct"
        },
        animation = {
          filename = "__base__/graphics/entity/piercing-bullet/piercing-bullet.png",
          frame_count = 1,
          height = 50,
          priority = "high",
          width = 3
        },
        collision_box = { { -0.05, -1 }, { 0.05, 1 } },
        direction_only = true,
        flags = { "not-on-map" },
        name = "piercing-shotgun-pellet",
        type = "projectile"
      },
      ["poison-capsule"] = {
        acceleration = 0.005,
        action = {
          action_delivery = {
            target_effects = {
              entity_name = "poison-cloud",
              type = "create-entity"
            },
            type = "instant"
          },
          type = "direct"
        },
        animation = {
          filename = "__base__/graphics/entity/poison-capsule/poison-capsule.png",
          frame_count = 1,
          height = 32,
          priority = "high",
          width = 32
        },
        flags = { "not-on-map" },
        light = {
          intensity = 0.5,
          size = 4
        },
        name = "poison-capsule",
        shadow = {
          filename = "__base__/graphics/entity/poison-capsule/poison-capsule-shadow.png",
          frame_count = 1,
          height = 32,
          priority = "high",
          width = 32
        },
        smoke = <table 45>,
        type = "projectile"
      },
      rocket = {
        acceleration = 0.005,
        action = {
          action_delivery = {
            target_effects = { {
                entity_name = "explosion",
                type = "create-entity"
              }, {
                damage = {
                  amount = 60,
                  type = "explosion"
                },
                type = "damage"
              }, {
                check_buildability = true,
                entity_name = "small-scorchmark",
                type = "create-entity"
              } },
            type = "instant"
          },
          type = "direct"
        },
        animation = {
          filename = "__base__/graphics/entity/rocket/rocket.png",
          frame_count = 1,
          height = 30,
          priority = "high",
          width = 10
        },
        flags = { "not-on-map" },
        light = {
          intensity = 0.5,
          size = 4
        },
        name = "rocket",
        shadow = {
          filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
          frame_count = 1,
          height = 30,
          priority = "high",
          width = 10
        },
        smoke = { {
            deviation = { 0.15, 0.15 },
            frequency = 1,
            name = "smoke-fast",
            position = { 0, 0 },
            slow_down_factor = 1,
            starting_frame = 3,
            starting_frame_deviation = 5,
            starting_frame_speed = 0,
            starting_frame_speed_deviation = 5
          } },
        type = "projectile"
      },
      ["shotgun-pellet"] = {
        acceleration = 0,
        action = {
          action_delivery = {
            target_effects = {
              damage = {
                amount = 4,
                type = "physical"
              },
              type = "damage"
            },
            type = "instant"
          },
          type = "direct"
        },
        animation = {
          filename = "__base__/graphics/entity/bullet/bullet.png",
          frame_count = 1,
          height = 50,
          priority = "high",
          width = 3
        },
        collision_box = { { -0.05, -1 }, { 0.05, 1 } },
        direction_only = true,
        flags = { "not-on-map" },
        name = "shotgun-pellet",
        type = "projectile"
      },
      ["slowdown-capsule"] = {
        acceleration = 0.005,
        action = {
          action_delivery = {
            target_effects = {
              sticker = "slowdown-sticker",
              type = "create-sticker"
            },
            type = "instant"
          },
          perimeter = 9,
          type = "area"
        },
        animation = {
          filename = "__base__/graphics/entity/slowdown-capsule/slowdown-capsule.png",
          frame_count = 1,
          height = 32,
          priority = "high",
          width = 32
        },
        flags = { "not-on-map" },
        light = {
          intensity = 0.5,
          size = 4
        },
        name = "slowdown-capsule",
        shadow = {
          filename = "__base__/graphics/entity/slowdown-capsule/slowdown-capsule-shadow.png",
          frame_count = 1,
          height = 32,
          priority = "high",
          width = 32
        },
        smoke = <table 45>,
        type = "projectile"
      }
    },
    pump = {
      ["small-pump"] = {
        animations = {
          east = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/small-pump/small-pump-right.png",
            frame_count = 8,
            height = 56,
            shift = { 0.265625, -0.21875 },
            width = 51
          },
          north = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/small-pump/small-pump-up.png",
            frame_count = 8,
            height = 56,
            shift = { 0.09375, 0.03125 },
            width = 46
          },
          south = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/small-pump/small-pump-down.png",
            frame_count = 8,
            height = 58,
            shift = { 0.421875, -0.125 },
            width = 61
          },
          west = {
            animation_speed = 0.5,
            filename = "__base__/graphics/entity/small-pump/small-pump-left.png",
            frame_count = 8,
            height = 44,
            shift = { 0.3125, 0.0625 },
            width = 56
          }
        },
        collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
        corpse = "small-remnants",
        energy_source = {
          emissions = 0.004,
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = "30kW",
        fast_replaceable_group = "pipe",
        flags = { "placeable-neutral", "player-creation" },
        fluid_box = {
          base_area = 1,
          pipe_connections = { {
              position = { 0, -1 },
              type = "output"
            }, {
              position = { 0, 1 },
              type = "input"
            } },
          pipe_covers = {
            east = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
              height = 32,
              priority = "extra-high",
              width = 32
            },
            north = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
              height = 32,
              priority = "extra-high",
              width = 44
            },
            south = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
              height = 52,
              priority = "extra-high",
              width = 46
            },
            west = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
              height = 32,
              priority = "extra-high",
              width = 32
            }
          }
        },
        icon = "__base__/graphics/icons/small-pump.png",
        max_health = 80,
        minable = {
          mining_time = 1,
          result = "small-pump"
        },
        name = "small-pump",
        pumping_speed = 0.5,
        resistances = { {
            percent = 70,
            type = "fire"
          } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        type = "pump"
      }
    },
    radar = {
      radar = {
        collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
        corpse = "big-remnants",
        energy_per_nearby_scan = "250kJ",
        energy_per_sector = "10MJ",
        energy_source = {
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = "300kW",
        flags = { "placeable-player", "player-creation" },
        icon = "__base__/graphics/icons/radar.png",
        max_distance_of_sector_revealed = 14,
        max_health = 150,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "radar"
        },
        name = "radar",
        pictures = {
          apply_projection = false,
          axially_symmetrical = false,
          direction_count = 64,
          filename = "__base__/graphics/entity/radar/radar.png",
          height = 131,
          line_length = 8,
          priority = "low",
          shift = { 0.875, -0.35 },
          width = 153
        },
        resistances = { {
            percent = 70,
            type = "fire"
          } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        type = "radar",
        working_sound = {
          apparent_volume = 2,
          sound = { {
              filename = "__base__/sound/radar.ogg"
            } }
        }
      }
    },
    rail = {
      ["curved-rail"] = {
        bending_type = "turn",
        collision_box = { { -0.75, -0.55 }, { 0.75, 1.6 } },
        corpse = "curved-rail-remnants",
        flags = { "placeable-neutral", "player-creation", "building-direction-8-way" },
        icon = "__base__/graphics/icons/curved-rail.png",
        max_health = 200,
        minable = {
          mining_time = 1,
          result = "curved-rail"
        },
        name = "curved-rail",
        pictures = {
          curved_rail_horizontal = {
            backplates = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-backplates.png",
              height = 128,
              priority = "extra-high",
              width = 256
            },
            metals = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-metals.png",
              height = 128,
              priority = "extra-high",
              width = 256
            },
            stone_path = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-stone-path.png",
              height = 128,
              priority = "extra-high",
              width = 256
            },
            ties = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-ties.png",
              height = 128,
              priority = "extra-high",
              width = 256
            }
          },
          curved_rail_vertical = {
            backplates = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-backplates.png",
              height = 256,
              priority = "extra-high",
              width = 128
            },
            metals = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-metals.png",
              height = 256,
              priority = "extra-high",
              width = 128
            },
            stone_path = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-stone-path.png",
              height = 256,
              priority = "extra-high",
              width = 128
            },
            ties = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-ties.png",
              height = 256,
              priority = "extra-high",
              width = 128
            }
          },
          rail_endings = {
            sheet = {
              filename = "__base__/graphics/entity/rail-endings/rail-endings.png",
              height = 82,
              priority = "high",
              width = 88
            }
          },
          straight_rail_diagonal = {
            backplates = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-backplates.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            metals = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-metals.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            stone_path = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-stone-path.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            ties = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-ties.png",
              height = 64,
              priority = "extra-high",
              width = 64
            }
          },
          straight_rail_horizontal = {
            backplates = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-backplates.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            metals = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-metals.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            stone_path = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-stone-path.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            ties = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-ties.png",
              height = 64,
              priority = "extra-high",
              width = 64
            }
          },
          straight_rail_vertical = {
            backplates = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-backplates.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            metals = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-metals.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            stone_path = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-stone-path.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            ties = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-ties.png",
              height = 64,
              priority = "extra-high",
              width = 64
            }
          }
        },
        rail_category = "regular",
        secondary_collision_box = { { -0.76, -2.6 }, { 0.76, 2.6 } },
        selection_box = { { -1.7, -0.8 }, { 1.7, 0.8 } },
        type = "rail"
      },
      ["straight-rail"] = {
        bending_type = "straight",
        collision_box = { { -0.7, -0.8 }, { 0.7, 0.8 } },
        corpse = "straight-rail-remnants",
        flags = { "placeable-neutral", "player-creation", "building-direction-8-way" },
        icon = "__base__/graphics/icons/straight-rail.png",
        max_health = 100,
        minable = {
          mining_time = 1,
          result = "straight-rail"
        },
        name = "straight-rail",
        pictures = {
          curved_rail_horizontal = {
            backplates = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-backplates.png",
              height = 128,
              priority = "extra-high",
              width = 256
            },
            metals = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-metals.png",
              height = 128,
              priority = "extra-high",
              width = 256
            },
            stone_path = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-stone-path.png",
              height = 128,
              priority = "extra-high",
              width = 256
            },
            ties = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-ties.png",
              height = 128,
              priority = "extra-high",
              width = 256
            }
          },
          curved_rail_vertical = {
            backplates = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-backplates.png",
              height = 256,
              priority = "extra-high",
              width = 128
            },
            metals = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-metals.png",
              height = 256,
              priority = "extra-high",
              width = 128
            },
            stone_path = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-stone-path.png",
              height = 256,
              priority = "extra-high",
              width = 128
            },
            ties = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-ties.png",
              height = 256,
              priority = "extra-high",
              width = 128
            }
          },
          rail_endings = {
            sheet = {
              filename = "__base__/graphics/entity/rail-endings/rail-endings.png",
              height = 82,
              priority = "high",
              width = 88
            }
          },
          straight_rail_diagonal = {
            backplates = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-backplates.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            metals = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-metals.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            stone_path = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-stone-path.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            ties = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-ties.png",
              height = 64,
              priority = "extra-high",
              width = 64
            }
          },
          straight_rail_horizontal = {
            backplates = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-backplates.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            metals = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-metals.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            stone_path = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-stone-path.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            ties = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-ties.png",
              height = 64,
              priority = "extra-high",
              width = 64
            }
          },
          straight_rail_vertical = {
            backplates = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-backplates.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            metals = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-metals.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            stone_path = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-stone-path.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            ties = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-ties.png",
              height = 64,
              priority = "extra-high",
              width = 64
            }
          }
        },
        rail_category = "regular",
        selection_box = { { -0.7, -0.8 }, { 0.7, 0.8 } },
        type = "rail"
      }
    },
    ["rail-category"] = {
      regular = {
        name = "regular",
        type = "rail-category"
      }
    },
    ["rail-remnants"] = {
      ["curved-rail-remnants"] = {
        bending_type = "turn",
        flags = { "placeable-neutral", "building-direction-8-way", "not-on-map" },
        icon = "__base__/graphics/icons/curved-rail-remnants.png",
        name = "curved-rail-remnants",
        order = "d[remnants]-b[rail]-b[curved]",
        pictures = {
          curved_rail_horizontal = {
            backplates = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-metals-remnants.png",
              height = 128,
              priority = "extra-high",
              width = 256
            },
            metals = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-metals-remnants.png",
              height = 128,
              priority = "extra-high",
              width = 256
            },
            stone_path = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-stone-path.png",
              height = 128,
              priority = "extra-high",
              width = 256
            },
            ties = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-ties-remnants.png",
              height = 128,
              priority = "extra-high",
              width = 256
            }
          },
          curved_rail_vertical = {
            backplates = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-metals-remnants.png",
              height = 256,
              priority = "extra-high",
              width = 128
            },
            metals = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-metals-remnants.png",
              height = 256,
              priority = "extra-high",
              width = 128
            },
            stone_path = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-stone-path.png",
              height = 256,
              priority = "extra-high",
              width = 128
            },
            ties = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-ties-remnants.png",
              height = 256,
              priority = "extra-high",
              width = 128
            }
          },
          rail_endings = {
            sheet = {
              filename = "__base__/graphics/entity/rail-endings/rail-endings.png",
              height = 82,
              priority = "high",
              width = 88
            }
          },
          straight_rail_diagonal = {
            backplates = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-metals-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            metals = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-metals-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            stone_path = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-stone-path.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            ties = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-ties-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            }
          },
          straight_rail_horizontal = {
            backplates = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-metals-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            metals = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-metals-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            stone_path = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-stone-path.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            ties = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-ties-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            }
          },
          straight_rail_vertical = {
            backplates = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-metals-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            metals = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-metals-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            stone_path = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-stone-path.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            ties = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-ties-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            }
          }
        },
        selectable_in_game = false,
        selection_box = { { -1.7, -0.8 }, { 1.7, 0.8 } },
        subgroup = "remnants",
        tile_height = 8,
        tile_width = 4,
        time_before_removed = 162000,
        time_before_shading_off = 3600,
        type = "rail-remnants"
      },
      ["straight-rail-remnants"] = {
        bending_type = "straight",
        flags = { "placeable-neutral", "building-direction-8-way", "not-on-map" },
        icon = "__base__/graphics/icons/straight-rail-remnants.png",
        name = "straight-rail-remnants",
        order = "d[remnants]-b[rail]-a[straight]",
        pictures = {
          curved_rail_horizontal = {
            backplates = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-metals-remnants.png",
              height = 128,
              priority = "extra-high",
              width = 256
            },
            metals = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-metals-remnants.png",
              height = 128,
              priority = "extra-high",
              width = 256
            },
            stone_path = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-stone-path.png",
              height = 128,
              priority = "extra-high",
              width = 256
            },
            ties = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-horizontal-ties-remnants.png",
              height = 128,
              priority = "extra-high",
              width = 256
            }
          },
          curved_rail_vertical = {
            backplates = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-metals-remnants.png",
              height = 256,
              priority = "extra-high",
              width = 128
            },
            metals = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-metals-remnants.png",
              height = 256,
              priority = "extra-high",
              width = 128
            },
            stone_path = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-stone-path.png",
              height = 256,
              priority = "extra-high",
              width = 128
            },
            ties = {
              filename = "__base__/graphics/entity/curved-rail/curved-rail-vertical-ties-remnants.png",
              height = 256,
              priority = "extra-high",
              width = 128
            }
          },
          rail_endings = {
            sheet = {
              filename = "__base__/graphics/entity/rail-endings/rail-endings.png",
              height = 82,
              priority = "high",
              width = 88
            }
          },
          straight_rail_diagonal = {
            backplates = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-metals-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            metals = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-metals-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            stone_path = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-stone-path.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            ties = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-diagonal-ties-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            }
          },
          straight_rail_horizontal = {
            backplates = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-metals-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            metals = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-metals-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            stone_path = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-stone-path.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            ties = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-horizontal-ties-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            }
          },
          straight_rail_vertical = {
            backplates = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-metals-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            metals = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-metals-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            stone_path = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-stone-path.png",
              height = 64,
              priority = "extra-high",
              width = 64
            },
            ties = {
              filename = "__base__/graphics/entity/straight-rail/straight-rail-vertical-ties-remnants.png",
              height = 64,
              priority = "extra-high",
              width = 64
            }
          }
        },
        selectable_in_game = false,
        selection_box = { { -0.6, -0.8 }, { 0.6, 0.8 } },
        subgroup = "remnants",
        tile_height = 2,
        tile_width = 2,
        time_before_removed = 162000,
        time_before_shading_off = 3600,
        type = "rail-remnants"
      }
    },
    ["rail-signal"] = {
      ["rail-signal"] = {
        animation = {
          axially_symmetrical = false,
          direction_count = 8,
          filename = "__base__/graphics/entity/rail-signal/rail-signal.png",
          frame_count = 3,
          height = 46,
          priority = "high",
          width = 70
        },
        collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
        corpse = "small-remnants",
        flags = { "placeable-neutral", "player-creation", "building-direction-8-way", "filter-directions" },
        green_light = {
          color = {
            g = 1
          },
          intensity = 0.2,
          size = 4
        },
        icon = "__base__/graphics/icons/rail-signal.png",
        max_health = 80,
        minable = {
          mining_time = 1,
          result = "rail-signal"
        },
        name = "rail-signal",
        orange_light = {
          color = {
            g = 0.5,
            r = 1
          },
          intensity = 0.2,
          size = 4
        },
        red_light = {
          color = {
            r = 1
          },
          intensity = 0.2,
          size = 4
        },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        type = "rail-signal"
      }
    },
    recipe = {
      ["advanced-circuit"] = {
        enabled = "false",
        energy_required = 8,
        ingredients = { { "electronic-circuit", 2 }, { "plastic-bar", 2 }, { "copper-cable", 4 } },
        name = "advanced-circuit",
        result = "advanced-circuit",
        type = "recipe"
      },
      ["advanced-oil-processing"] = {
        category = "oil-processing",
        enabled = "false",
        energy_required = 5,
        icon = "__base__/graphics/icons/fluid/advanced-oil-processing.png",
        ingredients = { {
            amount = 10,
            name = "crude-oil",
            type = "fluid"
          }, {
            amount = 5,
            name = "water",
            type = "fluid"
          } },
        name = "advanced-oil-processing",
        order = "a[oil-processing]-b[advanced-oil-processing]",
        results = { {
            amount = 1,
            name = "heavy-oil",
            type = "fluid"
          }, {
            amount = 4.5,
            name = "light-oil",
            type = "fluid"
          }, {
            amount = 5.5,
            name = "petroleum-gas",
            type = "fluid"
          } },
        subgroup = "fluid",
        type = "recipe"
      },
      ["alien-science-pack"] = {
        enabled = "false",
        energy_required = 12,
        ingredients = { { "alien-artifact", 1 } },
        name = "alien-science-pack",
        result = "alien-science-pack",
        result_count = 10,
        type = "recipe"
      },
      ["assembling-machine-1"] = {
        enabled = "false",
        ingredients = { { "electronic-circuit", 3 }, { "iron-gear-wheel", 5 }, { "iron-plate", 9 } },
        name = "assembling-machine-1",
        result = "assembling-machine-1",
        type = "recipe"
      },
      ["assembling-machine-2"] = {
        enabled = "false",
        ingredients = { { "iron-plate", 9 }, { "electronic-circuit", 3 }, { "iron-gear-wheel", 5 }, { "assembling-machine-1", 1 } },
        name = "assembling-machine-2",
        result = "assembling-machine-2",
        type = "recipe"
      },
      ["assembling-machine-3"] = {
        enabled = "false",
        ingredients = { { "speed-module", 4 }, { "assembling-machine-2", 2 } },
        name = "assembling-machine-3",
        result = "assembling-machine-3",
        type = "recipe"
      },
      ["basic-accumulator"] = {
        enabled = "false",
        energy_required = 10,
        ingredients = { { "iron-plate", 2 }, { "battery", 5 } },
        name = "basic-accumulator",
        result = "basic-accumulator",
        type = "recipe"
      },
      ["basic-armor"] = {
        enabled = "false",
        energy_required = 3,
        ingredients = { { "iron-plate", 40 } },
        name = "basic-armor",
        result = "basic-armor",
        type = "recipe"
      },
      ["basic-beacon"] = {
        enabled = "false",
        energy_required = 15,
        ingredients = { { "electronic-circuit", 20 }, { "advanced-circuit", 20 }, { "steel-plate", 10 }, { "copper-cable", 10 } },
        name = "basic-beacon",
        result = "basic-beacon",
        type = "recipe"
      },
      ["basic-bullet-magazine"] = {
        energy_required = 2,
        ingredients = { { "iron-plate", 2 } },
        name = "basic-bullet-magazine",
        result = "basic-bullet-magazine",
        result_count = 1,
        type = "recipe"
      },
      ["basic-electric-discharge-defense-equipment"] = {
        enabled = "false",
        energy_required = 10,
        ingredients = { { "processing-unit", 5 }, { "steel-plate", 20 }, { "laser-turret", 10 } },
        name = "basic-electric-discharge-defense-equipment",
        result = "basic-electric-discharge-defense-equipment",
        type = "recipe"
      },
      ["basic-electric-discharge-defense-remote"] = {
        enabled = "false",
        ingredients = { { "electronic-circuit", 1 } },
        name = "basic-electric-discharge-defense-remote",
        result = "basic-electric-discharge-defense-remote",
        type = "recipe"
      },
      ["basic-exoskeleton-equipment"] = {
        enabled = "false",
        energy_required = 10,
        ingredients = { { "processing-unit", 10 }, { "electric-engine-unit", 30 }, { "steel-plate", 20 } },
        name = "basic-exoskeleton-equipment",
        result = "basic-exoskeleton-equipment",
        type = "recipe"
      },
      ["basic-grenade"] = {
        enabled = "false",
        energy_required = 8,
        ingredients = { { "iron-plate", 5 }, { "coal", 10 } },
        name = "basic-grenade",
        result = "basic-grenade",
        type = "recipe"
      },
      ["basic-inserter"] = {
        ingredients = { { "electronic-circuit", 1 }, { "iron-gear-wheel", 1 }, { "iron-plate", 1 } },
        name = "basic-inserter",
        result = "basic-inserter",
        type = "recipe"
      },
      ["basic-laser-defense-equipment"] = {
        enabled = "false",
        energy_required = 10,
        ingredients = { { "processing-unit", 1 }, { "steel-plate", 5 }, { "laser-turret", 5 } },
        name = "basic-laser-defense-equipment",
        result = "basic-laser-defense-equipment",
        type = "recipe"
      },
      ["basic-mining-drill"] = {
        energy_required = 2,
        ingredients = { { "electronic-circuit", 3 }, { "iron-gear-wheel", 5 }, { "iron-plate", 10 } },
        name = "basic-mining-drill",
        result = "basic-mining-drill",
        type = "recipe"
      },
      ["basic-modular-armor"] = {
        enabled = "false",
        energy_required = 15,
        ingredients = { { "advanced-circuit", 30 }, { "processing-unit", 5 }, { "steel-plate", 50 } },
        name = "basic-modular-armor",
        result = "basic-modular-armor",
        type = "recipe"
      },
      ["basic-oil-processing"] = {
        category = "oil-processing",
        enabled = "false",
        energy_required = 5,
        icon = "__base__/graphics/icons/fluid/basic-oil-processing.png",
        ingredients = { {
            amount = 10,
            name = "crude-oil",
            type = "fluid"
          } },
        name = "basic-oil-processing",
        order = "a[oil-processing]-a[basic-oil-processing]",
        results = { {
            amount = 3,
            name = "heavy-oil",
            type = "fluid"
          }, {
            amount = 3,
            name = "light-oil",
            type = "fluid"
          }, {
            amount = 4,
            name = "petroleum-gas",
            type = "fluid"
          } },
        subgroup = "fluid",
        type = "recipe"
      },
      ["basic-splitter"] = {
        enabled = "false",
        energy_required = 1,
        ingredients = { { "electronic-circuit", 5 }, { "iron-plate", 5 }, { "basic-transport-belt", 4 } },
        name = "basic-splitter",
        result = "basic-splitter",
        type = "recipe"
      },
      ["basic-transport-belt"] = {
        ingredients = { { "iron-plate", 1 }, { "iron-gear-wheel", 1 } },
        name = "basic-transport-belt",
        result = "basic-transport-belt",
        result_count = 2,
        type = "recipe"
      },
      ["basic-transport-belt-to-ground"] = {
        enabled = "false",
        energy_required = 1,
        ingredients = { { "iron-plate", 10 }, { "basic-transport-belt", 5 } },
        name = "basic-transport-belt-to-ground",
        result = "basic-transport-belt-to-ground",
        result_count = 2,
        type = "recipe"
      },
      battery = {
        category = "chemistry",
        enabled = "false",
        energy_required = 5,
        ingredients = { {
            amount = 2,
            name = "sulfuric-acid",
            type = "fluid"
          }, { "iron-plate", 1 }, { "copper-plate", 1 } },
        name = "battery",
        result = "battery",
        type = "recipe"
      },
      ["battery-equipment"] = {
        enabled = "false",
        energy_required = 10,
        ingredients = { { "battery", 5 }, { "steel-plate", 10 } },
        name = "battery-equipment",
        result = "battery-equipment",
        type = "recipe"
      },
      ["battery-mk2-equipment"] = {
        enabled = "false",
        energy_required = 10,
        ingredients = { { "battery-equipment", 10 }, { "processing-unit", 20 } },
        name = "battery-mk2-equipment",
        result = "battery-mk2-equipment",
        type = "recipe"
      },
      ["big-electric-pole"] = {
        enabled = "false",
        ingredients = { { "steel-plate", 5 }, { "copper-plate", 5 } },
        name = "big-electric-pole",
        result = "big-electric-pole",
        type = "recipe"
      },
      blueprint = {
        enabled = "false",
        energy_required = 1,
        ingredients = { { "advanced-circuit", 1 } },
        name = "blueprint",
        result = "blueprint",
        type = "recipe"
      },
      boiler = {
        ingredients = { { "stone-furnace", 1 }, { "pipe", 1 } },
        name = "boiler",
        result = "boiler",
        type = "recipe"
      },
      ["burner-inserter"] = {
        ingredients = { { "iron-plate", 1 }, { "iron-gear-wheel", 1 } },
        name = "burner-inserter",
        result = "burner-inserter",
        type = "recipe"
      },
      ["burner-mining-drill"] = {
        energy_required = 2,
        ingredients = { { "iron-gear-wheel", 3 }, { "stone-furnace", 1 }, { "iron-plate", 3 } },
        name = "burner-mining-drill",
        result = "burner-mining-drill",
        type = "recipe"
      },
      ["cannon-shell"] = {
        enabled = "false",
        energy_required = 8,
        ingredients = { { "steel-plate", 4 }, { "plastic-bar", 2 }, { "explosives", 1 } },
        name = "cannon-shell",
        result = "cannon-shell",
        type = "recipe"
      },
      car = {
        enabled = "false",
        ingredients = { { "engine-unit", 8 }, { "iron-plate", 20 }, { "steel-plate", 5 } },
        name = "car",
        result = "car",
        type = "recipe"
      },
      ["cargo-wagon"] = {
        enabled = "false",
        ingredients = { { "iron-gear-wheel", 10 }, { "iron-plate", 20 }, { "steel-plate", 5 } },
        name = "cargo-wagon",
        result = "cargo-wagon",
        type = "recipe"
      },
      ["chemical-plant"] = {
        enabled = "false",
        energy_required = 10,
        ingredients = { { "steel-plate", 5 }, { "iron-gear-wheel", 5 }, { "electronic-circuit", 5 }, { "pipe", 5 } },
        name = "chemical-plant",
        result = "chemical-plant",
        type = "recipe"
      },
      ["combat-shotgun"] = {
        enabled = "false",
        energy_required = 8,
        ingredients = { { "steel-plate", 15 }, { "iron-gear-wheel", 5 }, { "copper-plate", 10 }, { "wood", 10 } },
        name = "combat-shotgun",
        result = "combat-shotgun",
        type = "recipe"
      },
      ["construction-robot"] = {
        enabled = "false",
        ingredients = { { "flying-robot-frame", 1 }, { "electronic-circuit", 2 } },
        name = "construction-robot",
        result = "construction-robot",
        type = "recipe"
      },
      ["copper-cable"] = {
        ingredients = { { "copper-plate", 1 } },
        name = "copper-cable",
        result = "copper-cable",
        result_count = 2,
        type = "recipe"
      },
      ["copper-plate"] = {
        category = "smelting",
        energy_required = 3.5,
        ingredients = { { "copper-ore", 1 } },
        name = "copper-plate",
        result = "copper-plate",
        type = "recipe"
      },
      ["curved-rail"] = {
        enabled = "false",
        ingredients = { { "stone", 4 }, { "iron-stick", 4 }, { "steel-plate", 4 } },
        name = "curved-rail",
        result = "curved-rail",
        result_count = 2,
        type = "recipe"
      },
      ["deconstruction-planner"] = {
        enabled = "false",
        energy_required = 1,
        ingredients = { { "advanced-circuit", 1 } },
        name = "deconstruction-planner",
        result = "deconstruction-planner",
        type = "recipe"
      },
      ["defender-capsule"] = {
        enabled = "false",
        energy_required = 8,
        ingredients = { { "piercing-bullet-magazine", 1 }, { "electronic-circuit", 2 }, { "iron-gear-wheel", 3 } },
        name = "defender-capsule",
        result = "defender-capsule",
        type = "recipe"
      },
      ["destroyer-capsule"] = {
        enabled = "false",
        energy_required = 15,
        ingredients = { { "distractor-capsule", 4 }, { "speed-module", 1 } },
        name = "destroyer-capsule",
        result = "destroyer-capsule",
        type = "recipe"
      },
      ["diesel-locomotive"] = {
        enabled = "false",
        ingredients = { { "engine-unit", 15 }, { "electronic-circuit", 5 }, { "steel-plate", 10 } },
        name = "diesel-locomotive",
        result = "diesel-locomotive",
        type = "recipe"
      },
      ["distractor-capsule"] = {
        enabled = "false",
        energy_required = 15,
        ingredients = { { "defender-capsule", 4 }, { "advanced-circuit", 3 } },
        name = "distractor-capsule",
        result = "distractor-capsule",
        type = "recipe"
      },
      ["effectivity-module"] = {
        enabled = "false",
        energy_required = 15,
        ingredients = { { "advanced-circuit", 5 }, { "electronic-circuit", 5 } },
        name = "effectivity-module",
        result = "effectivity-module",
        type = "recipe"
      },
      ["effectivity-module-2"] = {
        enabled = "false",
        energy_required = 30,
        ingredients = { { "effectivity-module", 4 }, { "advanced-circuit", 5 }, { "processing-unit", 5 } },
        name = "effectivity-module-2",
        result = "effectivity-module-2",
        type = "recipe"
      },
      ["effectivity-module-3"] = {
        enabled = "false",
        energy_required = 60,
        ingredients = { { "effectivity-module-2", 5 }, { "advanced-circuit", 5 }, { "processing-unit", 5 }, { "alien-artifact", 1 } },
        name = "effectivity-module-3",
        result = "effectivity-module-3",
        type = "recipe"
      },
      ["electric-engine-unit"] = {
        category = "crafting-with-fluid",
        enabled = "false",
        energy_required = 20,
        ingredients = { { "engine-unit", 1 }, {
            amount = 2,
            name = "lubricant",
            type = "fluid"
          }, { "electronic-circuit", 2 } },
        name = "electric-engine-unit",
        result = "electric-engine-unit",
        type = "recipe"
      },
      ["electric-furnace"] = {
        enabled = "false",
        energy_required = 5,
        ingredients = { { "steel-plate", 15 }, { "advanced-circuit", 5 }, { "stone-brick", 10 } },
        name = "electric-furnace",
        result = "electric-furnace",
        type = "recipe"
      },
      ["electronic-circuit"] = {
        ingredients = { { "iron-plate", 1 }, { "copper-cable", 3 } },
        name = "electronic-circuit",
        result = "electronic-circuit",
        type = "recipe"
      },
      ["empty-barrel"] = {
        category = "crafting",
        enabled = "false",
        energy_required = 1,
        ingredients = { {
            amount = 1,
            name = "steel-plate",
            type = "item"
          } },
        name = "empty-barrel",
        results = { {
            amount = 1,
            name = "empty-barrel",
            type = "item"
          } },
        subgroup = "barrel",
        type = "recipe"
      },
      ["empty-crude-oil-barrel"] = {
        category = "crafting-with-fluid",
        enabled = "false",
        energy_required = 1,
        icon = "__base__/graphics/icons/fluid/empty-crude-oil-barrel.png",
        ingredients = { {
            amount = 1,
            name = "crude-oil-barrel",
            type = "item"
          } },
        name = "empty-crude-oil-barrel",
        order = "c[empty-crude-oil-barrel]",
        results = { {
            amount = 25,
            name = "crude-oil",
            type = "fluid"
          }, {
            amount = 1,
            name = "empty-barrel",
            type = "item"
          } },
        subgroup = "barrel",
        type = "recipe"
      },
      ["energy-shield-equipment"] = {
        enabled = "false",
        energy_required = 10,
        ingredients = { { "advanced-circuit", 5 }, { "steel-plate", 10 } },
        name = "energy-shield-equipment",
        result = "energy-shield-equipment",
        type = "recipe"
      },
      ["energy-shield-mk2-equipment"] = {
        enabled = "false",
        energy_required = 10,
        ingredients = { { "energy-shield-equipment", 10 }, { "processing-unit", 10 } },
        name = "energy-shield-mk2-equipment",
        result = "energy-shield-mk2-equipment",
        type = "recipe"
      },
      ["engine-unit"] = {
        category = "advanced-crafting",
        enabled = "false",
        energy_required = 20,
        ingredients = { { "steel-plate", 1 }, { "iron-gear-wheel", 1 }, { "pipe", 2 } },
        name = "engine-unit",
        result = "engine-unit",
        type = "recipe"
      },
      ["explosive-rocket"] = {
        enabled = "false",
        energy_required = 8,
        ingredients = { { "rocket", 1 }, { "explosives", 5 } },
        name = "explosive-rocket",
        result = "explosive-rocket",
        type = "recipe"
      },
      explosives = {
        category = "chemistry",
        enabled = "false",
        energy_required = 5,
        ingredients = { {
            amount = 1,
            name = "sulfur",
            type = "item"
          }, {
            amount = 1,
            name = "coal",
            type = "item"
          }, {
            amount = 1,
            name = "water",
            type = "fluid"
          } },
        name = "explosives",
        result = "explosives",
        type = "recipe"
      },
      ["express-splitter"] = {
        category = "crafting-with-fluid",
        enabled = "false",
        energy_required = 2,
        ingredients = { { "fast-splitter", 1 }, { "iron-gear-wheel", 10 }, { "advanced-circuit", 10 }, {
            amount = 8,
            name = "lubricant",
            type = "fluid"
          } },
        name = "express-splitter",
        result = "express-splitter",
        type = "recipe"
      },
      ["express-transport-belt"] = {
        category = "crafting-with-fluid",
        enabled = "false",
        ingredients = { { "iron-gear-wheel", 5 }, { "fast-transport-belt", 1 }, {
            amount = 2,
            name = "lubricant",
            type = "fluid"
          } },
        name = "express-transport-belt",
        result = "express-transport-belt",
        type = "recipe"
      },
      ["express-transport-belt-to-ground"] = {
        enabled = "false",
        ingredients = { { "iron-gear-wheel", 40 }, { "fast-transport-belt-to-ground", 2 } },
        name = "express-transport-belt-to-ground",
        result = "express-transport-belt-to-ground",
        result_count = 2,
        type = "recipe"
      },
      ["fast-inserter"] = {
        enabled = "false",
        ingredients = { { "electronic-circuit", 2 }, { "iron-plate", 2 }, { "basic-inserter", 1 } },
        name = "fast-inserter",
        result = "fast-inserter",
        type = "recipe"
      },
      ["fast-splitter"] = {
        enabled = "false",
        energy_required = 2,
        ingredients = { { "basic-splitter", 1 }, { "iron-gear-wheel", 10 }, { "electronic-circuit", 10 } },
        name = "fast-splitter",
        result = "fast-splitter",
        type = "recipe"
      },
      ["fast-transport-belt"] = {
        enabled = "false",
        ingredients = { { "iron-gear-wheel", 5 }, { "basic-transport-belt", 1 } },
        name = "fast-transport-belt",
        result = "fast-transport-belt",
        type = "recipe"
      },
      ["fast-transport-belt-to-ground"] = {
        enabled = "false",
        ingredients = { { "iron-gear-wheel", 20 }, { "basic-transport-belt-to-ground", 2 } },
        name = "fast-transport-belt-to-ground",
        result = "fast-transport-belt-to-ground",
        result_count = 2,
        type = "recipe"
      },
      ["fill-crude-oil-barrel"] = {
        category = "crafting-with-fluid",
        enabled = "false",
        energy_required = 1,
        icon = "__base__/graphics/icons/fluid/fill-crude-oil-barrel.png",
        ingredients = { {
            amount = 25,
            name = "crude-oil",
            type = "fluid"
          }, {
            amount = 1,
            name = "empty-barrel",
            type = "item"
          } },
        name = "fill-crude-oil-barrel",
        order = "b[fill-crude-oil-barrel]",
        results = { {
            amount = 1,
            name = "crude-oil-barrel",
            type = "item"
          } },
        subgroup = "barrel",
        type = "recipe"
      },
      ["flame-thrower"] = {
        enabled = "false",
        energy_required = 10,
        ingredients = { { "steel-plate", 5 }, { "iron-gear-wheel", 10 } },
        name = "flame-thrower",
        result = "flame-thrower",
        type = "recipe"
      },
      ["flame-thrower-ammo"] = {
        category = "chemistry",
        enabled = "false",
        energy_required = 3,
        ingredients = { {
            amount = 5,
            name = "iron-plate",
            type = "item"
          }, {
            amount = 2.5,
            name = "light-oil",
            type = "fluid"
          }, {
            amount = 2.5,
            name = "heavy-oil",
            type = "fluid"
          } },
        name = "flame-thrower-ammo",
        result = "flame-thrower-ammo",
        type = "recipe"
      },
      ["flying-robot-frame"] = {
        enabled = "false",
        energy_required = 20,
        ingredients = { { "electric-engine-unit", 1 }, { "battery", 2 }, { "steel-plate", 1 }, { "electronic-circuit", 3 } },
        name = "flying-robot-frame",
        result = "flying-robot-frame",
        type = "recipe"
      },
      ["fusion-reactor-equipment"] = {
        enabled = "false",
        energy_required = 10,
        ingredients = { { "processing-unit", 100 }, { "alien-artifact", 30 } },
        name = "fusion-reactor-equipment",
        result = "fusion-reactor-equipment",
        type = "recipe"
      },
      gate = {
        enabled = "false",
        ingredients = { { "stone-wall", 1 }, { "steel-plate", 2 }, { "electronic-circuit", 2 } },
        name = "gate",
        result = "gate",
        type = "recipe"
      },
      ["green-wire"] = {
        enabled = "false",
        ingredients = { { "electronic-circuit", 1 }, { "copper-cable", 1 } },
        name = "green-wire",
        result = "green-wire",
        type = "recipe"
      },
      ["gun-turret"] = {
        enabled = "false",
        energy_required = 5,
        ingredients = { { "iron-gear-wheel", 5 }, { "copper-plate", 5 }, { "iron-plate", 10 } },
        name = "gun-turret",
        result = "gun-turret",
        type = "recipe"
      },
      ["heavy-armor"] = {
        enabled = "false",
        energy_required = 8,
        ingredients = { { "copper-plate", 100 }, { "steel-plate", 50 } },
        name = "heavy-armor",
        result = "heavy-armor",
        type = "recipe"
      },
      ["heavy-oil-cracking"] = {
        category = "chemistry",
        enabled = "false",
        energy_required = 5,
        icon = "__base__/graphics/icons/fluid/heavy-oil-cracking.png",
        ingredients = { {
            amount = 4,
            name = "heavy-oil",
            type = "fluid"
          }, {
            amount = 3,
            name = "water",
            type = "fluid"
          } },
        main_product = "",
        name = "heavy-oil-cracking",
        order = "b[fluid-chemistry]-a[heavy-oil-cracking]",
        results = { {
            amount = 3,
            name = "light-oil",
            type = "fluid"
          } },
        subgroup = "fluid",
        type = "recipe"
      },
      ["iron-axe"] = {
        ingredients = { { "iron-stick", 2 }, { "iron-plate", 3 } },
        name = "iron-axe",
        result = "iron-axe",
        type = "recipe"
      },
      ["iron-chest"] = {
        enabled = "true",
        ingredients = { { "iron-plate", 8 } },
        name = "iron-chest",
        result = "iron-chest",
        type = "recipe"
      },
      ["iron-gear-wheel"] = {
        ingredients = { { "iron-plate", 2 } },
        name = "iron-gear-wheel",
        result = "iron-gear-wheel",
        type = "recipe"
      },
      ["iron-plate"] = {
        category = "smelting",
        energy_required = 3.5,
        ingredients = { { "iron-ore", 1 } },
        name = "iron-plate",
        result = "iron-plate",
        type = "recipe"
      },
      ["iron-stick"] = {
        ingredients = { { "iron-plate", 1 } },
        name = "iron-stick",
        result = "iron-stick",
        result_count = 2,
        type = "recipe"
      },
      lab = {
        energy_required = 5,
        ingredients = { { "electronic-circuit", 10 }, { "iron-gear-wheel", 10 }, { "basic-transport-belt", 4 } },
        name = "lab",
        result = "lab",
        type = "recipe"
      },
      ["land-mine"] = {
        enabled = "false",
        energy_required = 5,
        ingredients = { { "steel-plate", 1 }, { "explosives", 2 } },
        name = "land-mine",
        result = "land-mine",
        result_count = 4,
        type = "recipe"
      },
      ["laser-turret"] = {
        enabled = "false",
        energy_required = 5,
        ingredients = { { "steel-plate", 5 }, { "electronic-circuit", 5 }, { "battery", 3 } },
        name = "laser-turret",
        result = "laser-turret",
        type = "recipe"
      },
      ["light-oil-cracking"] = {
        category = "chemistry",
        enabled = "false",
        energy_required = 5,
        icon = "__base__/graphics/icons/fluid/light-oil-cracking.png",
        ingredients = { {
            amount = 3,
            name = "light-oil",
            type = "fluid"
          }, {
            amount = 3,
            name = "water",
            type = "fluid"
          } },
        main_product = "",
        name = "light-oil-cracking",
        order = "b[fluid-chemistry]-b[light-oil-cracking]",
        results = { {
            amount = 2,
            name = "petroleum-gas",
            type = "fluid"
          } },
        subgroup = "fluid",
        type = "recipe"
      },
      ["logistic-chest-active-provider"] = {
        enabled = "false",
        ingredients = { { "smart-chest", 1 }, { "advanced-circuit", 1 } },
        name = "logistic-chest-active-provider",
        result = "logistic-chest-active-provider",
        type = "recipe"
      },
      ["logistic-chest-passive-provider"] = {
        enabled = "false",
        ingredients = { { "smart-chest", 1 }, { "advanced-circuit", 1 } },
        name = "logistic-chest-passive-provider",
        result = "logistic-chest-passive-provider",
        type = "recipe"
      },
      ["logistic-chest-requester"] = {
        enabled = "false",
        ingredients = { { "smart-chest", 1 }, { "advanced-circuit", 1 } },
        name = "logistic-chest-requester",
        result = "logistic-chest-requester",
        type = "recipe"
      },
      ["logistic-chest-storage"] = {
        enabled = "false",
        ingredients = { { "smart-chest", 1 }, { "advanced-circuit", 1 } },
        name = "logistic-chest-storage",
        result = "logistic-chest-storage",
        type = "recipe"
      },
      ["logistic-robot"] = {
        enabled = "false",
        ingredients = { { "flying-robot-frame", 1 }, { "advanced-circuit", 2 } },
        name = "logistic-robot",
        result = "logistic-robot",
        type = "recipe"
      },
      ["long-handed-inserter"] = {
        enabled = "false",
        ingredients = { { "iron-gear-wheel", 1 }, { "iron-plate", 1 }, { "basic-inserter", 1 } },
        name = "long-handed-inserter",
        result = "long-handed-inserter",
        type = "recipe"
      },
      lubricant = {
        category = "chemistry",
        enabled = "false",
        energy_required = 1,
        ingredients = { {
            amount = 1,
            name = "heavy-oil",
            type = "fluid"
          } },
        name = "lubricant",
        results = { {
            amount = 1,
            name = "lubricant",
            type = "fluid"
          } },
        type = "recipe"
      },
      ["medium-electric-pole"] = {
        enabled = "false",
        ingredients = { { "steel-plate", 2 }, { "copper-plate", 2 } },
        name = "medium-electric-pole",
        result = "medium-electric-pole",
        type = "recipe"
      },
      ["night-vision-equipment"] = {
        enabled = "false",
        energy_required = 10,
        ingredients = { { "advanced-circuit", 5 }, { "steel-plate", 10 } },
        name = "night-vision-equipment",
        result = "night-vision-equipment",
        type = "recipe"
      },
      ["offshore-pump"] = {
        ingredients = { { "electronic-circuit", 2 }, { "pipe", 1 }, { "iron-gear-wheel", 1 } },
        name = "offshore-pump",
        result = "offshore-pump",
        type = "recipe"
      },
      ["oil-refinery"] = {
        enabled = "false",
        energy_required = 20,
        ingredients = { { "steel-plate", 15 }, { "iron-gear-wheel", 10 }, { "stone-brick", 10 }, { "electronic-circuit", 10 }, { "pipe", 10 } },
        name = "oil-refinery",
        result = "oil-refinery",
        type = "recipe"
      },
      ["piercing-bullet-magazine"] = {
        enabled = "false",
        energy_required = 3,
        ingredients = { { "copper-plate", 5 }, { "steel-plate", 1 } },
        name = "piercing-bullet-magazine",
        result = "piercing-bullet-magazine",
        type = "recipe"
      },
      ["piercing-shotgun-shell"] = {
        enabled = "false",
        energy_required = 8,
        ingredients = { { "copper-plate", 2 }, { "steel-plate", 2 } },
        name = "piercing-shotgun-shell",
        result = "piercing-shotgun-shell",
        type = "recipe"
      },
      pipe = {
        ingredients = { { "iron-plate", 1 } },
        name = "pipe",
        result = "pipe",
        type = "recipe"
      },
      ["pipe-to-ground"] = {
        ingredients = { { "pipe", 10 }, { "iron-plate", 5 } },
        name = "pipe-to-ground",
        result = "pipe-to-ground",
        result_count = 2,
        type = "recipe"
      },
      pistol = {
        energy_required = 1,
        ingredients = { { "copper-plate", 5 }, { "iron-plate", 5 } },
        name = "pistol",
        result = "pistol",
        type = "recipe"
      },
      ["plastic-bar"] = {
        category = "chemistry",
        enabled = "false",
        energy_required = 1,
        ingredients = { {
            amount = 3,
            name = "petroleum-gas",
            type = "fluid"
          }, {
            amount = 1,
            name = "coal",
            type = "item"
          } },
        name = "plastic-bar",
        results = { {
            amount = 2,
            name = "plastic-bar",
            type = "item"
          } },
        type = "recipe"
      },
      ["player-port"] = {
        enabled = "false",
        ingredients = { { "electronic-circuit", 10 }, { "iron-gear-wheel", 5 }, { "iron-plate", 1 } },
        name = "player-port",
        result = "player-port",
        type = "recipe"
      },
      ["poison-capsule"] = {
        enabled = "false",
        energy_required = 8,
        ingredients = { { "steel-plate", 3 }, { "electronic-circuit", 3 }, { "coal", 10 } },
        name = "poison-capsule",
        result = "poison-capsule",
        type = "recipe"
      },
      ["power-armor"] = {
        enabled = "false",
        energy_required = 20,
        ingredients = { { "processing-unit", 100 }, { "electric-engine-unit", 30 }, { "steel-plate", 100 }, { "alien-artifact", 10 } },
        name = "power-armor",
        result = "power-armor",
        type = "recipe"
      },
      ["power-armor-mk2"] = {
        enabled = "false",
        energy_required = 25,
        ingredients = { { "effectivity-module-3", 5 }, { "speed-module-3", 5 }, { "processing-unit", 200 }, { "steel-plate", 50 }, { "alien-artifact", 50 } },
        name = "power-armor-mk2",
        result = "power-armor-mk2",
        type = "recipe"
      },
      ["processing-unit"] = {
        category = "crafting-with-fluid",
        enabled = "false",
        energy_required = 15,
        ingredients = { { "electronic-circuit", 20 }, { "advanced-circuit", 2 }, {
            amount = 0.5,
            name = "sulfuric-acid",
            type = "fluid"
          } },
        name = "processing-unit",
        result = "processing-unit",
        type = "recipe"
      },
      ["productivity-module"] = {
        enabled = "false",
        energy_required = 15,
        ingredients = { { "advanced-circuit", 5 }, { "electronic-circuit", 5 } },
        name = "productivity-module",
        result = "productivity-module",
        type = "recipe"
      },
      ["productivity-module-2"] = {
        enabled = "false",
        energy_required = 30,
        ingredients = { { "productivity-module", 4 }, { "advanced-circuit", 5 }, { "processing-unit", 5 } },
        name = "productivity-module-2",
        result = "productivity-module-2",
        type = "recipe"
      },
      ["productivity-module-3"] = {
        enabled = "false",
        energy_required = 60,
        ingredients = { { "productivity-module-2", 5 }, { "advanced-circuit", 5 }, { "processing-unit", 5 }, { "alien-artifact", 1 } },
        name = "productivity-module-3",
        result = "productivity-module-3",
        type = "recipe"
      },
      pumpjack = {
        enabled = "false",
        energy_required = 20,
        ingredients = { { "steel-plate", 15 }, { "iron-gear-wheel", 10 }, { "electronic-circuit", 10 }, { "pipe", 10 } },
        name = "pumpjack",
        result = "pumpjack",
        type = "recipe"
      },
      radar = {
        ingredients = { { "electronic-circuit", 5 }, { "iron-gear-wheel", 5 }, { "iron-plate", 10 } },
        name = "radar",
        result = "radar",
        type = "recipe"
      },
      ["rail-signal"] = {
        enabled = "false",
        ingredients = { { "electronic-circuit", 1 }, { "iron-plate", 5 } },
        name = "rail-signal",
        result = "rail-signal",
        type = "recipe"
      },
      railgun = {
        enabled = "false",
        energy_required = 8,
        ingredients = { { "steel-plate", 15 }, { "copper-plate", 15 }, { "electronic-circuit", 10 }, { "advanced-circuit", 5 } },
        name = "railgun",
        result = "railgun",
        type = "recipe"
      },
      ["railgun-dart"] = {
        enabled = "false",
        energy_required = 8,
        ingredients = { { "steel-plate", 5 }, { "electronic-circuit", 5 } },
        name = "railgun-dart",
        result = "railgun-dart",
        type = "recipe"
      },
      ["red-wire"] = {
        enabled = "false",
        ingredients = { { "electronic-circuit", 1 }, { "copper-cable", 1 } },
        name = "red-wire",
        result = "red-wire",
        type = "recipe"
      },
      ["repair-pack"] = {
        ingredients = { { "electronic-circuit", 1 }, { "iron-gear-wheel", 1 } },
        name = "repair-pack",
        result = "repair-pack",
        type = "recipe"
      },
      roboport = {
        enabled = "false",
        energy_required = 15,
        ingredients = { { "steel-plate", 45 }, { "iron-gear-wheel", 45 }, { "advanced-circuit", 45 } },
        name = "roboport",
        result = "roboport",
        type = "recipe"
      },
      rocket = {
        enabled = "false",
        energy_required = 8,
        ingredients = { { "electronic-circuit", 1 }, { "explosives", 2 }, { "iron-plate", 2 } },
        name = "rocket",
        result = "rocket",
        type = "recipe"
      },
      ["rocket-defense"] = {
        enabled = "false",
        ingredients = { { "rocket", 100 }, { "advanced-circuit", 150 }, { "processing-unit", 100 }, { "speed-module-3", 50 }, { "productivity-module-3", 50 } },
        name = "rocket-defense",
        result = "rocket-defense",
        type = "recipe"
      },
      ["rocket-launcher"] = {
        enabled = "false",
        energy_required = 5,
        ingredients = { { "iron-plate", 5 }, { "iron-gear-wheel", 5 }, { "electronic-circuit", 5 } },
        name = "rocket-launcher",
        result = "rocket-launcher",
        type = "recipe"
      },
      ["science-pack-1"] = {
        energy_required = 5,
        ingredients = { { "copper-plate", 1 }, { "iron-gear-wheel", 1 } },
        name = "science-pack-1",
        result = "science-pack-1",
        type = "recipe"
      },
      ["science-pack-2"] = {
        energy_required = 6,
        ingredients = { { "basic-inserter", 1 }, { "basic-transport-belt", 1 } },
        name = "science-pack-2",
        result = "science-pack-2",
        type = "recipe"
      },
      ["science-pack-3"] = {
        enabled = "false",
        energy_required = 12,
        ingredients = { { "battery", 1 }, { "advanced-circuit", 1 }, { "smart-inserter", 1 }, { "steel-plate", 1 } },
        name = "science-pack-3",
        result = "science-pack-3",
        type = "recipe"
      },
      shotgun = {
        enabled = "false",
        energy_required = 4,
        ingredients = { { "iron-plate", 15 }, { "iron-gear-wheel", 5 }, { "copper-plate", 10 }, { "wood", 5 } },
        name = "shotgun",
        result = "shotgun",
        type = "recipe"
      },
      ["shotgun-shell"] = {
        enabled = "false",
        energy_required = 3,
        ingredients = { { "copper-plate", 2 }, { "iron-plate", 2 } },
        name = "shotgun-shell",
        result = "shotgun-shell",
        type = "recipe"
      },
      ["slowdown-capsule"] = {
        enabled = "false",
        energy_required = 8,
        ingredients = { { "steel-plate", 2 }, { "electronic-circuit", 2 }, { "coal", 5 } },
        name = "slowdown-capsule",
        result = "slowdown-capsule",
        type = "recipe"
      },
      ["small-electric-pole"] = {
        ingredients = { { "wood", 2 }, { "copper-cable", 2 } },
        name = "small-electric-pole",
        result = "small-electric-pole",
        result_count = 2,
        type = "recipe"
      },
      ["small-lamp"] = {
        enabled = "false",
        ingredients = { { "electronic-circuit", 1 }, { "iron-stick", 3 }, { "iron-plate", 1 } },
        name = "small-lamp",
        result = "small-lamp",
        type = "recipe"
      },
      ["small-plane"] = {
        category = "crafting",
        enabled = "false",
        energy_required = 30,
        ingredients = { { "plastic-bar", 100 }, { "advanced-circuit", 200 }, { "electric-engine-unit", 20 }, { "battery", 100 } },
        name = "small-plane",
        result = "small-plane",
        type = "recipe"
      },
      ["small-pump"] = {
        enabled = "false",
        energy_required = 2,
        ingredients = { { "electric-engine-unit", 1 }, { "steel-plate", 1 }, { "pipe", 1 } },
        name = "small-pump",
        result = "small-pump",
        type = "recipe"
      },
      ["smart-chest"] = {
        enabled = "false",
        ingredients = { { "steel-chest", 1 }, { "electronic-circuit", 3 } },
        name = "smart-chest",
        result = "smart-chest",
        type = "recipe"
      },
      ["smart-inserter"] = {
        enabled = "false",
        ingredients = { { "fast-inserter", 1 }, { "electronic-circuit", 4 } },
        name = "smart-inserter",
        result = "smart-inserter",
        type = "recipe"
      },
      ["solar-panel"] = {
        enabled = "false",
        energy_required = 10,
        ingredients = { { "steel-plate", 5 }, { "electronic-circuit", 15 }, { "copper-plate", 5 } },
        name = "solar-panel",
        result = "solar-panel",
        type = "recipe"
      },
      ["solar-panel-equipment"] = {
        enabled = "false",
        energy_required = 10,
        ingredients = { { "solar-panel", 5 }, { "processing-unit", 1 }, { "steel-plate", 5 } },
        name = "solar-panel-equipment",
        result = "solar-panel-equipment",
        type = "recipe"
      },
      ["solid-fuel-from-heavy-oil"] = {
        category = "chemistry",
        enabled = "false",
        energy_required = 3,
        icon = "__base__/graphics/icons/solid-fuel-from-heavy-oil.png",
        ingredients = { {
            amount = 2,
            name = "heavy-oil",
            type = "fluid"
          } },
        name = "solid-fuel-from-heavy-oil",
        order = "b[fluid-chemistry]-e[solid-fuel-from-heavy-oil]",
        results = { {
            amount = 1,
            name = "solid-fuel",
            type = "item"
          } },
        subgroup = "fluid",
        type = "recipe"
      },
      ["solid-fuel-from-light-oil"] = {
        category = "chemistry",
        enabled = "false",
        energy_required = 3,
        icon = "__base__/graphics/icons/solid-fuel-from-light-oil.png",
        ingredients = { {
            amount = 1,
            name = "light-oil",
            type = "fluid"
          } },
        name = "solid-fuel-from-light-oil",
        order = "b[fluid-chemistry]-c[solid-fuel-from-light-oil]",
        results = { {
            amount = 1,
            name = "solid-fuel",
            type = "item"
          } },
        subgroup = "fluid",
        type = "recipe"
      },
      ["solid-fuel-from-petroleum-gas"] = {
        category = "chemistry",
        enabled = "false",
        energy_required = 3,
        icon = "__base__/graphics/icons/solid-fuel-from-petroleum-gas.png",
        ingredients = { {
            amount = 2,
            name = "petroleum-gas",
            type = "fluid"
          } },
        name = "solid-fuel-from-petroleum-gas",
        order = "b[fluid-chemistry]-d[solid-fuel-from-petroleum-gas]",
        results = { {
            amount = 1,
            name = "solid-fuel",
            type = "item"
          } },
        subgroup = "fluid",
        type = "recipe"
      },
      ["speed-module"] = {
        enabled = "false",
        energy_required = 15,
        ingredients = { { "advanced-circuit", 5 }, { "electronic-circuit", 5 } },
        name = "speed-module",
        result = "speed-module",
        type = "recipe"
      },
      ["speed-module-2"] = {
        enabled = "false",
        energy_required = 30,
        ingredients = { { "speed-module", 4 }, { "processing-unit", 5 }, { "advanced-circuit", 5 } },
        name = "speed-module-2",
        result = "speed-module-2",
        type = "recipe"
      },
      ["speed-module-3"] = {
        enabled = "false",
        energy_required = 60,
        ingredients = { { "speed-module-2", 4 }, { "advanced-circuit", 5 }, { "processing-unit", 5 }, { "alien-artifact", 1 } },
        name = "speed-module-3",
        result = "speed-module-3",
        type = "recipe"
      },
      ["steam-engine"] = {
        ingredients = { { "iron-gear-wheel", 5 }, { "pipe", 5 }, { "iron-plate", 5 } },
        name = "steam-engine",
        result = "steam-engine",
        type = "recipe"
      },
      ["steel-axe"] = {
        enabled = "false",
        ingredients = { { "steel-plate", 5 }, { "iron-stick", 2 } },
        name = "steel-axe",
        result = "steel-axe",
        type = "recipe"
      },
      ["steel-chest"] = {
        enabled = "false",
        ingredients = { { "steel-plate", 8 } },
        name = "steel-chest",
        result = "steel-chest",
        type = "recipe"
      },
      ["steel-furnace"] = {
        enabled = "false",
        energy_required = 3,
        ingredients = { { "steel-plate", 8 }, { "stone-brick", 10 } },
        name = "steel-furnace",
        result = "steel-furnace",
        type = "recipe"
      },
      ["steel-plate"] = {
        category = "smelting",
        enabled = "false",
        energy_required = 17.5,
        ingredients = { { "iron-plate", 5 } },
        name = "steel-plate",
        result = "steel-plate",
        type = "recipe"
      },
      ["stone-brick"] = {
        category = "smelting",
        enabled = "true",
        energy_required = 3.5,
        ingredients = { { "stone", 2 } },
        name = "stone-brick",
        result = "stone-brick",
        type = "recipe"
      },
      ["stone-furnace"] = {
        ingredients = { { "stone", 5 } },
        name = "stone-furnace",
        result = "stone-furnace",
        type = "recipe"
      },
      ["stone-wall"] = {
        enabled = "false",
        ingredients = { { "stone-brick", 5 } },
        name = "stone-wall",
        result = "stone-wall",
        type = "recipe"
      },
      ["storage-tank"] = {
        enabled = "false",
        energy_required = 3,
        ingredients = { { "iron-plate", 20 }, { "steel-plate", 5 } },
        name = "storage-tank",
        result = "storage-tank",
        type = "recipe"
      },
      ["straight-rail"] = {
        enabled = "false",
        ingredients = { { "stone", 1 }, { "iron-stick", 1 }, { "steel-plate", 1 } },
        name = "straight-rail",
        result = "straight-rail",
        result_count = 2,
        type = "recipe"
      },
      ["submachine-gun"] = {
        enabled = "false",
        energy_required = 3,
        ingredients = { { "iron-gear-wheel", 10 }, { "copper-plate", 5 }, { "iron-plate", 10 } },
        name = "submachine-gun",
        result = "submachine-gun",
        type = "recipe"
      },
      substation = {
        enabled = "false",
        ingredients = { { "steel-plate", 10 }, { "advanced-circuit", 5 }, { "copper-plate", 5 } },
        name = "substation",
        result = "substation",
        type = "recipe"
      },
      sulfur = {
        category = "chemistry",
        enabled = "false",
        energy_required = 1,
        ingredients = { {
            amount = 3,
            name = "petroleum-gas",
            type = "fluid"
          }, {
            amount = 3,
            name = "water",
            type = "fluid"
          } },
        name = "sulfur",
        results = { {
            amount = 2,
            name = "sulfur",
            type = "item"
          } },
        type = "recipe"
      },
      ["sulfuric-acid"] = {
        category = "chemistry",
        enabled = "false",
        energy_required = 1,
        ingredients = { {
            amount = 5,
            name = "sulfur",
            type = "item"
          }, {
            amount = 1,
            name = "iron-plate",
            type = "item"
          }, {
            amount = 10,
            name = "water",
            type = "fluid"
          } },
        name = "sulfuric-acid",
        results = { {
            amount = 5,
            name = "sulfuric-acid",
            type = "fluid"
          } },
        type = "recipe"
      },
      tank = {
        enabled = "false",
        ingredients = { { "engine-unit", 16 }, { "steel-plate", 50 }, { "iron-gear-wheel", 15 }, { "advanced-circuit", 5 } },
        name = "tank",
        result = "tank",
        type = "recipe"
      },
      ["train-stop"] = {
        enabled = "false",
        ingredients = { { "electronic-circuit", 5 }, { "iron-plate", 10 }, { "steel-plate", 3 } },
        name = "train-stop",
        result = "train-stop",
        type = "recipe"
      },
      wood = {
        ingredients = { { "raw-wood", 1 } },
        name = "wood",
        result = "wood",
        result_count = 2,
        type = "recipe"
      },
      ["wooden-chest"] = {
        ingredients = { { "wood", 4 } },
        name = "wooden-chest",
        result = "wooden-chest",
        type = "recipe"
      }
    },
    ["recipe-category"] = {
      ["advanced-crafting"] = {
        name = "advanced-crafting",
        type = "recipe-category"
      },
      chemistry = {
        name = "chemistry",
        type = "recipe-category"
      },
      crafting = {
        name = "crafting",
        type = "recipe-category"
      },
      ["crafting-with-fluid"] = {
        name = "crafting-with-fluid",
        type = "recipe-category"
      },
      ["oil-processing"] = {
        name = "oil-processing",
        type = "recipe-category"
      },
      smelting = {
        name = "smelting",
        type = "recipe-category"
      }
    },
    ["repair-tool"] = {
      ["repair-pack"] = {
        durability = 100,
        flags = { "goes-to-quickbar" },
        icon = "__base__/graphics/icons/repair-pack.png",
        name = "repair-pack",
        order = "b[repair]-a[repair-pack]",
        speed = 1,
        stack_size = 50,
        subgroup = "tool",
        type = "repair-tool"
      }
    },
    resource = {
      coal = {
        autoplace = {
          control = "coal",
          peaks = { {
              influence = 0.21,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 0,
              starting_area_weight_range = 0
            }, {
              influence = 0.65,
              noise_layer = "coal",
              noise_octaves_difference = -1.9,
              noise_persistence = 0.35,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 0,
              starting_area_weight_range = 0
            }, {
              influence = 0.32,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 1,
              starting_area_weight_range = 0
            }, {
              influence = 0.5,
              noise_layer = "coal",
              noise_octaves_difference = -2.3,
              noise_persistence = 0.4,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 1,
              starting_area_weight_range = 0
            }, {
              influence = -0.2,
              max_influence = 0,
              noise_layer = "copper-ore",
              noise_octaves_difference = -2.3,
              noise_persistence = 0.45
            }, {
              influence = -0.2,
              max_influence = 0,
              noise_layer = "iron-ore",
              noise_octaves_difference = -2.3,
              noise_persistence = 0.45
            }, {
              influence = -0.2,
              max_influence = 0,
              noise_layer = "stone",
              noise_octaves_difference = -3,
              noise_persistence = 0.45
            } },
          richness_base = 350,
          richness_multiplier = 13000,
          sharpness = 1,
          size_control_multiplier = 0.06
        },
        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        flags = { "placeable-neutral" },
        icon = "__base__/graphics/icons/coal.png",
        map_color = {
          b = 0,
          g = 0,
          r = 0
        },
        minable = {
          hardness = 0.9,
          mining_particle = "coal-particle",
          mining_time = 2,
          result = "coal"
        },
        name = "coal",
        order = "a-b-c",
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        stage_counts = { 1000, 600, 400, 200, 100, 50, 20, 1 },
        stages = {
          direction_count = 8,
          filename = "__base__/graphics/entity/coal/coal.png",
          frame_count = 4,
          height = 38,
          priority = "extra-high",
          width = 38
        },
        type = "resource"
      },
      ["copper-ore"] = {
        autoplace = {
          control = "copper-ore",
          peaks = { {
              influence = 0.2,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 0,
              starting_area_weight_range = 0
            }, {
              influence = 0.65,
              noise_layer = "copper-ore",
              noise_octaves_difference = -1.9,
              noise_persistence = 0.3,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 0,
              starting_area_weight_range = 0
            }, {
              influence = 0.3,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 1,
              starting_area_weight_range = 0
            }, {
              influence = 0.55,
              noise_layer = "copper-ore",
              noise_octaves_difference = -2.3,
              noise_persistence = 0.4,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 1,
              starting_area_weight_range = 0
            }, {
              influence = -0.2,
              max_influence = 0,
              noise_layer = "iron-ore",
              noise_octaves_difference = -2.3,
              noise_persistence = 0.45
            }, {
              influence = -0.2,
              max_influence = 0,
              noise_layer = "coal",
              noise_octaves_difference = -2.3,
              noise_persistence = 0.45
            }, {
              influence = -0.2,
              max_influence = 0,
              noise_layer = "stone",
              noise_octaves_difference = -3,
              noise_persistence = 0.45
            } },
          richness_base = 350,
          richness_multiplier = 13000,
          sharpness = 1,
          size_control_multiplier = 0.06
        },
        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        flags = { "placeable-neutral" },
        icon = "__base__/graphics/icons/copper-ore.png",
        map_color = {
          b = 0.215,
          g = 0.388,
          r = 0.803
        },
        minable = {
          hardness = 0.9,
          mining_particle = "copper-ore-particle",
          mining_time = 2,
          result = "copper-ore"
        },
        name = "copper-ore",
        order = "a-b-a",
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        stage_counts = { 1000, 600, 400, 200, 100, 50, 20, 1 },
        stages = {
          direction_count = 8,
          filename = "__base__/graphics/entity/copper-ore/copper-ore.png",
          frame_count = 4,
          height = 38,
          priority = "extra-high",
          width = 38
        },
        type = "resource"
      },
      ["crude-oil"] = {
        autoplace = {
          control = "crude-oil",
          max_probability = 0.04,
          peaks = { {
              influence = 0.1
            }, {
              influence = 0.105,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 1,
              starting_area_weight_range = 0
            }, {
              influence = 0.67,
              noise_layer = "crude-oil",
              noise_octaves_difference = -2.7,
              noise_persistence = 0.3
            } },
          richness_base = 5000,
          richness_multiplier = 150000,
          sharpness = 1,
          size_control_multiplier = 0.06
        },
        category = "basic-fluid",
        collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
        flags = { "placeable-neutral" },
        icon = "__base__/graphics/icons/crude-oil.png",
        infinite = true,
        map_color = {
          b = 0.8,
          g = 0.1,
          r = 0.8
        },
        map_grid = false,
        minable = {
          hardness = 1,
          mining_time = 1,
          results = { {
              amount_max = 1,
              amount_min = 1,
              name = "crude-oil",
              probability = 1,
              type = "fluid"
            } }
        },
        minimum = 750,
        name = "crude-oil",
        normal = 7500,
        order = "a-b-a",
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        stage_counts = { 0 },
        stages = {
          direction_count = 1,
          filename = "__base__/graphics/entity/crude-oil/crude-oil.png",
          frame_count = 4,
          height = 61,
          priority = "extra-high",
          width = 75
        },
        type = "resource"
      },
      ["iron-ore"] = {
        autoplace = {
          control = "iron-ore",
          peaks = { {
              influence = 0.2,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 0,
              starting_area_weight_range = 0
            }, {
              influence = 0.3,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 1,
              starting_area_weight_range = 0
            }, {
              influence = 0.65,
              noise_layer = "iron-ore",
              noise_octaves_difference = -1.9,
              noise_persistence = 0.3,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 0,
              starting_area_weight_range = 0
            }, {
              influence = 0.57,
              noise_layer = "iron-ore",
              noise_octaves_difference = -2.3,
              noise_persistence = 0.4,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 1,
              starting_area_weight_range = 0
            }, {
              influence = -0.2,
              max_influence = 0,
              noise_layer = "copper-ore",
              noise_octaves_difference = -2.3,
              noise_persistence = 0.45
            }, {
              influence = -0.2,
              max_influence = 0,
              noise_layer = "coal",
              noise_octaves_difference = -2.3,
              noise_persistence = 0.45
            }, {
              influence = -0.2,
              max_influence = 0,
              noise_layer = "stone",
              noise_octaves_difference = -3,
              noise_persistence = 0.45
            } },
          richness_base = 350,
          richness_multiplier = 15000,
          sharpness = 1,
          size_control_multiplier = 0.06
        },
        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        flags = { "placeable-neutral" },
        icon = "__base__/graphics/icons/iron-ore.png",
        map_color = {
          b = 0.427,
          g = 0.419,
          r = 0.337
        },
        minable = {
          hardness = 0.9,
          mining_particle = "iron-ore-particle",
          mining_time = 2,
          result = "iron-ore"
        },
        name = "iron-ore",
        order = "a-b-b",
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        stage_counts = { 1000, 600, 400, 200, 100, 50, 20, 1 },
        stages = {
          direction_count = 8,
          filename = "__base__/graphics/entity/iron-ore/iron-ore.png",
          frame_count = 4,
          height = 38,
          priority = "extra-high",
          width = 38
        },
        type = "resource"
      },
      stone = {
        autoplace = {
          control = "stone",
          peaks = { {
              influence = 0.2,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 0,
              starting_area_weight_range = 0
            }, {
              influence = 0.6,
              noise_layer = "stone",
              noise_octaves_difference = -3,
              noise_persistence = 0.45,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 0,
              starting_area_weight_range = 0
            }, {
              influence = 0.25,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 1,
              starting_area_weight_range = 0
            }, {
              influence = 0.6,
              noise_layer = "stone",
              noise_octaves_difference = -4,
              noise_persistence = 0.45,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 1,
              starting_area_weight_range = 0
            }, {
              influence = -0.2,
              max_influence = 0,
              noise_layer = "copper-ore",
              noise_octaves_difference = -2.3,
              noise_persistence = 0.45
            }, {
              influence = -0.2,
              max_influence = 0,
              noise_layer = "iron-ore",
              noise_octaves_difference = -2.3,
              noise_persistence = 0.45
            }, {
              influence = -0.2,
              max_influence = 0,
              noise_layer = "coal",
              noise_octaves_difference = -2.3,
              noise_persistence = 0.45
            } },
          richness_base = 250,
          richness_multiplier = 11000,
          sharpness = 1,
          size_control_multiplier = 0.06
        },
        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        flags = { "placeable-neutral" },
        icon = "__base__/graphics/icons/stone.png",
        map_color = {
          b = 0.317,
          g = 0.45,
          r = 0.478
        },
        minable = {
          hardness = 0.4,
          mining_particle = "stone-particle",
          mining_time = 2,
          result = "stone"
        },
        name = "stone",
        order = "a-b-d",
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        stage_counts = { 1000, 600, 400, 200, 100, 50, 20, 1 },
        stages = {
          direction_count = 8,
          filename = "__base__/graphics/entity/stone/stone.png",
          frame_count = 4,
          height = 38,
          priority = "extra-high",
          width = 38
        },
        type = "resource"
      }
    },
    ["resource-category"] = {
      ["basic-fluid"] = {
        name = "basic-fluid",
        type = "resource-category"
      },
      ["basic-solid"] = {
        name = "basic-solid",
        type = "resource-category"
      }
    },
    roboport = {
      roboport = {
        base = {
          filename = "__base__/graphics/entity/roboport/roboport-base.png",
          height = 135,
          shift = { 0.5, 0.25 },
          width = 143
        },
        base_animation = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/roboport/roboport-base-animation.png",
          frame_count = 8,
          height = 31,
          priority = "medium",
          shift = { -0.5315, -1.9375 },
          width = 42
        },
        base_patch = {
          filename = "__base__/graphics/entity/roboport/roboport-base-patch.png",
          frame_count = 1,
          height = 50,
          priority = "medium",
          shift = { 0.03125, 0.203125 },
          width = 69
        },
        charge_approach_distance = 5,
        charging_energy = "200kW",
        charging_offsets = { { -1.5, -0.5 }, { 1.5, -0.5 }, { 1.5, 1.5 }, { -1.5, 1.5 } },
        close_door_trigger_effect = { {
            sound = {
              filename = "__base__/sound/roboport-door.ogg",
              volume = 0.75
            },
            type = "play-sound"
          } },
        collision_box = { { -1.7, -1.7 }, { 1.7, 1.7 } },
        construction_radius = 50,
        construction_radius_visualisation_picture = {
          filename = "__base__/graphics/entity/roboport/roboport-construction-radius-visualization.png",
          height = 12,
          width = 12
        },
        corpse = "big-remnants",
        door_animation_down = {
          filename = "__base__/graphics/entity/roboport/roboport-door-down.png",
          frame_count = 16,
          height = 22,
          priority = "medium",
          shift = { 0.015625, -0.234375 },
          width = 52
        },
        door_animation_up = {
          filename = "__base__/graphics/entity/roboport/roboport-door-up.png",
          frame_count = 16,
          height = 20,
          priority = "medium",
          shift = { 0.015625, -0.890625 },
          width = 52
        },
        dying_explosion = "huge-explosion",
        energy_source = {
          buffer_capacity = "48MJ",
          input_flow_limit = "2MW",
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_usage = "200kW",
        flags = { "placeable-player", "player-creation" },
        icon = "__base__/graphics/icons/roboport.png",
        logistics_radius = 25,
        material_slots_count = 7,
        max_health = 500,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "roboport"
        },
        name = "roboport",
        open_door_trigger_effect = { {
            sound = {
              filename = "__base__/sound/roboport-door.ogg",
              volume = 1.2
            },
            type = "play-sound"
          } },
        radius_visualisation_picture = {
          filename = "__base__/graphics/entity/roboport/roboport-radius-visualization.png",
          height = 12,
          width = 12
        },
        recharge_minimum = "20MJ",
        recharging_animation = {
          animation_speed = 0.5,
          filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
          frame_count = 16,
          height = 35,
          priority = "high",
          scale = 1.5,
          width = 37
        },
        recharging_light = {
          intensity = 0.4,
          size = 5
        },
        request_to_open_door_timeout = 15,
        robot_slots_count = 7,
        selection_box = { { -2, -2 }, { 2, 2 } },
        spawn_and_station_height = -0.1,
        stationing_offset = { 0, 0 },
        type = "roboport",
        working_sound = {
          max_sounds_per_type = 3,
          sound = {
            filename = "__base__/sound/roboport-working.ogg",
            volume = 0.6
          }
        }
      }
    },
    ["rocket-defense"] = {
      ["rocket-defense"] = {
        collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } },
        corpse = "big-remnants",
        energy_source = {
          buffer_capacity = "100MJ",
          type = "electric",
          usage_priority = "primary-input"
        },
        flags = { "placeable-player", "player-creation" },
        icon = "__base__/graphics/icons/rocket-defense.png",
        max_health = 5000,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "rocket-defense"
        },
        name = "rocket-defense",
        picture = {
          filename = "__base__/graphics/entity/rocket-defense/rocket-defense.png",
          height = 160,
          priority = "low",
          width = 160
        },
        selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
        type = "rocket-defense"
      }
    },
    ["simple-entity"] = {
      ["medium-ship-wreck"] = {
        collision_box = { { -1.2, -0.9 }, { 1.2, 0.9 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/ship-wreck/medium-ship-wreck.png",
        max_health = 200,
        name = "medium-ship-wreck",
        order = "d[remnants]-d[ship-wreck]-b[medium]-a",
        pictures = { {
            filename = "__base__/graphics/entity/ship-wreck/medium-ship-wreck-1.png",
            height = 85,
            width = 120
          }, {
            filename = "__base__/graphics/entity/ship-wreck/medium-ship-wreck-2.png",
            height = 107,
            shift = { 0.3, 0.1 },
            width = 126
          } },
        render_layer = "object",
        selection_box = { { -1.5, -1.2 }, { 1.5, 1.2 } },
        subgroup = "wrecks",
        type = "simple-entity"
      },
      ["small-ship-wreck"] = {
        collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/ship-wreck/small-ship-wreck.png",
        max_health = 200,
        name = "small-ship-wreck",
        order = "d[remnants]-d[ship-wreck]-c[small]-a",
        pictures = { {
            filename = "__base__/graphics/entity/ship-wreck/small-ship-wreck-a.png",
            height = 68,
            width = 65
          }, {
            filename = "__base__/graphics/entity/ship-wreck/small-ship-wreck-b.png",
            height = 67,
            width = 109
          }, {
            filename = "__base__/graphics/entity/ship-wreck/small-ship-wreck-c.png",
            height = 54,
            width = 63
          }, {
            filename = "__base__/graphics/entity/ship-wreck/small-ship-wreck-d.png",
            height = 67,
            width = 82
          }, {
            filename = "__base__/graphics/entity/ship-wreck/small-ship-wreck-e.png",
            height = 75,
            shift = { 0.3, -0.2 },
            width = 78
          }, {
            filename = "__base__/graphics/entity/ship-wreck/small-ship-wreck-f.png",
            height = 35,
            width = 58
          }, {
            filename = "__base__/graphics/entity/ship-wreck/small-ship-wreck-g.png",
            height = 72,
            width = 80
          }, {
            filename = "__base__/graphics/entity/ship-wreck/small-ship-wreck-h.png",
            height = 54,
            width = 79
          }, {
            filename = "__base__/graphics/entity/ship-wreck/small-ship-wreck-i.png",
            height = 55,
            width = 56
          } },
        render_layer = "object",
        selection_box = { { -1.3, -1.1 }, { 1.3, 1.1 } },
        subgroup = "wrecks",
        type = "simple-entity"
      },
      ["stone-rock"] = {
        autoplace = {
          order = "a[doodad]-a[rock]",
          peaks = { {
              influence = 0.0002
            }, {
              elevation_max_range = 30000,
              elevation_optimal = 30000,
              elevation_range = 23000,
              influence = 0.002,
              min_influence = 0
            } }
        },
        collision_box = { { -1.1, -1.1 }, { 1.1, 1.1 } },
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        icon = "__base__/graphics/icons/stone-rock.png",
        max_health = 200,
        name = "stone-rock",
        order = "b[decorative]-k[stone-rock]-a[big]",
        pictures = { {
            filename = "__base__/graphics/entity/decorative/stone-rock/stone-rock-01.png",
            height = 60,
            shift = { 0.1, 0 },
            width = 76
          }, {
            filename = "__base__/graphics/entity/decorative/stone-rock/stone-rock-02.png",
            height = 86,
            shift = { 0.2, 0 },
            width = 83
          }, {
            filename = "__base__/graphics/entity/decorative/stone-rock/stone-rock-03.png",
            height = 98,
            shift = { 0.7, 0 },
            width = 126
          }, {
            filename = "__base__/graphics/entity/decorative/stone-rock/stone-rock-04.png",
            height = 108,
            shift = { 0.1, 0 },
            width = 92
          }, {
            filename = "__base__/graphics/entity/decorative/stone-rock/stone-rock-05.png",
            height = 99,
            shift = { 0.5, 0 },
            width = 140
          } },
        render_layer = "object",
        resistances = { {
            percent = 100,
            type = "fire"
          } },
        selection_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
        subgroup = "grass",
        type = "simple-entity"
      }
    },
    ["smart-container"] = {
      ["smart-chest"] = {
        close_sound = {
          filename = "__base__/sound/metallic-chest-close.ogg",
          volume = 0.7
        },
        collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
        connection_point = {
          shadow = {
            green = { 0.7, -0.3 },
            red = { 0.7, -0.3 }
          },
          wire = {
            green = { 0.3, -0.8 },
            red = { 0.3, -0.8 }
          }
        },
        corpse = "small-remnants",
        fast_replaceable_group = "container",
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/smart-chest.png",
        inventory_size = 48,
        max_health = 150,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "smart-chest"
        },
        name = "smart-chest",
        open_sound = {
          filename = "__base__/sound/metallic-chest-open.ogg",
          volume = 0.65
        },
        picture = {
          filename = "__base__/graphics/entity/smart-chest/smart-chest.png",
          height = 41,
          priority = "extra-high",
          shift = { 0.4, -0.13 },
          width = 62
        },
        resistances = { {
            percent = 70,
            type = "fire"
          } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        type = "smart-container"
      }
    },
    smoke = {
      ["poison-cloud"] = {
        action = {
          action_delivery = {
            target_effects = {
              action = {
                action_delivery = {
                  target_effects = {
                    damage = {
                      amount = 4,
                      type = "poison"
                    },
                    type = "damage"
                  },
                  type = "instant"
                },
                entity_flags = { "breaths-air" },
                perimeter = 11,
                type = "area"
              },
              type = "nested-result"
            },
            type = "instant"
          },
          type = "direct"
        },
        action_frequency = 30,
        animation = {
          animation_speed = 3,
          filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
          frame_count = 45,
          height = 256,
          line_length = 7,
          priority = "low",
          scale = 3,
          width = 256
        },
        color = {
          b = 0.2,
          g = 0.9,
          r = 0.2
        },
        cyclic = true,
        duration = 1200,
        fade_away_duration = 120,
        flags = { "not-on-map" },
        name = "poison-cloud",
        show_when_smoke_off = true,
        slow_down_factor = 0,
        spread_duration = 10,
        type = "smoke",
        wind_speed_factor = 0
      },
      smoke = {
        animation = {
          animation_speed = 12,
          filename = "__base__/graphics/entity/smoke/smoke.png",
          frame_count = 39,
          height = 78,
          line_length = 7,
          priority = "high",
          width = 88
        },
        flags = { "not-on-map" },
        name = "smoke",
        type = "smoke"
      },
      ["smoke-building"] = {
        animation = {
          animation_speed = 2,
          filename = "__base__/graphics/entity/smoke-fast/smoke-fast.png",
          frame_count = 16,
          height = 50,
          priority = "high",
          scale = 0.5,
          width = 50
        },
        duration = 45,
        fade_away_duration = 30,
        flags = { "not-on-map" },
        movement_slow_down_factor = 0.96,
        name = "smoke-building",
        render_layer = "building-smoke",
        show_when_smoke_off = true,
        type = "smoke",
        wind_speed_factor = 0
      },
      ["smoke-explosion-particle"] = {
        animation = {
          animation_speed = 2,
          filename = "__base__/graphics/entity/smoke-fast/smoke-fast.png",
          frame_count = 16,
          height = 50,
          priority = "high",
          scale = 0.5,
          tint = {
            a = 0.7,
            b = 0.1,
            g = 0.1,
            r = 0.1
          },
          width = 50
        },
        duration = 150,
        fade_away_duration = 60,
        flags = { "not-on-map" },
        movement_slow_down_factor = 0.96,
        name = "smoke-explosion-particle",
        render_layer = "smoke",
        show_when_smoke_off = true,
        type = "smoke",
        wind_speed_factor = 0.02
      },
      ["smoke-fast"] = {
        animation = {
          animation_speed = 1,
          filename = "__base__/graphics/entity/smoke-fast/smoke-fast.png",
          frame_count = 16,
          height = 50,
          priority = "high",
          width = 50
        },
        flags = { "not-on-map" },
        name = "smoke-fast",
        type = "smoke"
      },
      ["smoke-train-stop"] = {
        animation = {
          animation_speed = 2,
          filename = "__base__/graphics/entity/smoke-fast/smoke-fast.png",
          frame_count = 16,
          height = 50,
          priority = "high",
          scale = 0.5,
          width = 50
        },
        duration = 40,
        fade_away_duration = 30,
        flags = { "not-on-map" },
        movement_slow_down_factor = 0.95,
        name = "smoke-train-stop",
        render_layer = "lower-object",
        show_when_smoke_off = true,
        type = "smoke",
        wind_speed_factor = 0
      }
    },
    ["solar-panel"] = {
      ["solar-panel"] = {
        collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
        corpse = "big-remnants",
        energy_source = {
          type = "electric",
          usage_priority = "primary-output"
        },
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/solar-panel.png",
        max_health = 100,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "solar-panel"
        },
        name = "solar-panel",
        picture = {
          filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
          height = 96,
          priority = "high",
          width = 104
        },
        production = "60kW",
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        type = "solar-panel"
      }
    },
    ["solar-panel-equipment"] = {
      ["solar-panel-equipment"] = {
        energy_source = {
          type = "electric",
          usage_priority = "primary-output"
        },
        name = "solar-panel-equipment",
        power = "10W",
        shape = {
          height = 1,
          type = "full",
          width = 1
        },
        sprite = {
          filename = "__base__/graphics/equipment/solar-panel-equipment.png",
          height = 32,
          priority = "medium",
          width = 32
        },
        type = "solar-panel-equipment"
      }
    },
    splitter = {
      ["basic-splitter"] = {
        animation_speed_coefficient = 32,
        belt_horizontal = <46>{
          filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
          frame_count = 16,
          height = 40,
          priority = "extra-high",
          width = 40
        },
        belt_vertical = <47>{
          filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
          frame_count = 16,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 40
        },
        collision_box = { { -0.9, -0.1 }, { 0.9, 0.1 } },
        corpse = "medium-remnants",
        ending_bottom = <48>{
          filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
          frame_count = 16,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 120
        },
        ending_patch = <49>{
          sheet = {
            filename = "__base__/graphics/entity/basic-transport-belt/start-end-integration-patches.png",
            height = 40,
            priority = "extra-high",
            width = 40
          }
        },
        ending_side = <50>{
          filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
          frame_count = 16,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 160
        },
        ending_top = <51>{
          filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
          frame_count = 16,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 80
        },
        fast_replaceable_group = "splitter",
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/basic-splitter.png",
        max_health = 80,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "basic-splitter"
        },
        name = "basic-splitter",
        resistances = { {
            percent = 60,
            type = "fire"
          } },
        selection_box = { { -0.9, -0.5 }, { 0.9, 0.5 } },
        speed = 0.03125,
        starting_bottom = <52>{
          filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
          frame_count = 16,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 240
        },
        starting_side = <53>{
          filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
          frame_count = 16,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 280
        },
        starting_top = <54>{
          filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
          frame_count = 16,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 200
        },
        structure = {
          east = {
            filename = "__base__/graphics/entity/basic-splitter/basic-splitter-east.png",
            frame_count = 32,
            height = 81,
            line_length = 16,
            priority = "extra-high",
            shift = { 0.075, 0 },
            width = 46
          },
          north = {
            filename = "__base__/graphics/entity/basic-splitter/basic-splitter-north.png",
            frame_count = 32,
            height = 35,
            line_length = 16,
            priority = "extra-high",
            shift = { 0.225, 0 },
            width = 80
          },
          south = {
            filename = "__base__/graphics/entity/basic-splitter/basic-splitter-south.png",
            frame_count = 32,
            height = 36,
            line_length = 16,
            priority = "extra-high",
            shift = { 0.075, 0 },
            width = 82
          },
          west = {
            filename = "__base__/graphics/entity/basic-splitter/basic-splitter-west.png",
            frame_count = 32,
            height = 79,
            line_length = 16,
            priority = "extra-high",
            shift = { 0.25, 0.05 },
            width = 47
          }
        },
        structure_animation_movement_cooldown = 10,
        structure_animation_speed_coefficient = 0.7,
        type = "splitter"
      },
      ["express-splitter"] = {
        animation_speed_coefficient = 32,
        belt_horizontal = <55>{
          filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40
        },
        belt_vertical = <56>{
          filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 40
        },
        collision_box = { { -0.9, -0.1 }, { 0.9, 0.1 } },
        corpse = "medium-remnants",
        ending_bottom = <57>{
          filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 120
        },
        ending_patch = <table 49>,
        ending_side = <58>{
          filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 160
        },
        ending_top = <59>{
          filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 80
        },
        fast_replaceable_group = "splitter",
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/express-splitter.png",
        max_health = 80,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "express-splitter"
        },
        name = "express-splitter",
        resistances = { {
            percent = 60,
            type = "fire"
          } },
        selection_box = { { -0.9, -0.5 }, { 0.9, 0.5 } },
        speed = 0.09375,
        starting_bottom = <60>{
          filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 240
        },
        starting_side = <61>{
          filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 280
        },
        starting_top = <62>{
          filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 200
        },
        structure = {
          east = {
            filename = "__base__/graphics/entity/express-splitter/express-splitter-east.png",
            frame_count = 32,
            height = 81,
            line_length = 16,
            priority = "extra-high",
            shift = { 0.075, 0 },
            width = 46
          },
          north = {
            filename = "__base__/graphics/entity/express-splitter/express-splitter-north.png",
            frame_count = 32,
            height = 35,
            line_length = 16,
            priority = "extra-high",
            shift = { 0.225, 0 },
            width = 80
          },
          south = {
            filename = "__base__/graphics/entity/express-splitter/express-splitter-south.png",
            frame_count = 32,
            height = 36,
            line_length = 16,
            priority = "extra-high",
            shift = { 0.075, 0 },
            width = 82
          },
          west = {
            filename = "__base__/graphics/entity/express-splitter/express-splitter-west.png",
            frame_count = 32,
            height = 79,
            line_length = 16,
            priority = "extra-high",
            shift = { 0.25, 0.05 },
            width = 47
          }
        },
        structure_animation_movement_cooldown = 10,
        structure_animation_speed_coefficient = 1.2,
        type = "splitter"
      },
      ["fast-splitter"] = {
        animation_speed_coefficient = 32,
        belt_horizontal = <63>{
          filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40
        },
        belt_vertical = <64>{
          filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 40
        },
        collision_box = { { -0.9, -0.1 }, { 0.9, 0.1 } },
        corpse = "medium-remnants",
        ending_bottom = <65>{
          filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 120
        },
        ending_patch = <table 49>,
        ending_side = <66>{
          filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 160
        },
        ending_top = <67>{
          filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 80
        },
        fast_replaceable_group = "splitter",
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/fast-splitter.png",
        max_health = 80,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "fast-splitter"
        },
        name = "fast-splitter",
        resistances = { {
            percent = 60,
            type = "fire"
          } },
        selection_box = { { -0.9, -0.5 }, { 0.9, 0.5 } },
        speed = 0.0625,
        starting_bottom = <68>{
          filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 240
        },
        starting_side = <69>{
          filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 280
        },
        starting_top = <70>{
          filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40,
          y = 200
        },
        structure = {
          east = {
            filename = "__base__/graphics/entity/fast-splitter/fast-splitter-east.png",
            frame_count = 32,
            height = 81,
            line_length = 16,
            priority = "extra-high",
            shift = { 0.075, 0 },
            width = 46
          },
          north = {
            filename = "__base__/graphics/entity/fast-splitter/fast-splitter-north.png",
            frame_count = 32,
            height = 35,
            line_length = 16,
            priority = "extra-high",
            shift = { 0.225, 0 },
            width = 80
          },
          south = {
            filename = "__base__/graphics/entity/fast-splitter/fast-splitter-south.png",
            frame_count = 32,
            height = 36,
            line_length = 16,
            priority = "extra-high",
            shift = { 0.075, 0 },
            width = 82
          },
          west = {
            filename = "__base__/graphics/entity/fast-splitter/fast-splitter-west.png",
            frame_count = 32,
            height = 79,
            line_length = 16,
            priority = "extra-high",
            shift = { 0.25, 0.05 },
            width = 47
          }
        },
        structure_animation_movement_cooldown = 10,
        structure_animation_speed_coefficient = 1.2,
        type = "splitter"
      }
    },
    sticker = {
      ["slowdown-sticker"] = {
        animation = {
          animation_speed = 0.4,
          filename = "__base__/graphics/entity/slowdown-sticker/slowdown-sticker.png",
          frame_count = 13,
          height = 11,
          priority = "extra-high",
          width = 11
        },
        duration_in_ticks = 1800,
        flags = {},
        magnitude = 0.5,
        name = "slowdown-sticker",
        type = "sticker"
      }
    },
    ["storage-tank"] = {
      ["storage-tank"] = {
        collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
        corpse = "medium-remnants",
        flags = { "placeable-player", "player-creation" },
        fluid_box = {
          base_area = 250,
          pipe_connections = { {
              position = { -1, -2 }
            }, {
              position = { 2, 1 }
            }, {
              position = { 1, 2 }
            }, {
              position = { -2, -1 }
            } },
          pipe_covers = {
            east = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
              height = 32,
              priority = "extra-high",
              width = 32
            },
            north = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
              height = 32,
              priority = "extra-high",
              width = 44
            },
            south = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
              height = 52,
              priority = "extra-high",
              width = 46
            },
            west = {
              filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
              height = 32,
              priority = "extra-high",
              width = 32
            }
          }
        },
        icon = "__base__/graphics/icons/storage-tank.png",
        max_health = 500,
        minable = {
          hardness = 0.2,
          mining_time = 3,
          result = "storage-tank"
        },
        name = "storage-tank",
        picture = {
          sheet = {
            filename = "__base__/graphics/entity/storage-tank/storage-tank.png",
            frames = 2,
            height = 115,
            priority = "extra-high",
            shift = { 0.6875, 0.109375 },
            width = 140
          }
        },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        type = "storage-tank",
        working_sound = {
          apparent_volume = 1.5,
          max_sounds_per_type = 3,
          sound = {
            filename = "__base__/sound/storage-tank.ogg",
            volume = 0.8
          }
        }
      }
    },
    technology = {
      ["advanced-electronics"] = {
        effects = { {
            recipe = "smart-chest",
            type = "unlock-recipe"
          }, {
            recipe = "red-wire",
            type = "unlock-recipe"
          }, {
            recipe = "green-wire",
            type = "unlock-recipe"
          }, {
            recipe = "advanced-circuit",
            type = "unlock-recipe"
          }, {
            recipe = "processing-unit",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/advanced-electronics.png",
        name = "advanced-electronics",
        order = "a-d-b",
        prerequisites = { "electronics" },
        type = "technology",
        unit = {
          count = 40,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 15
        }
      },
      ["advanced-electronics-2"] = {
        icon = "__base__/graphics/technology/advanced-electronics.png",
        name = "advanced-electronics-2",
        order = "a-d-c",
        prerequisites = { "advanced-electronics" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["advanced-material-processing"] = {
        effects = { {
            recipe = "steel-furnace",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/advanced-material-processing.png",
        name = "advanced-material-processing",
        order = "c-c-a",
        prerequisites = { "steel-processing" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["advanced-material-processing-2"] = {
        effects = { {
            recipe = "electric-furnace",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/advanced-material-processing.png",
        name = "advanced-material-processing-2",
        order = "c-c-b",
        prerequisites = { "advanced-material-processing", "advanced-electronics" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["advanced-oil-processing"] = {
        effects = { {
            recipe = "advanced-oil-processing",
            type = "unlock-recipe"
          }, {
            recipe = "heavy-oil-cracking",
            type = "unlock-recipe"
          }, {
            recipe = "light-oil-cracking",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/oil-processing.png",
        name = "advanced-oil-processing",
        order = "d-b",
        prerequisites = { "oil-processing" },
        type = "technology",
        unit = {
          count = 75,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        }
      },
      ["alien-technology"] = {
        effects = { {
            recipe = "alien-science-pack",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/alien-technology.png",
        name = "alien-technology",
        order = "e-f",
        prerequisites = { "rocketry" },
        type = "technology",
        unit = {
          count = 300,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["armor-making"] = {
        effects = { {
            recipe = "basic-armor",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/armor-making.png",
        name = "armor-making",
        order = "g-a-a",
        type = "technology",
        unit = {
          count = 10,
          ingredients = { { "science-pack-1", 1 } },
          time = 5
        }
      },
      ["armor-making-2"] = {
        effects = { {
            recipe = "heavy-armor",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/armor-making.png",
        name = "armor-making-2",
        order = "g-a-b",
        prerequisites = { "armor-making", "steel-processing" },
        type = "technology",
        unit = {
          count = 30,
          ingredients = { { "science-pack-1", 1 } },
          time = 30
        }
      },
      ["armor-making-3"] = {
        effects = { {
            recipe = "basic-modular-armor",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/armor-making.png",
        name = "armor-making-3",
        order = "g-a-c",
        prerequisites = { "armor-making-2", "speed-module" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["automated-construction"] = {
        effects = { {
            recipe = "blueprint",
            type = "unlock-recipe"
          }, {
            recipe = "deconstruction-planner",
            type = "unlock-recipe"
          }, {
            modifier = 18000,
            type = "ghost-time-to-live"
          } },
        icon = "__base__/graphics/technology/automated-construction.png",
        name = "automated-construction",
        order = "c-k-b",
        prerequisites = { "construction-robotics" },
        type = "technology",
        unit = {
          count = 75,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["automated-rail-transportation"] = {
        effects = { {
            recipe = "train-stop",
            type = "unlock-recipe"
          }, {
            recipe = "cargo-wagon",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/automated-rail-transportation.png",
        name = "automated-rail-transportation",
        order = "c-g-b",
        prerequisites = { "railway" },
        type = "technology",
        unit = {
          count = 70,
          ingredients = { { "science-pack-1", 2 }, { "science-pack-2", 1 } },
          time = 20
        }
      },
      automation = {
        effects = { {
            recipe = "assembling-machine-1",
            type = "unlock-recipe"
          }, {
            recipe = "long-handed-inserter",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/automation.png",
        name = "automation",
        order = "a-b-a",
        type = "technology",
        unit = {
          count = 10,
          ingredients = { { "science-pack-1", 1 } },
          time = 10
        }
      },
      ["automation-2"] = {
        effects = { {
            recipe = "assembling-machine-2",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/automation.png",
        name = "automation-2",
        order = "a-b-b",
        prerequisites = { "electronics" },
        type = "technology",
        unit = {
          count = 40,
          ingredients = { { "science-pack-1", 2 } },
          time = 15
        }
      },
      ["automation-3"] = {
        effects = { {
            recipe = "assembling-machine-3",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/automation.png",
        name = "automation-3",
        order = "a-b-c",
        prerequisites = { "speed-module", "automation-2" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        }
      },
      automobilism = {
        effects = { {
            recipe = "car",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/automobilism.png",
        name = "automobilism",
        order = "e-b",
        prerequisites = { "logistics-2", "engine" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 2 }, { "science-pack-2", 1 } },
          time = 20
        }
      },
      ["basic-electric-discharge-defense-equipment"] = {
        effects = { {
            recipe = "basic-electric-discharge-defense-equipment",
            type = "unlock-recipe"
          }, {
            recipe = "basic-electric-discharge-defense-remote",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/basic-electric-discharge-defense-equipment.png",
        name = "basic-electric-discharge-defense-equipment",
        order = "g-o",
        prerequisites = { "armor-making-3", "alien-technology", "laser-turrets" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        }
      },
      ["basic-exoskeleton-equipment"] = {
        effects = { {
            recipe = "basic-exoskeleton-equipment",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/basic-exoskeleton-equipment.png",
        name = "basic-exoskeleton-equipment",
        order = "g-h",
        prerequisites = { "solar-panel-equipment", "electric-engine" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        }
      },
      ["basic-laser-defense-equipment"] = {
        effects = { {
            recipe = "basic-laser-defense-equipment",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/basic-laser-defense-equipment.png",
        name = "basic-laser-defense-equipment",
        order = "g-m",
        prerequisites = { "armor-making-3", "laser-turrets" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        }
      },
      battery = {
        effects = { {
            recipe = "battery",
            type = "unlock-recipe"
          }, {
            recipe = "science-pack-3",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/battery.png",
        name = "battery",
        order = "b-c",
        prerequisites = { "sulfur-processing" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 25
        }
      },
      ["battery-equipment"] = {
        effects = { {
            recipe = "battery-equipment",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/battery-equipment.png",
        name = "battery-equipment",
        order = "g-i-a",
        prerequisites = { "armor-making-3", "battery" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 15
        }
      },
      ["battery-mk2-equipment"] = {
        effects = { {
            recipe = "battery-mk2-equipment",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/battery-mk2-equipment.png",
        name = "battery-mk2-equipment",
        order = "g-i-b",
        prerequisites = { "battery-equipment" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        }
      },
      ["bullet-damage-1"] = {
        effects = { {
            ammo_category = "bullet",
            modifier = "0.1",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/bullet-damage.png",
        name = "bullet-damage-1",
        order = "e-l-a",
        prerequisites = { "military" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["bullet-damage-2"] = {
        effects = { {
            ammo_category = "bullet",
            modifier = "0.1",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/bullet-damage.png",
        name = "bullet-damage-2",
        order = "e-l-b",
        prerequisites = { "bullet-damage-1" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["bullet-damage-3"] = {
        effects = { {
            ammo_category = "bullet",
            modifier = "0.2",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/bullet-damage.png",
        name = "bullet-damage-3",
        order = "e-l-c",
        prerequisites = { "bullet-damage-2" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["bullet-damage-4"] = {
        effects = { {
            ammo_category = "bullet",
            modifier = "0.2",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/bullet-damage.png",
        name = "bullet-damage-4",
        order = "e-l-d",
        prerequisites = { "bullet-damage-3" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["bullet-damage-5"] = {
        effects = { {
            ammo_category = "bullet",
            modifier = "0.2",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/bullet-damage.png",
        name = "bullet-damage-5",
        order = "e-l-e",
        prerequisites = { "bullet-damage-4" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["bullet-damage-6"] = {
        effects = { {
            ammo_category = "bullet",
            modifier = "0.4",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/bullet-damage.png",
        name = "bullet-damage-6",
        order = "e-l-f",
        prerequisites = { "bullet-damage-5" },
        type = "technology",
        unit = {
          count = 300,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["bullet-speed-1"] = {
        effects = { {
            ammo_category = "bullet",
            modifier = "0.2",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/bullet-speed.png",
        name = "bullet-speed-1",
        order = "e-l-g",
        prerequisites = { "military" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["bullet-speed-2"] = {
        effects = { {
            ammo_category = "bullet",
            modifier = "0.2",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/bullet-speed.png",
        name = "bullet-speed-2",
        order = "e-l-h",
        prerequisites = { "bullet-speed-1" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["bullet-speed-3"] = {
        effects = { {
            ammo_category = "bullet",
            modifier = "0.3",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/bullet-speed.png",
        name = "bullet-speed-3",
        order = "e-l-i",
        prerequisites = { "bullet-speed-2" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["bullet-speed-4"] = {
        effects = { {
            ammo_category = "bullet",
            modifier = "0.3",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/bullet-speed.png",
        name = "bullet-speed-4",
        order = "e-l-j",
        prerequisites = { "bullet-speed-3" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["bullet-speed-5"] = {
        effects = { {
            ammo_category = "bullet",
            modifier = "0.3",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/bullet-speed.png",
        name = "bullet-speed-5",
        order = "e-l-k",
        prerequisites = { "bullet-speed-4" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["bullet-speed-6"] = {
        effects = { {
            ammo_category = "bullet",
            modifier = "0.3",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/bullet-speed.png",
        name = "bullet-speed-6",
        order = "e-l-l",
        prerequisites = { "bullet-speed-5" },
        type = "technology",
        unit = {
          count = 300,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["character-logistic-slots-1"] = {
        effects = { {
            modifier = 5,
            type = "character-logistic-slots"
          } },
        icon = "__base__/graphics/technology/character-logistic-slots.png",
        name = "character-logistic-slots-1",
        order = "c-k-e-a",
        prerequisites = { "logistic-robotics" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["character-logistic-slots-2"] = {
        effects = { {
            modifier = 5,
            type = "character-logistic-slots"
          } },
        icon = "__base__/graphics/technology/character-logistic-slots.png",
        name = "character-logistic-slots-2",
        order = "c-k-e-b",
        prerequisites = { "character-logistic-slots-1" },
        type = "technology",
        unit = {
          count = 150,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["character-logistic-slots-3"] = {
        effects = { {
            modifier = 5,
            type = "character-logistic-slots"
          } },
        icon = "__base__/graphics/technology/character-logistic-slots.png",
        name = "character-logistic-slots-3",
        order = "c-k-e-c",
        prerequisites = { "character-logistic-slots-2" },
        type = "technology",
        unit = {
          count = 150,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["character-logistic-slots-4"] = {
        effects = { {
            modifier = 5,
            type = "character-logistic-slots"
          } },
        icon = "__base__/graphics/technology/character-logistic-slots.png",
        name = "character-logistic-slots-4",
        order = "c-k-e-d",
        prerequisites = { "character-logistic-slots-3" },
        type = "technology",
        unit = {
          count = 150,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["combat-robot-damage-1"] = {
        effects = { {
            ammo_category = "combat-robot-laser",
            modifier = "0.1",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/combat-robot-damage.png",
        name = "combat-robot-damage-1",
        order = "e-p-c",
        prerequisites = { "combat-robotics" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["combat-robot-damage-2"] = {
        effects = { {
            ammo_category = "combat-robot-laser",
            modifier = "0.15",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/combat-robot-damage.png",
        name = "combat-robot-damage-2",
        order = "e-p-d",
        prerequisites = { "combat-robot-damage-1" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["combat-robot-damage-3"] = {
        effects = { {
            ammo_category = "combat-robot-laser",
            modifier = "0.2",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/combat-robot-damage.png",
        name = "combat-robot-damage-3",
        order = "e-p-e",
        prerequisites = { "combat-robot-damage-2" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 2 }, { "science-pack-2", 2 }, { "science-pack-3", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["combat-robot-damage-4"] = {
        effects = { {
            ammo_category = "combat-robot-laser",
            modifier = "0.25",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/combat-robot-damage.png",
        name = "combat-robot-damage-4",
        order = "e-p-f",
        prerequisites = { "combat-robot-damage-3" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 2 }, { "science-pack-2", 2 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["combat-robot-damage-5"] = {
        effects = { {
            ammo_category = "combat-robot-laser",
            modifier = "0.3",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/combat-robot-damage.png",
        name = "combat-robot-damage-5",
        order = "e-p-g",
        prerequisites = { "combat-robot-damage-4" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "science-pack-1", 2 }, { "science-pack-2", 2 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["combat-robotics"] = {
        effects = { {
            recipe = "defender-capsule",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/combat-robotics.png",
        name = "combat-robotics",
        order = "e-p-a",
        prerequisites = { "military-2" },
        type = "technology",
        unit = {
          count = 150,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["combat-robotics-2"] = {
        effects = { {
            recipe = "distractor-capsule",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/combat-robotics.png",
        name = "combat-robotics-2",
        order = "e-p-b-a",
        prerequisites = { "combat-robotics", "military-3" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        }
      },
      ["combat-robotics-3"] = {
        effects = { {
            recipe = "destroyer-capsule",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/combat-robotics.png",
        name = "combat-robotics-3",
        order = "e-p-b-b",
        prerequisites = { "combat-robotics-2", "speed-module" },
        type = "technology",
        unit = {
          count = 300,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        }
      },
      ["construction-robotics"] = {
        effects = { {
            recipe = "roboport",
            type = "unlock-recipe"
          }, {
            recipe = "logistic-chest-passive-provider",
            type = "unlock-recipe"
          }, {
            recipe = "logistic-chest-storage",
            type = "unlock-recipe"
          }, {
            recipe = "construction-robot",
            type = "unlock-recipe"
          }, {
            modifier = 18000,
            type = "ghost-time-to-live"
          } },
        icon = "__base__/graphics/technology/construction-robotics.png",
        name = "construction-robotics",
        order = "c-k-a",
        prerequisites = { "robotics", "flying" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["effect-transmission"] = {
        effects = { {
            recipe = "basic-beacon",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/effect-transmission.png",
        name = "effect-transmission",
        order = "i-i",
        prerequisites = { "modules", "advanced-electronics-2" },
        type = "technology",
        unit = {
          count = 75,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        }
      },
      ["effectivity-module"] = {
        effects = { {
            recipe = "effectivity-module",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/effectivity-module.png",
        name = "effectivity-module",
        order = "i-g-a",
        prerequisites = { "modules" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = true
      },
      ["effectivity-module-2"] = {
        effects = { {
            recipe = "effectivity-module-2",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/effectivity-module.png",
        name = "effectivity-module-2",
        order = "i-g-b",
        prerequisites = { "effectivity-module" },
        type = "technology",
        unit = {
          count = 75,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        },
        upgrade = true
      },
      ["effectivity-module-3"] = {
        effects = { {
            recipe = "effectivity-module-3",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/effectivity-module.png",
        name = "effectivity-module-3",
        order = "i-g-c",
        prerequisites = { "effectivity-module-2" },
        type = "technology",
        unit = {
          count = 300,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 60
        },
        upgrade = true
      },
      ["electric-energy-accumulators-1"] = {
        effects = { {
            recipe = "basic-accumulator",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/electric-energy-acumulators.png",
        name = "electric-energy-accumulators-1",
        order = "c-e-a",
        prerequisites = { "electric-energy-distribution-1", "battery" },
        type = "technology",
        unit = {
          count = 60,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["electric-energy-distribution-1"] = {
        effects = { {
            recipe = "medium-electric-pole",
            type = "unlock-recipe"
          }, {
            recipe = "big-electric-pole",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/electric-energy-distribution.png",
        name = "electric-energy-distribution-1",
        order = "c-e-b",
        prerequisites = { "electronics", "steel-processing" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["electric-energy-distribution-2"] = {
        effects = { {
            recipe = "substation",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/electric-energy-distribution.png",
        name = "electric-energy-distribution-2",
        order = "c-e-c",
        prerequisites = { "electric-energy-distribution-1" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 45
        }
      },
      ["electric-engine"] = {
        effects = { {
            recipe = "electric-engine-unit",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/electric-engine.png",
        name = "electric-engine",
        order = "b-b",
        prerequisites = { "engine", "advanced-electronics", "oil-processing" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 25
        }
      },
      electronics = {
        effects = { {
            recipe = "smart-inserter",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/electronics.png",
        name = "electronics",
        order = "a-d-a",
        prerequisites = { "automation" },
        type = "technology",
        unit = {
          count = 30,
          ingredients = { { "science-pack-1", 1 } },
          time = 15
        }
      },
      ["energy-shield-equipment"] = {
        effects = { {
            recipe = "energy-shield-equipment",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/energy-shield-equipment.png",
        name = "energy-shield-equipment",
        order = "g-e-a",
        prerequisites = { "armor-making-3" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 15
        }
      },
      ["energy-shield-mk2-equipment"] = {
        effects = { {
            recipe = "energy-shield-mk2-equipment",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
        name = "energy-shield-mk2-equipment",
        order = "g-e-b",
        prerequisites = { "energy-shield-equipment" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        }
      },
      engine = {
        effects = { {
            recipe = "engine-unit",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/engine.png",
        name = "engine",
        order = "b-a",
        prerequisites = { "steel-processing", "automation-2" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 15
        }
      },
      ["explosive-rocketry"] = {
        effects = { {
            recipe = "explosive-rocket",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/explosive-rocketry.png",
        name = "explosive-rocketry",
        order = "e-h",
        prerequisites = { "rocketry" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 20
        }
      },
      explosives = {
        effects = { {
            recipe = "explosives",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/explosives.png",
        name = "explosives",
        order = "a-e-d",
        prerequisites = { "sulfur-processing" },
        type = "technology",
        unit = {
          count = 60,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 15
        }
      },
      ["flame-thrower"] = {
        effects = { {
            recipe = "flame-thrower",
            type = "unlock-recipe"
          }, {
            recipe = "flame-thrower-ammo",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/flame-thrower.png",
        name = "flame-thrower",
        order = "e-c-b",
        prerequisites = { "flammables", "military-2" },
        type = "technology",
        unit = {
          count = 20,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 15
        }
      },
      flammables = {
        icon = "__base__/graphics/technology/flammables.png",
        name = "flammables",
        order = "e-c-a",
        prerequisites = { "oil-processing" },
        type = "technology",
        unit = {
          count = 60,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 15
        }
      },
      ["fluid-handling"] = {
        effects = { {
            recipe = "storage-tank",
            type = "unlock-recipe"
          }, {
            recipe = "small-pump",
            type = "unlock-recipe"
          }, {
            recipe = "empty-barrel",
            type = "unlock-recipe"
          }, {
            recipe = "fill-crude-oil-barrel",
            type = "unlock-recipe"
          }, {
            recipe = "empty-crude-oil-barrel",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/fluid-handling.png",
        name = "fluid-handling",
        order = "d-a-a",
        prerequisites = { "oil-processing" },
        type = "technology",
        unit = {
          count = 75,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      flying = {
        icon = "__base__/graphics/technology/flying.png",
        name = "flying",
        order = "c-h",
        prerequisites = { "electric-engine", "advanced-electronics" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["follower-robot-count-1"] = {
        effects = { {
            modifier = 1,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-1",
        order = "e-p-b-c",
        prerequisites = { "combat-robotics" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-10"] = {
        effects = { {
            modifier = 5,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-10",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-9" },
        type = "technology",
        unit = {
          count = 600,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-11"] = {
        effects = { {
            modifier = 10,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-11",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-10" },
        type = "technology",
        unit = {
          count = 800,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-12"] = {
        effects = { {
            modifier = 10,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-12",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-11" },
        type = "technology",
        unit = {
          count = 1000,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-13"] = {
        effects = { {
            modifier = 10,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-13",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-12" },
        type = "technology",
        unit = {
          count = 1200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-14"] = {
        effects = { {
            modifier = 10,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-14",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-13" },
        type = "technology",
        unit = {
          count = 1400,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-15"] = {
        effects = { {
            modifier = 10,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-15",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-14" },
        type = "technology",
        unit = {
          count = 1600,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-16"] = {
        effects = { {
            modifier = 10,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-16",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-15" },
        type = "technology",
        unit = {
          count = 1800,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-17"] = {
        effects = { {
            modifier = 10,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-17",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-16" },
        type = "technology",
        unit = {
          count = 2000,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-18"] = {
        effects = { {
            modifier = 10,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-18",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-17" },
        type = "technology",
        unit = {
          count = 2200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-19"] = {
        effects = { {
            modifier = 10,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-19",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-18" },
        type = "technology",
        unit = {
          count = 2400,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-2"] = {
        effects = { {
            modifier = 1,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-2",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-1" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-20"] = {
        effects = { {
            modifier = 10,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-20",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-19" },
        type = "technology",
        unit = {
          count = 2600,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-3"] = {
        effects = { {
            modifier = 2,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-3",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-2" },
        type = "technology",
        unit = {
          count = 150,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-4"] = {
        effects = { {
            modifier = 2,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-4",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-3" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-5"] = {
        effects = { {
            modifier = 2,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-5",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-4" },
        type = "technology",
        unit = {
          count = 250,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-6"] = {
        effects = { {
            modifier = 5,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-6",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-5" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-7"] = {
        effects = { {
            modifier = 5,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-7",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-6" },
        type = "technology",
        unit = {
          count = 300,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-8"] = {
        effects = { {
            modifier = 5,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-8",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-7", "combat-robotics-3" },
        type = "technology",
        unit = {
          count = 400,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["follower-robot-count-9"] = {
        effects = { {
            modifier = 5,
            type = "maximum-following-robots-count"
          } },
        icon = "__base__/graphics/technology/follower-robots.png",
        name = "follower-robot-count-9",
        order = "e-p-b-c",
        prerequisites = { "follower-robot-count-8" },
        type = "technology",
        unit = {
          count = 500,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["fusion-reactor-equipment"] = {
        effects = { {
            recipe = "fusion-reactor-equipment",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
        name = "fusion-reactor-equipment",
        order = "g-l",
        prerequisites = { "solar-panel-equipment" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        }
      },
      gates = {
        effects = { {
            recipe = "gate",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/gates.png",
        name = "gates",
        order = "a-l-a",
        prerequisites = { "stone-walls", "military-2", "steel-processing" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["gun-turret-damage-1"] = {
        effects = { {
            modifier = "0.1",
            turret_id = "gun-turret",
            type = "turret-attack"
          } },
        icon = "__base__/graphics/technology/gun-turret-damage.png",
        name = "gun-turret-damage-1",
        order = "e-o-a",
        prerequisites = { "turrets" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["gun-turret-damage-2"] = {
        effects = { {
            modifier = "0.1",
            turret_id = "gun-turret",
            type = "turret-attack"
          } },
        icon = "__base__/graphics/technology/gun-turret-damage.png",
        name = "gun-turret-damage-2",
        order = "e-o-b",
        prerequisites = { "gun-turret-damage-1" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["gun-turret-damage-3"] = {
        effects = { {
            modifier = "0.2",
            turret_id = "gun-turret",
            type = "turret-attack"
          } },
        icon = "__base__/graphics/technology/gun-turret-damage.png",
        name = "gun-turret-damage-3",
        order = "e-o-c",
        prerequisites = { "gun-turret-damage-2" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["gun-turret-damage-4"] = {
        effects = { {
            modifier = "0.2",
            turret_id = "gun-turret",
            type = "turret-attack"
          } },
        icon = "__base__/graphics/technology/gun-turret-damage.png",
        name = "gun-turret-damage-4",
        order = "e-o-d",
        prerequisites = { "gun-turret-damage-3" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["gun-turret-damage-5"] = {
        effects = { {
            modifier = "0.2",
            turret_id = "gun-turret",
            type = "turret-attack"
          } },
        icon = "__base__/graphics/technology/gun-turret-damage.png",
        name = "gun-turret-damage-5",
        order = "e-o-e",
        prerequisites = { "gun-turret-damage-4" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["gun-turret-damage-6"] = {
        effects = { {
            modifier = "0.4",
            turret_id = "gun-turret",
            type = "turret-attack"
          } },
        icon = "__base__/graphics/technology/gun-turret-damage.png",
        name = "gun-turret-damage-6",
        order = "e-o-f",
        prerequisites = { "gun-turret-damage-5" },
        type = "technology",
        unit = {
          count = 300,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["inserter-stack-size-bonus-1"] = {
        effects = { {
            modifier = 1,
            type = "inserter-stack-size-bonus"
          } },
        icon = "__base__/graphics/technology/inserter-stack-size-bonus.png",
        name = "inserter-stack-size-bonus-1",
        order = "c-o-a",
        prerequisites = { "logistics" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["inserter-stack-size-bonus-2"] = {
        effects = { {
            modifier = 1,
            type = "inserter-stack-size-bonus"
          } },
        icon = "__base__/graphics/technology/inserter-stack-size-bonus.png",
        name = "inserter-stack-size-bonus-2",
        order = "c-o-b",
        prerequisites = { "inserter-stack-size-bonus-1" },
        type = "technology",
        unit = {
          count = 60,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["inserter-stack-size-bonus-3"] = {
        effects = { {
            modifier = 1,
            type = "inserter-stack-size-bonus"
          } },
        icon = "__base__/graphics/technology/inserter-stack-size-bonus.png",
        name = "inserter-stack-size-bonus-3",
        order = "c-o-c",
        prerequisites = { "inserter-stack-size-bonus-2" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["inserter-stack-size-bonus-4"] = {
        effects = { {
            modifier = 1,
            type = "inserter-stack-size-bonus"
          } },
        icon = "__base__/graphics/technology/inserter-stack-size-bonus.png",
        name = "inserter-stack-size-bonus-4",
        order = "c-o-d",
        prerequisites = { "inserter-stack-size-bonus-3" },
        type = "technology",
        unit = {
          count = 300,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 2 } },
          time = 30
        },
        upgrade = "true"
      },
      ["land-mine"] = {
        effects = { {
            recipe = "land-mine",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/land-mine.png",
        name = "land-mine",
        order = "e-e",
        prerequisites = { "explosives", "military-2" },
        type = "technology",
        unit = {
          count = 20,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 15
        }
      },
      laser = {
        icon = "__base__/graphics/technology/laser.png",
        name = "laser",
        order = "a-h-b",
        prerequisites = { "optics", "advanced-electronics" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["laser-turret-damage-1"] = {
        effects = { {
            ammo_category = "laser-turret",
            modifier = "0.1",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/laser-turret-damage.png",
        name = "laser-turret-damage-1",
        order = "e-n-a",
        prerequisites = { "laser-turrets" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["laser-turret-damage-2"] = {
        effects = { {
            ammo_category = "laser-turret",
            modifier = "0.1",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/laser-turret-damage.png",
        name = "laser-turret-damage-2",
        order = "e-n-b",
        prerequisites = { "laser-turret-damage-1" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["laser-turret-damage-3"] = {
        effects = { {
            ammo_category = "laser-turret",
            modifier = "0.2",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/laser-turret-damage.png",
        name = "laser-turret-damage-3",
        order = "e-n-c",
        prerequisites = { "laser-turret-damage-2" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["laser-turret-damage-4"] = {
        effects = { {
            ammo_category = "laser-turret",
            modifier = "0.2",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/laser-turret-damage.png",
        name = "laser-turret-damage-4",
        order = "e-n-d",
        prerequisites = { "laser-turret-damage-3" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["laser-turret-damage-5"] = {
        effects = { {
            ammo_category = "laser-turret",
            modifier = "0.2",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/laser-turret-damage.png",
        name = "laser-turret-damage-5",
        order = "e-n-e",
        prerequisites = { "laser-turret-damage-4" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["laser-turret-damage-6"] = {
        effects = { {
            ammo_category = "laser-turret",
            modifier = "0.4",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/laser-turret-damage.png",
        name = "laser-turret-damage-6",
        order = "e-n-f",
        prerequisites = { "laser-turret-damage-5" },
        type = "technology",
        unit = {
          count = 300,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["laser-turret-speed-1"] = {
        effects = { {
            ammo_category = "laser-turret",
            modifier = "0.2",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/laser-turret-speed.png",
        name = "laser-turret-speed-1",
        order = "e-n-g",
        prerequisites = { "laser-turrets" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["laser-turret-speed-2"] = {
        effects = { {
            ammo_category = "laser-turret",
            modifier = "0.2",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/laser-turret-speed.png",
        name = "laser-turret-speed-2",
        order = "e-n-h",
        prerequisites = { "laser-turret-speed-1" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["laser-turret-speed-3"] = {
        effects = { {
            ammo_category = "laser-turret",
            modifier = "0.3",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/laser-turret-speed.png",
        name = "laser-turret-speed-3",
        order = "e-n-i",
        prerequisites = { "laser-turret-speed-2" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["laser-turret-speed-4"] = {
        effects = { {
            ammo_category = "laser-turret",
            modifier = "0.3",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/laser-turret-speed.png",
        name = "laser-turret-speed-4",
        order = "e-n-j",
        prerequisites = { "laser-turret-speed-3" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["laser-turret-speed-5"] = {
        effects = { {
            ammo_category = "laser-turret",
            modifier = "0.3",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/laser-turret-speed.png",
        name = "laser-turret-speed-5",
        order = "e-n-k",
        prerequisites = { "laser-turret-speed-4" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["laser-turret-speed-6"] = {
        effects = { {
            ammo_category = "laser-turret",
            modifier = "0.3",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/laser-turret-speed.png",
        name = "laser-turret-speed-6",
        order = "e-n-l",
        prerequisites = { "laser-turret-speed-5" },
        type = "technology",
        unit = {
          count = 300,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["laser-turrets"] = {
        effects = { {
            recipe = "laser-turret",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/laser-turrets.png",
        name = "laser-turrets",
        order = "a-j-b",
        prerequisites = { "turrets", "laser", "battery" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["logistic-robot-speed-1"] = {
        effects = { {
            modifier = "0.35",
            type = "logistic-robot-speed"
          } },
        icon = "__base__/graphics/technology/logistic-robot-speed.png",
        name = "logistic-robot-speed-1",
        order = "c-k-f-a",
        prerequisites = { "logistic-robotics" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["logistic-robot-speed-2"] = {
        effects = { {
            modifier = "0.4",
            type = "logistic-robot-speed"
          } },
        icon = "__base__/graphics/technology/logistic-robot-speed.png",
        name = "logistic-robot-speed-2",
        order = "c-k-f-b",
        prerequisites = { "logistic-robot-speed-1" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["logistic-robot-speed-3"] = {
        effects = { {
            modifier = "0.45",
            type = "logistic-robot-speed"
          } },
        icon = "__base__/graphics/technology/logistic-robot-speed.png",
        name = "logistic-robot-speed-3",
        order = "c-k-f-c",
        prerequisites = { "logistic-robot-speed-2" },
        type = "technology",
        unit = {
          count = 150,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["logistic-robot-speed-4"] = {
        effects = { {
            modifier = "0.55",
            type = "logistic-robot-speed"
          } },
        icon = "__base__/graphics/technology/logistic-robot-speed.png",
        name = "logistic-robot-speed-4",
        order = "c-k-f-d",
        prerequisites = { "logistic-robot-speed-3" },
        type = "technology",
        unit = {
          count = 250,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["logistic-robot-speed-5"] = {
        effects = { {
            modifier = "0.65",
            type = "logistic-robot-speed"
          } },
        icon = "__base__/graphics/technology/logistic-robot-speed.png",
        name = "logistic-robot-speed-5",
        order = "c-k-f-e",
        prerequisites = { "logistic-robot-speed-4" },
        type = "technology",
        unit = {
          count = 500,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["logistic-robot-storage-1"] = {
        effects = { {
            modifier = "1",
            type = "logistic-robot-storage"
          } },
        icon = "__base__/graphics/technology/logistic-robot-storage.png",
        name = "logistic-robot-storage-1",
        order = "c-k-g-a",
        prerequisites = { "logistic-robotics" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["logistic-robot-storage-2"] = {
        effects = { {
            modifier = "1",
            type = "logistic-robot-storage"
          } },
        icon = "__base__/graphics/technology/logistic-robot-storage.png",
        name = "logistic-robot-storage-2",
        order = "c-k-g-b",
        prerequisites = { "logistic-robot-storage-1" },
        type = "technology",
        unit = {
          count = 300,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["logistic-robot-storage-3"] = {
        effects = { {
            modifier = "1",
            type = "logistic-robot-storage"
          } },
        icon = "__base__/graphics/technology/logistic-robot-storage.png",
        name = "logistic-robot-storage-3",
        order = "c-k-g-c",
        prerequisites = { "logistic-robot-storage-2" },
        type = "technology",
        unit = {
          count = 450,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["logistic-robotics"] = {
        effects = { {
            recipe = "roboport",
            type = "unlock-recipe"
          }, {
            recipe = "logistic-chest-passive-provider",
            type = "unlock-recipe"
          }, {
            recipe = "logistic-robot",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/logistic-robotics.png",
        name = "logistic-robotics",
        order = "c-k-c",
        prerequisites = { "robotics", "flying" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["logistic-system"] = {
        effects = { {
            recipe = "logistic-chest-active-provider",
            type = "unlock-recipe"
          }, {
            recipe = "logistic-chest-requester",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/logistic-system.png",
        name = "logistic-system",
        order = "c-k-d",
        prerequisites = { "logistic-robotics" },
        type = "technology",
        unit = {
          count = 150,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        }
      },
      logistics = {
        effects = { {
            recipe = "basic-transport-belt-to-ground",
            type = "unlock-recipe"
          }, {
            recipe = "fast-inserter",
            type = "unlock-recipe"
          }, {
            recipe = "basic-splitter",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/logistics.png",
        name = "logistics",
        order = "a-f-a",
        type = "technology",
        unit = {
          count = 20,
          ingredients = { { "science-pack-1", 1 } },
          time = 15
        }
      },
      ["logistics-2"] = {
        effects = { {
            recipe = "fast-transport-belt",
            type = "unlock-recipe"
          }, {
            recipe = "fast-transport-belt-to-ground",
            type = "unlock-recipe"
          }, {
            recipe = "fast-splitter",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/logistics.png",
        name = "logistics-2",
        order = "a-f-b",
        prerequisites = { "logistics" },
        type = "technology",
        unit = {
          count = 40,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["logistics-3"] = {
        effects = { {
            recipe = "express-transport-belt",
            type = "unlock-recipe"
          }, {
            recipe = "express-transport-belt-to-ground",
            type = "unlock-recipe"
          }, {
            recipe = "express-splitter",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/logistics.png",
        name = "logistics-3",
        order = "a-f-c",
        prerequisites = { "logistics-2", "automation-3" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 15
        }
      },
      military = {
        effects = { {
            recipe = "submachine-gun",
            type = "unlock-recipe"
          }, {
            recipe = "shotgun",
            type = "unlock-recipe"
          }, {
            recipe = "shotgun-shell",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/military.png",
        name = "military",
        order = "e-a-a",
        type = "technology",
        unit = {
          count = 10,
          ingredients = { { "science-pack-1", 1 } },
          time = 15
        }
      },
      ["military-2"] = {
        effects = { {
            recipe = "piercing-bullet-magazine",
            type = "unlock-recipe"
          }, {
            recipe = "basic-grenade",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/military.png",
        name = "military-2",
        order = "e-a-b",
        prerequisites = { "military", "steel-processing" },
        type = "technology",
        unit = {
          count = 20,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 15
        }
      },
      ["military-3"] = {
        effects = { {
            recipe = "poison-capsule",
            type = "unlock-recipe"
          }, {
            recipe = "slowdown-capsule",
            type = "unlock-recipe"
          }, {
            recipe = "combat-shotgun",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/military.png",
        name = "military-3",
        order = "e-a-c",
        prerequisites = { "military-2", "laser", "rocketry" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 2 }, { "science-pack-3", 1 } },
          time = 30
        }
      },
      ["military-4"] = {
        effects = { {
            recipe = "piercing-shotgun-shell",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/military.png",
        name = "military-4",
        order = "e-a-d",
        prerequisites = { "military-3" },
        type = "technology",
        unit = {
          count = 150,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 2 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 45
        }
      },
      modules = {
        icon = "__base__/graphics/technology/module.png",
        name = "modules",
        order = "i-a",
        prerequisites = { "advanced-electronics" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["night-vision-equipment"] = {
        effects = { {
            recipe = "night-vision-equipment",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/night-vision-equipment.png",
        name = "night-vision-equipment",
        order = "g-g",
        prerequisites = { "armor-making-3" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 15
        }
      },
      ["oil-processing"] = {
        effects = { {
            recipe = "pumpjack",
            type = "unlock-recipe"
          }, {
            recipe = "oil-refinery",
            type = "unlock-recipe"
          }, {
            recipe = "chemical-plant",
            type = "unlock-recipe"
          }, {
            recipe = "basic-oil-processing",
            type = "unlock-recipe"
          }, {
            recipe = "solid-fuel-from-light-oil",
            type = "unlock-recipe"
          }, {
            recipe = "solid-fuel-from-petroleum-gas",
            type = "unlock-recipe"
          }, {
            recipe = "solid-fuel-from-heavy-oil",
            type = "unlock-recipe"
          }, {
            recipe = "lubricant",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/oil-gathering.png",
        name = "oil-processing",
        order = "d-a",
        prerequisites = { "steel-processing" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      optics = {
        effects = { {
            recipe = "small-lamp",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/optics.png",
        name = "optics",
        order = "a-h-a",
        type = "technology",
        unit = {
          count = 10,
          ingredients = { { "science-pack-1", 1 } },
          time = 15
        }
      },
      plastics = {
        effects = { {
            recipe = "plastic-bar",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/plastics.png",
        name = "plastics",
        order = "d-d",
        prerequisites = { "oil-processing" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["power-armor"] = {
        effects = { {
            recipe = "power-armor",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/power-armor.png",
        name = "power-armor",
        order = "g-c-a",
        prerequisites = { "armor-making-3", "electric-engine" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        }
      },
      ["power-armor-2"] = {
        effects = { {
            recipe = "power-armor-mk2",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/power-armor-mk2.png",
        name = "power-armor-2",
        order = "g-c-b",
        prerequisites = { "power-armor", "alien-technology", "speed-module-3", "effectivity-module-3" },
        type = "technology",
        unit = {
          count = 150,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 3 } },
          time = 30
        }
      },
      ["productivity-module"] = {
        effects = { {
            recipe = "productivity-module",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/productivity-module.png",
        name = "productivity-module",
        order = "i-e-a",
        prerequisites = { "modules" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = true
      },
      ["productivity-module-2"] = {
        effects = { {
            recipe = "productivity-module-2",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/productivity-module.png",
        name = "productivity-module-2",
        order = "i-e-b",
        prerequisites = { "productivity-module" },
        type = "technology",
        unit = {
          count = 75,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        },
        upgrade = true
      },
      ["productivity-module-3"] = {
        effects = { {
            recipe = "productivity-module-3",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/productivity-module.png",
        name = "productivity-module-3",
        order = "i-e-c",
        prerequisites = { "productivity-module-2" },
        type = "technology",
        unit = {
          count = 300,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 60
        },
        upgrade = true
      },
      ["rail-signals"] = {
        effects = { {
            recipe = "rail-signal",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/rail-signals.png",
        name = "rail-signals",
        order = "c-g-c",
        prerequisites = { "automated-rail-transportation" },
        type = "technology",
        unit = {
          count = 150,
          ingredients = { { "science-pack-1", 2 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      railway = {
        effects = { {
            recipe = "straight-rail",
            type = "unlock-recipe"
          }, {
            recipe = "curved-rail",
            type = "unlock-recipe"
          }, {
            recipe = "diesel-locomotive",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/railway.png",
        name = "railway",
        order = "c-g-a",
        prerequisites = { "logistics-2", "steel-processing", "engine" },
        type = "technology",
        unit = {
          count = 70,
          ingredients = { { "science-pack-1", 2 }, { "science-pack-2", 1 } },
          time = 20
        }
      },
      ["research-effectivity-1"] = {
        effects = { {
            modifier = 0.2,
            type = "laboratory-speed"
          } },
        icon = "__base__/graphics/technology/research-effectivity.png",
        name = "research-effectivity-1",
        order = "c-m-a",
        prerequisites = { "electronics" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["research-effectivity-2"] = {
        effects = { {
            modifier = 0.3,
            type = "laboratory-speed"
          } },
        icon = "__base__/graphics/technology/research-effectivity.png",
        name = "research-effectivity-2",
        order = "c-m-b",
        prerequisites = { "research-effectivity-1" },
        type = "technology",
        unit = {
          count = 150,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["research-effectivity-3"] = {
        effects = { {
            modifier = 0.4,
            type = "laboratory-speed"
          } },
        icon = "__base__/graphics/technology/research-effectivity.png",
        name = "research-effectivity-3",
        order = "c-m-c",
        prerequisites = { "research-effectivity-2" },
        type = "technology",
        unit = {
          count = 250,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["research-effectivity-4"] = {
        effects = { {
            modifier = 0.5,
            type = "laboratory-speed"
          } },
        icon = "__base__/graphics/technology/research-effectivity.png",
        name = "research-effectivity-4",
        order = "c-m-d",
        prerequisites = { "research-effectivity-3" },
        type = "technology",
        unit = {
          count = 500,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      robotics = {
        effects = { {
            recipe = "flying-robot-frame",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/robotics.png",
        name = "robotics",
        order = "c-i",
        prerequisites = { "advanced-electronics-2", "electric-engine", "battery" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["rocket-damage-1"] = {
        effects = { {
            ammo_category = "rocket",
            modifier = "0.1",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/rocket-damage.png",
        name = "rocket-damage-1",
        order = "e-j-a",
        prerequisites = { "rocketry", "alien-technology" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["rocket-damage-2"] = {
        effects = { {
            ammo_category = "rocket",
            modifier = "0.1",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/rocket-damage.png",
        name = "rocket-damage-2",
        order = "e-j-b",
        prerequisites = { "rocket-damage-1" },
        type = "technology",
        unit = {
          count = 250,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["rocket-damage-3"] = {
        effects = { {
            ammo_category = "rocket",
            modifier = "0.2",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/rocket-damage.png",
        name = "rocket-damage-3",
        order = "e-j-c",
        prerequisites = { "rocket-damage-2" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["rocket-damage-4"] = {
        effects = { {
            ammo_category = "rocket",
            modifier = "0.2",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/rocket-damage.png",
        name = "rocket-damage-4",
        order = "e-j-d",
        prerequisites = { "rocket-damage-3" },
        type = "technology",
        unit = {
          count = 150,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["rocket-damage-5"] = {
        effects = { {
            ammo_category = "rocket",
            modifier = "0.2",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/rocket-damage.png",
        name = "rocket-damage-5",
        order = "e-j-e",
        prerequisites = { "rocket-damage-4" },
        type = "technology",
        unit = {
          count = 300,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["rocket-defense"] = {
        effects = { {
            recipe = "rocket-defense",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/rocket-defense.png",
        name = "rocket-defense",
        order = "k-a",
        prerequisites = { "rocketry", "advanced-electronics-2", "rocket-speed-5", "speed-module-3", "productivity-module-3" },
        type = "technology",
        unit = {
          count = 1000,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        }
      },
      ["rocket-speed-1"] = {
        effects = { {
            ammo_category = "rocket",
            modifier = "0.2",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/rocket-speed.png",
        name = "rocket-speed-1",
        order = "e-j-f",
        prerequisites = { "rocketry", "alien-technology" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["rocket-speed-2"] = {
        effects = { {
            ammo_category = "rocket",
            modifier = "0.2",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/rocket-speed.png",
        name = "rocket-speed-2",
        order = "e-j-g",
        prerequisites = { "rocket-speed-1" },
        type = "technology",
        unit = {
          count = 250,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["rocket-speed-3"] = {
        effects = { {
            ammo_category = "rocket",
            modifier = "0.3",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/rocket-speed.png",
        name = "rocket-speed-3",
        order = "e-j-h",
        prerequisites = { "rocket-speed-2" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["rocket-speed-4"] = {
        effects = { {
            ammo_category = "rocket",
            modifier = "0.3",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/rocket-speed.png",
        name = "rocket-speed-4",
        order = "e-j-i",
        prerequisites = { "rocket-speed-3" },
        type = "technology",
        unit = {
          count = 150,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["rocket-speed-5"] = {
        effects = { {
            ammo_category = "rocket",
            modifier = "0.3",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/rocket-speed.png",
        name = "rocket-speed-5",
        order = "e-j-j",
        prerequisites = { "rocket-speed-4" },
        type = "technology",
        unit = {
          count = 300,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["rocket-travel"] = {
        enabled = false,
        icon = "__base__/graphics/technology/rocket-travel.png",
        name = "rocket-travel",
        order = "e-h",
        prerequisites = { "rocket-speed-2", "logistics-3" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 2 } },
          time = 15
        }
      },
      rocketry = {
        effects = { {
            recipe = "rocket-launcher",
            type = "unlock-recipe"
          }, {
            recipe = "rocket",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/rocketry.png",
        name = "rocketry",
        order = "e-g",
        prerequisites = { "electronics", "flammables", "explosives" },
        type = "technology",
        unit = {
          count = 80,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 15
        }
      },
      ["shotgun-shell-damage-1"] = {
        effects = { {
            ammo_category = "shotgun-shell",
            modifier = "0.1",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/shotgun-shell-damage.png",
        name = "shotgun-shell-damage-1",
        order = "e-n-a",
        prerequisites = { "military" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["shotgun-shell-damage-2"] = {
        effects = { {
            ammo_category = "shotgun-shell",
            modifier = "0.1",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/shotgun-shell-damage.png",
        name = "shotgun-shell-damage-2",
        order = "e-n-b",
        prerequisites = { "shotgun-shell-damage-1" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["shotgun-shell-damage-3"] = {
        effects = { {
            ammo_category = "shotgun-shell",
            modifier = "0.2",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/shotgun-shell-damage.png",
        name = "shotgun-shell-damage-3",
        order = "e-n-c",
        prerequisites = { "shotgun-shell-damage-2" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["shotgun-shell-damage-4"] = {
        effects = { {
            ammo_category = "shotgun-shell",
            modifier = "0.2",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/shotgun-shell-damage.png",
        name = "shotgun-shell-damage-4",
        order = "e-n-d",
        prerequisites = { "shotgun-shell-damage-3" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["shotgun-shell-damage-5"] = {
        effects = { {
            ammo_category = "shotgun-shell",
            modifier = "0.2",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/shotgun-shell-damage.png",
        name = "shotgun-shell-damage-5",
        order = "e-n-e",
        prerequisites = { "shotgun-shell-damage-4" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["shotgun-shell-damage-6"] = {
        effects = { {
            ammo_category = "shotgun-shell",
            modifier = "0.4",
            type = "ammo-damage"
          } },
        icon = "__base__/graphics/technology/shotgun-shell-damage.png",
        name = "shotgun-shell-damage-6",
        order = "e-n-f",
        prerequisites = { "shotgun-shell-damage-5" },
        type = "technology",
        unit = {
          count = 300,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["shotgun-shell-speed-1"] = {
        effects = { {
            ammo_category = "shotgun-shell",
            modifier = "0.2",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/shotgun-shell-speed.png",
        name = "shotgun-shell-speed-1",
        order = "e-n-g",
        prerequisites = { "military" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["shotgun-shell-speed-2"] = {
        effects = { {
            ammo_category = "shotgun-shell",
            modifier = "0.2",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/shotgun-shell-speed.png",
        name = "shotgun-shell-speed-2",
        order = "e-n-h",
        prerequisites = { "shotgun-shell-speed-1" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 } },
          time = 30
        },
        upgrade = "true"
      },
      ["shotgun-shell-speed-3"] = {
        effects = { {
            ammo_category = "shotgun-shell",
            modifier = "0.3",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/shotgun-shell-speed.png",
        name = "shotgun-shell-speed-3",
        order = "e-n-i",
        prerequisites = { "shotgun-shell-speed-2" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["shotgun-shell-speed-4"] = {
        effects = { {
            ammo_category = "shotgun-shell",
            modifier = "0.3",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/shotgun-shell-speed.png",
        name = "shotgun-shell-speed-4",
        order = "e-n-j",
        prerequisites = { "shotgun-shell-speed-3" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["shotgun-shell-speed-5"] = {
        effects = { {
            ammo_category = "shotgun-shell",
            modifier = "0.3",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/shotgun-shell-speed.png",
        name = "shotgun-shell-speed-5",
        order = "e-n-k",
        prerequisites = { "shotgun-shell-speed-4" },
        type = "technology",
        unit = {
          count = 200,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["shotgun-shell-speed-6"] = {
        effects = { {
            ammo_category = "shotgun-shell",
            modifier = "0.3",
            type = "gun-speed"
          } },
        icon = "__base__/graphics/technology/shotgun-shell-speed.png",
        name = "shotgun-shell-speed-6",
        order = "e-n-l",
        prerequisites = { "shotgun-shell-speed-5" },
        type = "technology",
        unit = {
          count = 300,
          ingredients = { { "alien-science-pack", 1 }, { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 60
        },
        upgrade = "true"
      },
      ["solar-energy"] = {
        effects = { {
            recipe = "solar-panel",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/solar-energy.png",
        name = "solar-energy",
        order = "a-h-c",
        prerequisites = { "optics", "advanced-electronics", "steel-processing" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      ["solar-panel-equipment"] = {
        effects = { {
            recipe = "solar-panel-equipment",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/solar-panel-equipment.png",
        name = "solar-panel-equipment",
        order = "g-k",
        prerequisites = { "armor-making-3" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 15
        }
      },
      ["speed-module"] = {
        effects = { {
            recipe = "speed-module",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/speed-module.png",
        name = "speed-module",
        order = "i-c-a",
        prerequisites = { "modules" },
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        },
        upgrade = true
      },
      ["speed-module-2"] = {
        effects = { {
            recipe = "speed-module-2",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/speed-module.png",
        name = "speed-module-2",
        order = "i-c-b",
        prerequisites = { "speed-module" },
        type = "technology",
        unit = {
          count = 75,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 30
        },
        upgrade = true
      },
      ["speed-module-3"] = {
        effects = { {
            recipe = "speed-module-3",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/speed-module.png",
        name = "speed-module-3",
        order = "i-c-c",
        prerequisites = { "speed-module-2" },
        type = "technology",
        unit = {
          count = 300,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 }, { "alien-science-pack", 1 } },
          time = 60
        },
        upgrade = true
      },
      ["steel-processing"] = {
        effects = { {
            recipe = "steel-plate",
            type = "unlock-recipe"
          }, {
            recipe = "steel-chest",
            type = "unlock-recipe"
          }, {
            recipe = "steel-axe",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/steel-processing.png",
        name = "steel-processing",
        order = "c-a",
        type = "technology",
        unit = {
          count = 20,
          ingredients = { { "science-pack-1", 1 } },
          time = 5
        }
      },
      ["stone-walls"] = {
        effects = { {
            recipe = "stone-wall",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/stone-walls.png",
        name = "stone-walls",
        order = "a-k-a",
        type = "technology",
        unit = {
          count = 10,
          ingredients = { { "science-pack-1", 1 } },
          time = 10
        }
      },
      ["sulfur-processing"] = {
        effects = { {
            recipe = "sulfuric-acid",
            type = "unlock-recipe"
          }, {
            recipe = "sulfur",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/sulfur-processing.png",
        name = "sulfur-processing",
        order = "d-c",
        prerequisites = { "oil-processing" },
        type = "technology",
        unit = {
          count = 100,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      tanks = {
        effects = { {
            recipe = "tank",
            type = "unlock-recipe"
          }, {
            recipe = "cannon-shell",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/icons/tank.png",
        name = "tanks",
        order = "e-c-c",
        prerequisites = { "automobilism", "military-3" },
        type = "technology",
        unit = {
          count = 20,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 }, { "science-pack-3", 1 } },
          time = 20
        }
      },
      toolbelt = {
        effects = { {
            modifier = 1,
            type = "num-quick-bars"
          } },
        icon = "__base__/graphics/technology/toolbelt.png",
        name = "toolbelt",
        order = "c-k-m",
        type = "technology",
        unit = {
          count = 50,
          ingredients = { { "science-pack-1", 1 }, { "science-pack-2", 1 } },
          time = 30
        }
      },
      turrets = {
        effects = { {
            recipe = "gun-turret",
            type = "unlock-recipe"
          } },
        icon = "__base__/graphics/technology/turrets.png",
        name = "turrets",
        order = "a-j-a",
        type = "technology",
        unit = {
          count = 10,
          ingredients = { { "science-pack-1", 1 } },
          time = 10
        }
      }
    },
    tile = {
      deepwater = {
        allowed_neighbors = { "water" },
        autoplace = {
          peaks = { {
              elevation_max_range = 5000,
              elevation_optimal = -5250,
              elevation_range = 5000,
              influence = 1250
            }, {
              influence = 1
            } }
        },
        collision_mask = { "water-tile", "resource-layer", "item-layer", "player-layer", "doodad-layer" },
        layer = 45,
        map_color = {
          b = 0.345,
          g = 0.2823,
          r = 0.0941
        },
        name = "deepwater",
        type = "tile",
        variants = {
          inner_corner = {
            count = 6,
            picture = "__base__/graphics/terrain/deepwater/deepwater-inner-corner.png"
          },
          main = { {
              count = 8,
              picture = "__base__/graphics/terrain/deepwater/deepwater1.png",
              size = 1
            }, {
              count = 8,
              picture = "__base__/graphics/terrain/deepwater/deepwater2.png",
              size = 2
            }, {
              count = 6,
              picture = "__base__/graphics/terrain/deepwater/deepwater4.png",
              size = 4
            } },
          outer_corner = {
            count = 6,
            picture = "__base__/graphics/terrain/deepwater/deepwater-outer-corner.png"
          },
          side = {
            count = 8,
            picture = "__base__/graphics/terrain/deepwater/deepwater-side.png"
          }
        }
      },
      ["deepwater-green"] = {
        allowed_neighbors = { "water-green" },
        autoplace = {
          peaks = { {
              elevation_max_range = 5000,
              elevation_optimal = -5250,
              elevation_range = 5000,
              influence = 1250
            }, {
              influence = 1,
              min_influence = 0,
              temperature_max_range = 15,
              temperature_optimal = 25,
              temperature_range = 10,
              water_max_range = 0.25,
              water_optimal = 0.85,
              water_range = 0.15
            } }
        },
        collision_mask = { "water-tile", "resource-layer", "item-layer", "player-layer", "doodad-layer" },
        layer = 45,
        map_color = {
          b = 0.066,
          g = 0.149,
          r = 0.0941
        },
        name = "deepwater-green",
        type = "tile",
        variants = {
          inner_corner = {
            count = 6,
            picture = "__base__/graphics/terrain/deepwater-green/deepwater-green-inner-corner.png"
          },
          main = { {
              count = 8,
              picture = "__base__/graphics/terrain/deepwater-green/deepwater-green1.png",
              size = 1
            }, {
              count = 8,
              picture = "__base__/graphics/terrain/deepwater-green/deepwater-green2.png",
              size = 2
            }, {
              count = 6,
              picture = "__base__/graphics/terrain/deepwater-green/deepwater-green4.png",
              size = 4
            } },
          outer_corner = {
            count = 6,
            picture = "__base__/graphics/terrain/deepwater-green/deepwater-green-outer-corner.png"
          },
          side = {
            count = 8,
            picture = "__base__/graphics/terrain/deepwater-green/deepwater-green-side.png"
          }
        }
      },
      dirt = {
        autoplace = {
          peaks = { {
              influence = 0.1,
              noise_layer = "dirt",
              noise_persistence = 0.7,
              octaves_difference = -1
            }, {
              influence = 0.95,
              min_influence = 0,
              temperature_max_range = 27.5,
              temperature_optimal = 12.5,
              temperature_range = 22.5,
              water_max_range = 0.3,
              water_optimal = 0.2,
              water_range = 0.2
            } }
        },
        collision_mask = { "ground-tile" },
        layer = 25,
        map_color = {
          b = 34,
          g = 91,
          r = 132
        },
        name = "dirt",
        type = "tile",
        variants = {
          inner_corner = {
            count = 8,
            picture = "__base__/graphics/terrain/dirt/dirt-inner-corner.png"
          },
          main = { {
              count = 22,
              picture = "__base__/graphics/terrain/dirt/dirt1.png",
              size = 1,
              weights = { 0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045, 0.005, 0.005, 0.005, 0.005, 0.003, 0.005 }
            }, {
              count = 30,
              picture = "__base__/graphics/terrain/dirt/dirt2.png",
              probability = 1,
              size = 2,
              weights = { 0.07, 0.07, 0.025, 0.07, 0.07, 0.07, 0.007, 0.025, 0.07, 0.05, 0.015, 0.026, 0.03, 0.005, 0.07, 0.027, 0.022, 0.032, 0.02, 0.02, 0.03, 0.005, 0.01, 0.002, 0.013, 0.007, 0.007, 0.01, 0.03, 0.03 }
            }, {
              count = 21,
              line_length = 11,
              picture = "__base__/graphics/terrain/dirt/dirt4.png",
              probability = 1,
              size = 4,
              weights = { 0.07, 0.07, 0.07, 0.07, 0.07, 0.07, 0.015, 0.07, 0.07, 0.07, 0.015, 0.05, 0.07, 0.07, 0.065, 0.07, 0.07, 0.05, 0.05, 0.05, 0.05 }
            } },
          outer_corner = {
            count = 8,
            picture = "__base__/graphics/terrain/dirt/dirt-outer-corner.png"
          },
          side = {
            count = 8,
            picture = "__base__/graphics/terrain/dirt/dirt-side.png"
          }
        },
        walking_sound = { {
            filename = "__base__/sound/walking/dirt-02.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/dirt-03.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/dirt-04.ogg",
            volume = 0.8
          } }
      },
      ["dirt-dark"] = {
        autoplace = {
          peaks = { {
              influence = 0.1,
              noise_layer = "dirt-dark",
              noise_persistence = 0.7,
              octaves_difference = -1
            }, {
              influence = 0.5,
              min_influence = 0,
              temperature_max_range = 27.5,
              temperature_optimal = 12.5,
              temperature_range = 22.5,
              water_max_range = 0.3,
              water_optimal = 0.2,
              water_range = 0.2
            } }
        },
        collision_mask = { "ground-tile" },
        layer = 26,
        map_color = {
          b = 29,
          g = 80,
          r = 115
        },
        name = "dirt-dark",
        type = "tile",
        variants = {
          inner_corner = {
            count = 8,
            picture = "__base__/graphics/terrain/dirt-dark/dirt-dark-inner-corner.png"
          },
          main = { {
              count = 22,
              picture = "__base__/graphics/terrain/dirt-dark/dirt-dark1.png",
              size = 1,
              weights = { 0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045, 0.005, 0.005, 0.005, 0.005, 0.003, 0.005 }
            }, {
              count = 30,
              picture = "__base__/graphics/terrain/dirt-dark/dirt-dark2.png",
              probability = 0.94,
              size = 2,
              weights = { 0.07, 0.07, 0.025, 0.07, 0.07, 0.07, 0.007, 0.025, 0.07, 0.05, 0.015, 0.026, 0.03, 0.005, 0.07, 0.027, 0.022, 0.032, 0.02, 0.02, 0.03, 0.005, 0.01, 0.002, 0.013, 0.007, 0.007, 0.01, 0.03, 0.03 }
            }, {
              count = 21,
              line_length = 11,
              picture = "__base__/graphics/terrain/dirt-dark/dirt-dark4.png",
              probability = 1,
              size = 4,
              weights = { 0.07, 0.07, 0.07, 0.07, 0.07, 0.07, 0.015, 0.07, 0.07, 0.07, 0.015, 0.05, 0.07, 0.07, 0.065, 0.07, 0.07, 0.05, 0.05, 0.05, 0.05 }
            } },
          outer_corner = {
            count = 8,
            picture = "__base__/graphics/terrain/dirt-dark/dirt-dark-outer-corner.png"
          },
          side = {
            count = 8,
            picture = "__base__/graphics/terrain/dirt-dark/dirt-dark-side.png"
          }
        },
        walking_sound = { {
            filename = "__base__/sound/walking/dirt-02.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/dirt-03.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/dirt-04.ogg",
            volume = 0.8
          } }
      },
      grass = {
        autoplace = {
          peaks = { {
              influence = 0.1,
              noise_layer = "grass",
              noise_persistence = 0.7,
              octaves_difference = -1
            }, {
              influence = 1,
              min_influence = 0,
              temperature_max_range = 22.5,
              temperature_optimal = 17.5,
              temperature_range = 17.5,
              water_max_range = 0.3,
              water_optimal = 0.6,
              water_range = 0.2
            } }
        },
        collision_mask = { "ground-tile" },
        layer = 20,
        map_color = {
          b = 17,
          g = 51,
          r = 61
        },
        name = "grass",
        type = "tile",
        variants = {
          inner_corner = {
            count = 8,
            picture = "__base__/graphics/terrain/grass/grass-inner-corner.png"
          },
          main = { {
              count = 16,
              picture = "__base__/graphics/terrain/grass/grass1.png",
              size = 1
            }, {
              count = 20,
              picture = "__base__/graphics/terrain/grass/grass2.png",
              probability = 0.91,
              size = 2,
              weights = { 0.15, 0.15, 0.15, 0.15, 0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01 }
            }, {
              count = 20,
              line_length = 10,
              picture = "__base__/graphics/terrain/grass/grass4.png",
              probability = 1,
              size = 4,
              weights = { 0.1, 0.8, 0.8, 0.1, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01 }
            } },
          outer_corner = {
            count = 8,
            picture = "__base__/graphics/terrain/grass/grass-outer-corner.png"
          },
          side = {
            count = 8,
            picture = "__base__/graphics/terrain/grass/grass-side.png"
          }
        },
        walking_sound = { {
            filename = "__base__/sound/walking/grass-01.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/grass-02.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/grass-03.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/grass-04.ogg",
            volume = 0.8
          } }
      },
      ["grass-dry"] = {
        autoplace = {
          peaks = { {
              influence = 0.1,
              noise_layer = "grass-dry",
              noise_persistence = 0.7,
              octaves_difference = -1
            }, {
              influence = 1,
              min_influence = 0,
              temperature_max_range = 17.5,
              temperature_optimal = 22.5,
              temperature_range = 12.5,
              water_max_range = 0.2,
              water_optimal = 0.4,
              water_range = 0.1
            }, {
              influence = 1,
              min_influence = 0,
              temperature_max_range = 12.5,
              temperature_optimal = -2.5,
              temperature_range = 7.5,
              water_max_range = 0.35,
              water_optimal = 0.35,
              water_range = 0.25
            } }
        },
        collision_mask = { "ground-tile" },
        layer = 4,
        map_color = {
          b = 14,
          g = 38,
          r = 53
        },
        name = "grass-dry",
        type = "tile",
        variants = {
          inner_corner = {
            count = 8,
            picture = "__base__/graphics/terrain/grass-dry/grass-dry-inner-corner.png"
          },
          main = { {
              count = 8,
              picture = "__base__/graphics/terrain/grass-dry/grass-dry1.png",
              size = 1
            }, {
              count = 16,
              picture = "__base__/graphics/terrain/grass-dry/grass-dry2.png",
              probability = 0.91,
              size = 2,
              weights = { 0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01 }
            }, {
              count = 20,
              line_length = 10,
              picture = "__base__/graphics/terrain/grass-dry/grass-dry4.png",
              probability = 1,
              size = 4,
              weights = { 0.1, 0.8, 0.8, 0.1, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01 }
            } },
          outer_corner = {
            count = 8,
            picture = "__base__/graphics/terrain/grass-dry/grass-dry-outer-corner.png"
          },
          side = {
            count = 8,
            picture = "__base__/graphics/terrain/grass-dry/grass-dry-side.png"
          }
        },
        walking_sound = { {
            filename = "__base__/sound/walking/grass-01.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/grass-02.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/grass-03.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/grass-04.ogg",
            volume = 0.8
          } }
      },
      ["grass-medium"] = {
        autoplace = {
          peaks = { {
              influence = 0.1,
              noise_layer = "grass-medium",
              noise_persistence = 0.7,
              octaves_difference = -1
            }, {
              influence = 1,
              min_influence = 0,
              temperature_max_range = 17.5,
              temperature_optimal = 22.5,
              temperature_range = 12.5,
              water_max_range = 0.25,
              water_optimal = 0.85,
              water_range = 0.15
            } }
        },
        collision_mask = { "ground-tile" },
        layer = 5,
        map_color = {
          b = 19,
          g = 47,
          r = 58
        },
        name = "grass-medium",
        type = "tile",
        variants = {
          inner_corner = {
            count = 8,
            picture = "__base__/graphics/terrain/grass-medium/grass-medium-inner-corner.png"
          },
          main = { {
              count = 8,
              picture = "__base__/graphics/terrain/grass-medium/grass-medium1.png",
              size = 1
            }, {
              count = 20,
              picture = "__base__/graphics/terrain/grass-medium/grass-medium2.png",
              probability = 0.91,
              size = 2,
              weights = { 0.15, 0.15, 0.15, 0.15, 0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01 }
            }, {
              count = 20,
              line_length = 10,
              picture = "__base__/graphics/terrain/grass-medium/grass-medium4.png",
              probability = 1,
              size = 4,
              weights = { 0.1, 0.8, 0.8, 0.1, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01 }
            } },
          outer_corner = {
            count = 8,
            picture = "__base__/graphics/terrain/grass-medium/grass-medium-outer-corner.png"
          },
          side = {
            count = 8,
            picture = "__base__/graphics/terrain/grass-medium/grass-medium-side.png"
          }
        },
        walking_sound = { {
            filename = "__base__/sound/walking/grass-01.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/grass-02.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/grass-03.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/grass-04.ogg",
            volume = 0.8
          } }
      },
      ["out-of-map"] = {
        collision_mask = { "ground-tile", "water-tile", "resource-layer", "floor-layer", "item-layer", "object-layer", "player-layer", "doodad-layer" },
        layer = 60,
        map_color = {
          b = 0,
          g = 0,
          r = 0
        },
        name = "out-of-map",
        type = "tile",
        variants = {
          inner_corner = {
            count = 0,
            picture = "__base__/graphics/terrain/out-of-map-inner-corner.png"
          },
          main = { {
              count = 1,
              picture = "__base__/graphics/terrain/out-of-map.png",
              size = 1
            } },
          outer_corner = {
            count = 0,
            picture = "__base__/graphics/terrain/out-of-map-outer-corner.png"
          },
          side = {
            count = 0,
            picture = "__base__/graphics/terrain/out-of-map-side.png"
          }
        }
      },
      sand = {
        autoplace = {
          peaks = { {
              influence = 0.1,
              noise_layer = "sand",
              noise_persistence = 0.7,
              octaves_difference = -1
            }, {
              influence = 1,
              min_influence = 0,
              temperature_max_range = 22.5,
              temperature_optimal = 17.5,
              temperature_range = 17.5,
              water_max_range = 0.2,
              water_optimal = 0.1,
              water_range = 0.1
            } }
        },
        collision_mask = { "ground-tile" },
        layer = 35,
        map_color = {
          b = 54,
          g = 126,
          r = 160
        },
        name = "sand",
        type = "tile",
        variants = {
          inner_corner = {
            count = 8,
            picture = "__base__/graphics/terrain/sand/sand-inner-corner.png"
          },
          main = { {
              count = 16,
              picture = "__base__/graphics/terrain/sand/sand1.png",
              size = 1
            }, {
              count = 16,
              picture = "__base__/graphics/terrain/sand/sand2.png",
              probability = 0.39,
              size = 2,
              weights = { 0.025, 0.01, 0.013, 0.025, 0.025, 0.1, 0.1, 0.005, 0.01, 0.01, 0.005, 0.005, 0.001, 0.015, 0.02, 0.02 }
            }, {
              count = 22,
              line_length = 11,
              picture = "__base__/graphics/terrain/sand/sand4.png",
              probability = 1,
              size = 4,
              weights = { 0.09, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.005, 0.01, 0.1, 0.1, 0.01, 0.02, 0.02, 0.01, 0.1, 0.025, 0.1, 0.1, 0.1 }
            } },
          outer_corner = {
            count = 8,
            picture = "__base__/graphics/terrain/sand/sand-outer-corner.png"
          },
          side = {
            count = 8,
            picture = "__base__/graphics/terrain/sand/sand-side.png"
          }
        },
        walking_sound = { {
            filename = "__base__/sound/walking/sand-01.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/sand-02.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/sand-03.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/sand-04.ogg",
            volume = 0.8
          } }
      },
      ["sand-dark"] = {
        autoplace = {
          peaks = { {
              influence = 0.1,
              noise_layer = "sand-dark",
              noise_persistence = 0.7,
              octaves_difference = -1
            }, {
              influence = 1,
              min_influence = 0,
              temperature_max_range = 25,
              temperature_optimal = 15,
              temperature_range = 20,
              water_max_range = 0.2,
              water_optimal = 0.2,
              water_range = 0.1
            } }
        },
        collision_mask = { "ground-tile" },
        layer = 36,
        map_color = {
          b = 39,
          g = 104,
          r = 139
        },
        name = "sand-dark",
        type = "tile",
        variants = {
          inner_corner = {
            count = 8,
            picture = "__base__/graphics/terrain/sand-dark/sand-dark-inner-corner.png"
          },
          main = { {
              count = 16,
              picture = "__base__/graphics/terrain/sand-dark/sand-dark1.png",
              size = 1
            }, {
              count = 16,
              picture = "__base__/graphics/terrain/sand-dark/sand-dark2.png",
              probability = 0.39,
              size = 2,
              weights = { 0.025, 0.01, 0.013, 0.025, 0.025, 0.1, 0.1, 0.005, 0.01, 0.01, 0.005, 0.005, 0.001, 0.015, 0.02, 0.02 }
            }, {
              count = 22,
              line_length = 11,
              picture = "__base__/graphics/terrain/sand-dark/sand-dark4.png",
              probability = 1,
              size = 4,
              weights = { 0.09, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.005, 0.01, 0.1, 0.1, 0.01, 0.02, 0.02, 0.01, 0.1, 0.025, 0.1, 0.1, 0.1 }
            } },
          outer_corner = {
            count = 8,
            picture = "__base__/graphics/terrain/sand-dark/sand-dark-outer-corner.png"
          },
          side = {
            count = 8,
            picture = "__base__/graphics/terrain/sand-dark/sand-dark-side.png"
          }
        },
        walking_sound = { {
            filename = "__base__/sound/walking/sand-01.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/sand-02.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/sand-03.ogg",
            volume = 0.8
          }, {
            filename = "__base__/sound/walking/sand-04.ogg",
            volume = 0.8
          } }
      },
      water = {
        allowed_neighbors = { "grass" },
        autoplace = {
          peaks = { {
              elevation_max_range = 5000,
              elevation_optimal = -5000,
              elevation_range = 5000,
              influence = 1000
            }, {
              influence = 1
            } }
        },
        collision_mask = { "water-tile", "item-layer", "resource-layer", "player-layer", "doodad-layer" },
        layer = 40,
        map_color = {
          b = 0.4196,
          g = 0.3568,
          r = 0.0941
        },
        name = "water",
        type = "tile",
        variants = {
          inner_corner = {
            count = 6,
            picture = "__base__/graphics/terrain/water/water-inner-corner.png"
          },
          main = { {
              count = 8,
              picture = "__base__/graphics/terrain/water/water1.png",
              size = 1
            }, {
              count = 8,
              picture = "__base__/graphics/terrain/water/water2.png",
              size = 2
            }, {
              count = 6,
              picture = "__base__/graphics/terrain/water/water4.png",
              size = 4
            } },
          outer_corner = {
            count = 6,
            picture = "__base__/graphics/terrain/water/water-outer-corner.png"
          },
          side = {
            count = 8,
            picture = "__base__/graphics/terrain/water/water-side.png"
          }
        }
      },
      ["water-green"] = {
        allowed_neighbors = { "grass" },
        autoplace = {
          peaks = { {
              elevation_max_range = 5000,
              elevation_optimal = -5000,
              elevation_range = 5000,
              influence = 1000
            }, {
              influence = 1,
              min_influence = 0,
              temperature_max_range = 15,
              temperature_optimal = 25,
              temperature_range = 10,
              water_max_range = 0.25,
              water_optimal = 0.85,
              water_range = 0.15
            } }
        },
        collision_mask = { "water-tile", "item-layer", "resource-layer", "player-layer", "doodad-layer" },
        layer = 40,
        map_color = {
          b = 18,
          g = 48,
          r = 31
        },
        name = "water-green",
        type = "tile",
        variants = {
          inner_corner = {
            count = 6,
            picture = "__base__/graphics/terrain/water-green/water-green-inner-corner.png"
          },
          main = { {
              count = 8,
              picture = "__base__/graphics/terrain/water-green/water-green1.png",
              size = 1
            }, {
              count = 8,
              picture = "__base__/graphics/terrain/water-green/water-green2.png",
              size = 2
            }, {
              count = 6,
              picture = "__base__/graphics/terrain/water-green/water-green4.png",
              size = 4
            } },
          outer_corner = {
            count = 6,
            picture = "__base__/graphics/terrain/water-green/water-green-outer-corner.png"
          },
          side = {
            count = 8,
            picture = "__base__/graphics/terrain/water-green/water-green-side.png"
          }
        }
      }
    },
    ["train-stop"] = {
      ["train-stop"] = {
        animation_ticks_per_frame = 20,
        animations = {
          east = {
            filename = "__base__/graphics/entity/train-stop/train-stop-east.png",
            frame_count = 2,
            height = 128,
            priority = "high",
            shift = { 1.7, -1.5 },
            width = 173
          },
          north = {
            filename = "__base__/graphics/entity/train-stop/train-stop-north.png",
            frame_count = 2,
            height = 136,
            priority = "high",
            shift = { 1.65, -0.9 },
            width = 180
          },
          south = {
            filename = "__base__/graphics/entity/train-stop/train-stop-south.png",
            frame_count = 2,
            height = 132,
            priority = "high",
            shift = { 1.7, -1.4 },
            width = 155
          },
          west = {
            filename = "__base__/graphics/entity/train-stop/train-stop-west.png",
            frame_count = 2,
            height = 126,
            priority = "high",
            shift = { 2, -0.8 },
            width = 173
          }
        },
        collision_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        corpse = "medium-remnants",
        drawing_box = { { -0.5, -3 }, { 0.5, 0.5 } },
        flags = { "placeable-neutral", "player-creation", "filter-directions" },
        icon = "__base__/graphics/icons/train-stop.png",
        max_health = 150,
        minable = {
          mining_time = 1,
          result = "train-stop"
        },
        name = "train-stop",
        selection_box = { { -0.6, -0.6 }, { 0.6, 0.6 } },
        tile_height = 2,
        tile_width = 2,
        type = "train-stop",
        working_sound = {
          sound = {
            filename = "__base__/sound/train-stop.ogg",
            volume = 0.8
          }
        }
      }
    },
    ["transport-belt"] = {
      ["basic-transport-belt"] = {
        animation_speed_coefficient = 32,
        animations = {
          direction_count = 12,
          filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
          frame_count = 16,
          height = 40,
          priority = "extra-high",
          width = 40
        },
        belt_horizontal = <table 46>,
        belt_vertical = <table 47>,
        collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        corpse = "small-remnants",
        ending_bottom = <table 48>,
        ending_patch = <table 49>,
        ending_side = <table 50>,
        ending_top = <table 51>,
        fast_replaceable_group = "transport-belt",
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/basic-transport-belt.png",
        max_health = 50,
        minable = {
          hardness = 0.2,
          mining_time = 0.3,
          result = "basic-transport-belt"
        },
        name = "basic-transport-belt",
        resistances = { {
            percent = 60,
            type = "fire"
          } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        speed = 0.03125,
        starting_bottom = <table 52>,
        starting_side = <table 53>,
        starting_top = <table 54>,
        type = "transport-belt",
        working_sound = {
          max_sounds_per_type = 3,
          sound = {
            filename = "__base__/sound/basic-transport-belt.ogg",
            volume = 0.4
          }
        }
      },
      ["express-transport-belt"] = {
        animation_speed_coefficient = 32,
        animations = {
          direction_count = 12,
          filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40
        },
        belt_horizontal = <table 55>,
        belt_vertical = <table 56>,
        collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        corpse = "small-remnants",
        ending_bottom = <table 57>,
        ending_patch = <table 49>,
        ending_side = <table 58>,
        ending_top = <table 59>,
        fast_replaceable_group = "transport-belt",
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/express-transport-belt.png",
        max_health = 50,
        minable = {
          hardness = 0.2,
          mining_time = 0.3,
          result = "express-transport-belt"
        },
        name = "express-transport-belt",
        resistances = { {
            percent = 50,
            type = "fire"
          } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        speed = 0.09375,
        starting_bottom = <table 60>,
        starting_side = <table 61>,
        starting_top = <table 62>,
        type = "transport-belt",
        working_sound = {
          max_sounds_per_type = 3,
          sound = {
            filename = "__base__/sound/express-transport-belt.ogg",
            volume = 0.4
          }
        }
      },
      ["fast-transport-belt"] = {
        animation_speed_coefficient = 32,
        animations = {
          direction_count = 12,
          filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
          frame_count = 32,
          height = 40,
          priority = "extra-high",
          width = 40
        },
        belt_horizontal = <table 63>,
        belt_vertical = <table 64>,
        collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        corpse = "small-remnants",
        ending_bottom = <table 65>,
        ending_patch = <table 49>,
        ending_side = <table 66>,
        ending_top = <table 67>,
        fast_replaceable_group = "transport-belt",
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/fast-transport-belt.png",
        max_health = 50,
        minable = {
          hardness = 0.2,
          mining_time = 0.3,
          result = "fast-transport-belt"
        },
        name = "fast-transport-belt",
        resistances = { {
            percent = 50,
            type = "fire"
          } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        speed = 0.0625,
        starting_bottom = <table 68>,
        starting_side = <table 69>,
        starting_top = <table 70>,
        type = "transport-belt",
        working_sound = {
          max_sounds_per_type = 3,
          sound = {
            filename = "__base__/sound/basic-transport-belt.ogg",
            volume = 0.4
          }
        }
      }
    },
    ["transport-belt-to-ground"] = {
      ["basic-transport-belt-to-ground"] = {
        animation_speed_coefficient = 32,
        belt_horizontal = <table 46>,
        belt_vertical = <table 47>,
        collision_box = { { -0.4, -0.15 }, { 0.4, 0.1 } },
        corpse = "small-remnants",
        distance_to_enter = 0.35,
        ending_bottom = <table 48>,
        ending_patch = <table 49>,
        ending_side = <table 50>,
        ending_top = <table 51>,
        fast_replaceable_group = "transport-belt-to-ground",
        flags = { "placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving" },
        icon = "__base__/graphics/icons/basic-transport-belt-to-ground.png",
        max_distance = 5,
        max_health = 70,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "basic-transport-belt-to-ground"
        },
        name = "basic-transport-belt-to-ground",
        resistances = { {
            percent = 60,
            type = "fire"
          } },
        selection_box = { { -0.5, -0.25 }, { 0.5, 0.75 } },
        speed = 0.03125,
        starting_bottom = <table 52>,
        starting_side = <table 53>,
        starting_top = <table 54>,
        structure = {
          direction_in = {
            sheet = {
              filename = "__base__/graphics/entity/basic-transport-belt-to-ground/basic-transport-belt-to-ground-structure.png",
              height = 43,
              priority = "extra-high",
              shift = { 0.26, 0 },
              width = 57,
              y = 43
            }
          },
          direction_out = {
            sheet = {
              filename = "__base__/graphics/entity/basic-transport-belt-to-ground/basic-transport-belt-to-ground-structure.png",
              height = 43,
              priority = "extra-high",
              shift = { 0.26, 0 },
              width = 57
            }
          }
        },
        type = "transport-belt-to-ground",
        underground_sprite = {
          filename = "__core__/graphics/arrows/underground-lines.png",
          height = 32,
          priority = "high",
          width = 32,
          x = 32
        }
      },
      ["express-transport-belt-to-ground"] = {
        animation_speed_coefficient = 32,
        belt_horizontal = <table 55>,
        belt_vertical = <table 56>,
        collision_box = { { -0.4, -0.15 }, { 0.4, 0.1 } },
        corpse = "small-remnants",
        distance_to_enter = 0.35,
        ending_bottom = <table 57>,
        ending_patch = <table 49>,
        ending_side = <table 58>,
        ending_top = <table 59>,
        fast_replaceable_group = "transport-belt-to-ground",
        flags = { "placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving" },
        icon = "__base__/graphics/icons/express-transport-belt-to-ground.png",
        max_health = 60,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "express-transport-belt-to-ground"
        },
        name = "express-transport-belt-to-ground",
        resistances = { {
            percent = 60,
            type = "fire"
          } },
        selection_box = { { -0.5, -0.25 }, { 0.5, 0.75 } },
        speed = 0.09375,
        starting_bottom = <table 60>,
        starting_side = <table 61>,
        starting_top = <table 62>,
        structure = {
          direction_in = {
            sheet = {
              filename = "__base__/graphics/entity/express-transport-belt-to-ground/express-transport-belt-to-ground-structure.png",
              height = 43,
              priority = "extra-high",
              shift = { 0.26, 0 },
              width = 57,
              y = 43
            }
          },
          direction_out = {
            sheet = {
              filename = "__base__/graphics/entity/express-transport-belt-to-ground/express-transport-belt-to-ground-structure.png",
              height = 43,
              priority = "extra-high",
              shift = { 0.26, 0 },
              width = 57
            }
          }
        },
        type = "transport-belt-to-ground",
        underground_sprite = {
          filename = "__core__/graphics/arrows/underground-lines.png",
          height = 32,
          priority = "high",
          width = 32,
          x = 32
        }
      },
      ["fast-transport-belt-to-ground"] = {
        animation_speed_coefficient = 32,
        belt_horizontal = <table 63>,
        belt_vertical = <table 64>,
        collision_box = { { -0.4, -0.15 }, { 0.4, 0.1 } },
        corpse = "small-remnants",
        distance_to_enter = 0.35,
        ending_bottom = <table 65>,
        ending_patch = <table 49>,
        ending_side = <table 66>,
        ending_top = <table 67>,
        fast_replaceable_group = "transport-belt-to-ground",
        flags = { "placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving" },
        icon = "__base__/graphics/icons/fast-transport-belt-to-ground.png",
        max_health = 60,
        minable = {
          hardness = 0.2,
          mining_time = 0.5,
          result = "fast-transport-belt-to-ground"
        },
        name = "fast-transport-belt-to-ground",
        resistances = { {
            percent = 60,
            type = "fire"
          } },
        selection_box = { { -0.5, -0.25 }, { 0.5, 0.75 } },
        speed = 0.0625,
        starting_bottom = <table 68>,
        starting_side = <table 69>,
        starting_top = <table 70>,
        structure = {
          direction_in = {
            sheet = {
              filename = "__base__/graphics/entity/fast-transport-belt-to-ground/fast-transport-belt-to-ground-structure.png",
              height = 43,
              priority = "extra-high",
              shift = { 0.26, 0 },
              width = 57,
              y = 43
            }
          },
          direction_out = {
            sheet = {
              filename = "__base__/graphics/entity/fast-transport-belt-to-ground/fast-transport-belt-to-ground-structure.png",
              height = 43,
              priority = "extra-high",
              shift = { 0.26, 0 },
              width = 57
            }
          }
        },
        type = "transport-belt-to-ground",
        underground_sprite = {
          filename = "__core__/graphics/arrows/underground-lines.png",
          height = 32,
          priority = "high",
          width = 32,
          x = 32
        }
      }
    },
    tree = {
      ["dark-green-thin-tree"] = {
        autoplace = {
          order = "a[tree]-b[forest]",
          peaks = { {
              influence = -0.1
            }, {
              influence = 0.4,
              noise_layer = "trees",
              noise_octaves_difference = -1,
              noise_persistence = 0.5
            }, {
              influence = 0.3,
              min_influence = 0,
              temperature_max_range = 25,
              temperature_optimal = 15,
              temperature_range = 20,
              water_max_range = 0.45,
              water_optimal = 0.65,
              water_range = 0.35
            } },
          sharpness = 0.4
        },
        collision_box = { { -0.4, -0.7 }, { 0.4, 0.9 } },
        drawing_box = { { -0.7, -2.3 }, { 2, 0.9 } },
        emissions_per_tick = -0.0005,
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        icon = "__base__/graphics/icons/dark-green-thin-tree.png",
        max_health = 50,
        minable = {
          count = 5,
          mining_particle = "wooden-particle",
          mining_time = 2,
          result = "raw-wood"
        },
        name = "dark-green-thin-tree",
        order = "a[tree]-a[thin-tree]-b[dark-green]",
        pictures = { {
            filename = "__base__/graphics/entity/tree/dark-green-thin-tree/dark-green-thin-tree-01.png",
            height = 148,
            shift = { 1.7, -0.35 },
            width = 197
          }, {
            filename = "__base__/graphics/entity/tree/dark-green-thin-tree/dark-green-thin-tree-02.png",
            height = 138,
            shift = { 1.55, -0.1 },
            width = 186
          }, {
            filename = "__base__/graphics/entity/tree/dark-green-thin-tree/dark-green-thin-tree-03.png",
            height = 148,
            shift = { 1.3, -0.05 },
            width = 170
          }, {
            filename = "__base__/graphics/entity/tree/dark-green-thin-tree/dark-green-thin-tree-04.png",
            height = 148,
            shift = { 1.25, -0.4 },
            width = 184
          }, {
            filename = "__base__/graphics/entity/tree/dark-green-thin-tree/dark-green-thin-tree-05.png",
            height = 170,
            shift = { 0.85, -0.25 },
            width = 172
          }, {
            filename = "__base__/graphics/entity/tree/dark-green-thin-tree/dark-green-thin-tree-06.png",
            height = 170,
            shift = { 1, -0.65 },
            width = 174
          }, {
            filename = "__base__/graphics/entity/tree/dark-green-thin-tree/dark-green-thin-tree-07.png",
            height = 186,
            shift = { 2.05, -0.4 },
            width = 238
          }, {
            filename = "__base__/graphics/entity/tree/dark-green-thin-tree/dark-green-thin-tree-08.png",
            height = 162,
            shift = { 0.85, -0.15 },
            width = 185
          } },
        selection_box = { { -0.9, -2.2 }, { 0.9, 0.9 } },
        subgroup = "trees",
        type = "tree"
      },
      ["dark-green-tree"] = {
        autoplace = {
          order = "a[tree]-b[forest]",
          peaks = { {
              influence = -0.1
            }, {
              influence = 0.4,
              noise_layer = "trees",
              noise_octaves_difference = -1,
              noise_persistence = 0.5
            }, {
              influence = 0.3,
              min_influence = 0,
              temperature_max_range = 12.5,
              temperature_optimal = 22.5,
              temperature_range = 7.5,
              water_max_range = 0.25,
              water_optimal = 0.65,
              water_range = 0.15
            } },
          sharpness = 0.4
        },
        collision_box = { { -0.4, -0.7 }, { 0.4, 0.9 } },
        drawing_box = { { -0.7, -2.3 }, { 2, 0.9 } },
        emissions_per_tick = -0.0005,
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        icon = "__base__/graphics/icons/dark-green-tree.png",
        max_health = 50,
        minable = {
          count = 5,
          mining_particle = "wooden-particle",
          mining_time = 2,
          result = "raw-wood"
        },
        name = "dark-green-tree",
        order = "a[tree]-b[normal]-b[dark]",
        pictures = { {
            filename = "__base__/graphics/entity/tree/dark-green-tree/dark-green-tree-01.png",
            height = 138,
            shift = { 0.6, -0.05 },
            width = 165
          }, {
            filename = "__base__/graphics/entity/tree/dark-green-tree/dark-green-tree-02.png",
            height = 141,
            shift = { 0.7, -0.2 },
            width = 167
          }, {
            filename = "__base__/graphics/entity/tree/dark-green-tree/dark-green-tree-03.png",
            height = 138,
            shift = { 0.9, -0.2 },
            width = 167
          }, {
            filename = "__base__/graphics/entity/tree/dark-green-tree/dark-green-tree-04.png",
            height = 137,
            shift = { 1.05, -0.3 },
            width = 165
          }, {
            filename = "__base__/graphics/entity/tree/dark-green-tree/dark-green-tree-05.png",
            height = 138,
            shift = { 1.3, -0.3 },
            width = 169
          }, {
            filename = "__base__/graphics/entity/tree/dark-green-tree/dark-green-tree-06.png",
            height = 122,
            shift = { 1.1, -0.3 },
            width = 151
          }, {
            filename = "__base__/graphics/entity/tree/dark-green-tree/dark-green-tree-07.png",
            height = 126,
            shift = { 0.55, -0.35 },
            width = 150
          } },
        selection_box = { { -0.9, -2.2 }, { 0.9, 0.9 } },
        subgroup = "trees",
        type = "tree"
      },
      ["dark-thin-tree"] = {
        autoplace = {
          order = "a[tree]-b[forest]",
          peaks = { {
              influence = -0.1
            }, {
              influence = 0.4,
              noise_layer = "trees",
              noise_octaves_difference = -1,
              noise_persistence = 0.5
            }, {
              influence = 0.3,
              min_influence = 0,
              temperature_max_range = 15,
              temperature_optimal = 20,
              temperature_range = 10,
              water_max_range = 0.15,
              water_optimal = 0.35,
              water_range = 0.05
            } },
          sharpness = 0.4,
          tile_restriction = { "dirt", "dirt-dark", "sand", "sand-dark" }
        },
        collision_box = { { -0.4, -0.7 }, { 0.4, 0.9 } },
        emissions_per_tick = -0.0001,
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        icon = "__base__/graphics/icons/dark-thin-tree.png",
        max_health = 20,
        minable = {
          count = 4,
          mining_particle = "wooden-particle",
          mining_time = 2,
          result = "raw-wood"
        },
        name = "dark-thin-tree",
        order = "a[tree]-a[thin-tree]-d[dark]",
        pictures = { {
            filename = "__base__/graphics/entity/tree/dark-thin-tree/dark-thin-tree-01.png",
            height = 148,
            shift = { 1.7, -0.4 },
            width = 197
          }, {
            filename = "__base__/graphics/entity/tree/dark-thin-tree/dark-thin-tree-02.png",
            height = 138,
            shift = { 1.55, -0.1 },
            width = 186
          }, {
            filename = "__base__/graphics/entity/tree/dark-thin-tree/dark-thin-tree-03.png",
            height = 148,
            shift = { 1.25, -0.05 },
            width = 170
          }, {
            filename = "__base__/graphics/entity/tree/dark-thin-tree/dark-thin-tree-04.png",
            height = 148,
            shift = { 1.2, -0.4 },
            width = 184
          }, {
            filename = "__base__/graphics/entity/tree/dark-thin-tree/dark-thin-tree-05.png",
            height = 170,
            shift = { 0.8, -0.3 },
            width = 172
          }, {
            filename = "__base__/graphics/entity/tree/dark-thin-tree/dark-thin-tree-06.png",
            height = 170,
            shift = { 1, -0.7 },
            width = 174
          }, {
            filename = "__base__/graphics/entity/tree/dark-thin-tree/dark-thin-tree-07.png",
            height = 186,
            shift = { 2.05, -0.4 },
            width = 238
          }, {
            filename = "__base__/graphics/entity/tree/dark-thin-tree/dark-thin-tree-08.png",
            height = 162,
            shift = { 0.85, -0.15 },
            width = 185
          } },
        selection_box = { { -0.9, -2.2 }, { 0.9, 0.9 } },
        subgroup = "trees",
        type = "tree"
      },
      ["dead-dry-hairy-tree"] = {
        autoplace = {
          order = "b[tree]-a[random]",
          peaks = { {
              influence = 0.0005
            }, {
              influence = 0.004,
              max_influence = 0.003,
              min_influence = 0,
              noise_layer = "trees",
              noise_persistence = 0.5
            } }
        },
        collision_box = { { -0.6, -0.6 }, { 0.6, 0.6 } },
        emissions_per_tick = -0.0001,
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        icon = "__base__/graphics/icons/dead-dry-hairy-tree.png",
        max_health = 20,
        minable = {
          count = 2,
          mining_particle = "wooden-particle",
          mining_time = 1,
          result = "raw-wood"
        },
        name = "dead-dry-hairy-tree",
        order = "a[tree]-d[dead-tree]",
        pictures = { {
            filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-dry-hairy-tree-01.png",
            height = 126,
            shift = { -1.78, 0.93 },
            width = 220
          }, {
            filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-dry-hairy-tree-02.png",
            height = 144,
            shift = { -0.93, -1.25 },
            width = 214
          }, {
            filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-dry-hairy-tree-03.png",
            height = 173,
            shift = { 1.78, -1.56 },
            width = 195
          }, {
            filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-dry-hairy-tree-04.png",
            height = 114,
            shift = { 2.81, 0.25 },
            width = 241
          }, {
            filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-dry-hairy-tree-05.png",
            height = 147,
            shift = { 2.06, 2.09 },
            width = 188
          }, {
            filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-dry-hairy-tree-06.png",
            height = 150,
            shift = { -1.56, 1.25 },
            width = 166
          }, {
            filename = "__base__/graphics/entity/tree/dead-dry-hairy-tree/dead-dry-hairy-tree-07.png",
            height = 99,
            shift = { -2.18, -0.87 },
            width = 227
          } },
        selection_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
        subgroup = "trees",
        type = "tree"
      },
      ["dead-grey-trunk"] = {
        autoplace = {
          order = "b[tree]-a[random]",
          peaks = { {
              influence = 0.0005
            }, {
              influence = 0.004,
              max_influence = 0.003,
              min_influence = 0,
              noise_layer = "trees",
              noise_persistence = 0.5
            } }
        },
        collision_box = { { -0.6, -0.6 }, { 0.6, 0.6 } },
        emissions_per_tick = -0.0001,
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        icon = "__base__/graphics/icons/dead-grey-trunk.png",
        max_health = 20,
        minable = {
          count = 2,
          mining_particle = "wooden-particle",
          mining_time = 1,
          result = "raw-wood"
        },
        name = "dead-grey-trunk",
        order = "wwwwwwwa[tree]-d[dead-tree]",
        pictures = { {
            filename = "__base__/graphics/entity/tree/dead-grey-trunk/dead-grey-trunk-01.png",
            height = 96,
            shift = { 0.75, -0.46 },
            width = 105
          }, {
            filename = "__base__/graphics/entity/tree/dead-grey-trunk/dead-grey-trunk-02.png",
            height = 87,
            shift = { 0.4, 0.43 },
            width = 67
          }, {
            filename = "__base__/graphics/entity/tree/dead-grey-trunk/dead-grey-trunk-03.png",
            height = 67,
            shift = { 0.56, -0.25 },
            width = 114
          }, {
            filename = "__base__/graphics/entity/tree/dead-grey-trunk/dead-grey-trunk-04.png",
            height = 85,
            shift = { 0.62, 0.21 },
            width = 95
          }, {
            filename = "__base__/graphics/entity/tree/dead-grey-trunk/dead-grey-trunk-05.png",
            height = 112,
            shift = { 0.84, -0.84 },
            width = 100
          }, {
            filename = "__base__/graphics/entity/tree/dead-grey-trunk/dead-grey-trunk-06.png",
            height = 82,
            shift = { 0, -0.5 },
            width = 96
          }, {
            filename = "__base__/graphics/entity/tree/dead-grey-trunk/dead-grey-trunk-07.png",
            height = 55,
            shift = { -0.46, 0 },
            width = 143
          } },
        selection_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
        subgroup = "trees",
        type = "tree"
      },
      ["dead-tree"] = {
        autoplace = {
          order = "b[tree]-a[random]",
          peaks = { {
              influence = 0.0005
            }, {
              influence = 0.004,
              max_influence = 0.003,
              min_influence = 0,
              noise_layer = "trees",
              noise_persistence = 0.5
            } }
        },
        collision_box = { { -0.6, -0.6 }, { 0.6, 0.6 } },
        emissions_per_tick = -0.0001,
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        icon = "__base__/graphics/icons/dead-tree.png",
        max_health = 20,
        minable = {
          count = 2,
          mining_particle = "wooden-particle",
          mining_time = 1,
          result = "raw-wood"
        },
        name = "dead-tree",
        order = "a[tree]-d[dead-tree]",
        pictures = { {
            filename = "__base__/graphics/entity/tree/dead-tree/dead-tree-01.png",
            height = 114,
            width = 108
          }, {
            filename = "__base__/graphics/entity/tree/dead-tree/dead-tree-02.png",
            height = 97,
            shift = { 0.2, 0.2 },
            width = 155
          }, {
            filename = "__base__/graphics/entity/tree/dead-tree/dead-tree-03.png",
            height = 124,
            shift = { 0.4, -0.3 },
            width = 138
          }, {
            filename = "__base__/graphics/entity/tree/dead-tree/dead-tree-04.png",
            height = 123,
            shift = { 0, -0.4 },
            width = 112
          }, {
            filename = "__base__/graphics/entity/tree/dead-tree/dead-tree-05.png",
            height = 113,
            width = 111
          }, {
            filename = "__base__/graphics/entity/tree/dead-tree/dead-tree-06.png",
            height = 83,
            width = 78
          }, {
            filename = "__base__/graphics/entity/tree/dead-tree/dead-tree-07.png",
            height = 105,
            width = 90
          } },
        selection_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
        subgroup = "trees",
        type = "tree"
      },
      ["dry-hairy-tree"] = {
        autoplace = {
          order = "b[tree]-a[random]",
          peaks = { {
              influence = 0.0005
            }, {
              influence = 0.004,
              max_influence = 0.003,
              min_influence = 0,
              noise_layer = "trees",
              noise_persistence = 0.5
            } }
        },
        collision_box = { { -0.6, -0.6 }, { 0.6, 0.6 } },
        emissions_per_tick = -0.0001,
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        icon = "__base__/graphics/icons/dry-hairy-tree.png",
        max_health = 20,
        minable = {
          count = 2,
          mining_particle = "wooden-particle",
          mining_time = 1,
          result = "raw-wood"
        },
        name = "dry-hairy-tree",
        order = "a[tree]-d[dead-tree]",
        pictures = { {
            filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-01.png",
            height = 242,
            shift = { 1.9, -0.68 },
            width = 201
          }, {
            filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-02.png",
            height = 256,
            shift = { 2.62, -0.68 },
            width = 307
          }, {
            filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-03.png",
            height = 240,
            shift = { 0.56, -1.5 },
            width = 286
          }, {
            filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-04.png",
            height = 229,
            shift = { 3.5, -2 },
            width = 291
          }, {
            filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-05.png",
            height = 264,
            shift = { 3.2, -0.46 },
            width = 265
          }, {
            filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-06.png",
            height = 267,
            shift = { 2.59, -1.34 },
            width = 312
          }, {
            filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-07.png",
            height = 213,
            shift = { 3.37, -0.25 },
            width = 294
          }, {
            filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-08.png",
            height = 217,
            shift = { 2.28, -1.25 },
            width = 284
          } },
        selection_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
        subgroup = "trees",
        type = "tree"
      },
      ["dry-tree"] = {
        autoplace = {
          order = "b[tree]-a[random]",
          peaks = { {
              influence = 0.0002,
              noise_layer = "trees",
              noise_persistence = 0.5
            }, {
              influence = 0.001,
              min_influence = 0,
              temperature_max_range = 20,
              temperature_optimal = 20,
              temperature_range = 15,
              water_max_range = 0.25,
              water_optimal = 0.15,
              water_range = 0.15
            } }
        },
        collision_box = { { -0.4, -0.8 }, { 0.4, 0.2 } },
        emissions_per_tick = -0.0001,
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        icon = "__base__/graphics/icons/dry-tree.png",
        max_health = 20,
        minable = {
          count = 4,
          mining_particle = "wooden-particle",
          mining_time = 1,
          result = "raw-wood"
        },
        name = "dry-tree",
        order = "a[tree]-e[dry-tree]",
        pictures = { {
            filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-01.png",
            height = 127,
            shift = { 0, -1 },
            width = 121
          }, {
            filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-02.png",
            height = 125,
            shift = { 1, -1.6 },
            width = 150
          }, {
            filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-03.png",
            height = 125,
            shift = { 1.3, -1.5 },
            width = 129
          }, {
            filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-04.png",
            height = 129,
            shift = { 1.7, -0.15 },
            width = 135
          }, {
            filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-05.png",
            height = 145,
            shift = { 1.2, -1 },
            width = 112
          }, {
            filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-06.png",
            height = 104,
            shift = { 1.1, -1 },
            width = 129
          }, {
            filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-07.png",
            height = 146,
            shift = { 1.5, -1.5 },
            width = 199
          }, {
            filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-08.png",
            height = 137,
            shift = { 1, -0.8 },
            width = 157
          }, {
            filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-09.png",
            height = 132,
            shift = { 1.5, -1.5 },
            width = 165
          }, {
            filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-10.png",
            height = 125,
            shift = { 0.5, -0.5 },
            width = 139
          }, {
            filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-11.png",
            height = 101,
            shift = { 1, -0.9 },
            width = 169
          }, {
            filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-12.png",
            height = 99,
            shift = { 0.8, -0.7 },
            width = 126
          }, {
            filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-13.png",
            height = 109,
            shift = { 0.4, -0.1 },
            width = 117
          }, {
            filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-14.png",
            height = 108,
            shift = { 0.4, -1.2 },
            width = 136
          }, {
            filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-15.png",
            height = 117,
            shift = { 1, -1.5 },
            width = 121
          }, {
            filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-16.png",
            height = 110,
            shift = { 1.2, -0.6 },
            width = 109
          }, {
            filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-17.png",
            height = 129,
            shift = { 2, -0.1 },
            width = 178
          } },
        selection_box = { { -0.6, -1.5 }, { 0.6, 0.3 } },
        subgroup = "trees",
        type = "tree"
      },
      ["green-coral"] = {
        autoplace = {
          order = "a[tree]-b[forest]",
          peaks = { {
              influence = -0.1
            }, {
              influence = 0.4,
              noise_layer = "trees",
              noise_octaves_difference = -1,
              noise_persistence = 0.5
            }, {
              influence = 0.3,
              min_influence = 0,
              temperature_max_range = 12.5,
              temperature_optimal = 27.5,
              temperature_range = 7.5,
              water_max_range = 0.2,
              water_optimal = 0.3,
              water_range = 0.1
            } },
          sharpness = 0.4
        },
        collision_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        drawing_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        emissions_per_tick = 0,
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        icon = "__base__/graphics/icons/green-coral.png",
        max_health = 50,
        minable = {
          count = 1,
          mining_particle = "wooden-particle",
          mining_time = 2,
          result = "raw-wood"
        },
        name = "green-coral",
        order = "a[tree]-f[coral]",
        pictures = { {
            filename = "__base__/graphics/entity/tree/green-coral/green-coral-01.png",
            height = 69,
            shift = { 0.4, -0.4 },
            width = 58
          }, {
            filename = "__base__/graphics/entity/tree/green-coral/green-coral-02.png",
            height = 97,
            shift = { 0.7, -0.05 },
            width = 77
          }, {
            filename = "__base__/graphics/entity/tree/green-coral/green-coral-03.png",
            height = 54,
            shift = { 0.2, 0 },
            width = 41
          }, {
            filename = "__base__/graphics/entity/tree/green-coral/green-coral-04.png",
            height = 61,
            shift = { 0.7, 0.3 },
            width = 63
          }, {
            filename = "__base__/graphics/entity/tree/green-coral/green-coral-05.png",
            height = 85,
            shift = { -0.1, 0.5 },
            width = 63
          }, {
            filename = "__base__/graphics/entity/tree/green-coral/green-coral-06.png",
            height = 71,
            width = 67
          }, {
            filename = "__base__/graphics/entity/tree/green-coral/green-coral-07.png",
            height = 77,
            shift = { -0.2, -0.4 },
            width = 89
          } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "trees",
        type = "tree"
      },
      ["green-thin-tree"] = {
        autoplace = {
          order = "a[tree]-b[forest]",
          peaks = { {
              influence = -0.1
            }, {
              influence = 0.4,
              noise_layer = "trees",
              noise_octaves_difference = -1,
              noise_persistence = 0.5
            }, {
              influence = 0.3,
              min_influence = 0,
              temperature_max_range = 22.5,
              temperature_optimal = 17.5,
              temperature_range = 17.5,
              water_max_range = 0.35,
              water_optimal = 0.75,
              water_range = 0.25
            } },
          sharpness = 0.4
        },
        collision_box = { { -0.4, -0.7 }, { 0.4, 0.9 } },
        drawing_box = { { -0.7, -2.3 }, { 2, 0.9 } },
        emissions_per_tick = -0.0005,
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        icon = "__base__/graphics/icons/green-thin-tree.png",
        max_health = 50,
        minable = {
          count = 5,
          mining_particle = "wooden-particle",
          mining_time = 2,
          result = "raw-wood"
        },
        name = "green-thin-tree",
        order = "a[tree]-a[thin-tree]-a[green]",
        pictures = { {
            filename = "__base__/graphics/entity/tree/green-thin-tree/green-thin-tree-01.png",
            height = 148,
            shift = { 1.7, -0.4 },
            width = 197
          }, {
            filename = "__base__/graphics/entity/tree/green-thin-tree/green-thin-tree-02.png",
            height = 138,
            shift = { 1.55, -0.1 },
            width = 186
          }, {
            filename = "__base__/graphics/entity/tree/green-thin-tree/green-thin-tree-03.png",
            height = 148,
            shift = { 1.25, -0.05 },
            width = 170
          }, {
            filename = "__base__/graphics/entity/tree/green-thin-tree/green-thin-tree-04.png",
            height = 148,
            shift = { 1.2, -0.4 },
            width = 184
          }, {
            filename = "__base__/graphics/entity/tree/green-thin-tree/green-thin-tree-05.png",
            height = 170,
            shift = { 0.8, -0.3 },
            width = 172
          }, {
            filename = "__base__/graphics/entity/tree/green-thin-tree/green-thin-tree-06.png",
            height = 170,
            shift = { 1, -0.7 },
            width = 174
          }, {
            filename = "__base__/graphics/entity/tree/green-thin-tree/green-thin-tree-07.png",
            height = 186,
            shift = { 2.05, -0.4 },
            width = 238
          }, {
            filename = "__base__/graphics/entity/tree/green-thin-tree/green-thin-tree-08.png",
            height = 162,
            shift = { 0.85, -0.15 },
            width = 185
          } },
        selection_box = { { -0.9, -2.2 }, { 0.9, 0.9 } },
        subgroup = "trees",
        type = "tree"
      },
      ["green-tree"] = {
        autoplace = {
          order = "a[tree]-b[forest]",
          peaks = { {
              influence = -0.1
            }, {
              influence = 0.4,
              noise_layer = "trees",
              noise_octaves_difference = -1,
              noise_persistence = 0.5
            }, {
              influence = 0.3,
              min_influence = 0,
              temperature_max_range = 15,
              temperature_optimal = 20,
              temperature_range = 10,
              water_max_range = 0.25,
              water_optimal = 0.55,
              water_range = 0.15
            } },
          sharpness = 0.4
        },
        collision_box = { { -0.4, -0.7 }, { 0.4, 0.9 } },
        drawing_box = { { -0.7, -2.3 }, { 2, 0.9 } },
        emissions_per_tick = -0.0005,
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        icon = "__base__/graphics/icons/green-tree.png",
        max_health = 50,
        minable = {
          count = 5,
          mining_particle = "wooden-particle",
          mining_time = 2,
          result = "raw-wood"
        },
        name = "green-tree",
        order = "a[tree]-b[normal]-a[green]",
        pictures = { {
            filename = "__base__/graphics/entity/tree/green-tree/green-tree-01.png",
            height = 101,
            shift = { 0.8, 0.1 },
            width = 108
          }, {
            filename = "__base__/graphics/entity/tree/green-tree/green-tree-02.png",
            height = 133,
            shift = { 0.95, -0.15 },
            width = 147
          }, {
            filename = "__base__/graphics/entity/tree/green-tree/green-tree-03.png",
            height = 132,
            shift = { 0.8, 0 },
            width = 148
          }, {
            filename = "__base__/graphics/entity/tree/green-tree/green-tree-04.png",
            height = 128,
            shift = { 0.9, -0.2 },
            width = 151
          }, {
            filename = "__base__/graphics/entity/tree/green-tree/green-tree-05.png",
            height = 133,
            shift = { 0.8, -0.2 },
            width = 156
          }, {
            filename = "__base__/graphics/entity/tree/green-tree/green-tree-06.png",
            height = 129,
            shift = { 1.1, -0.3 },
            width = 163
          }, {
            filename = "__base__/graphics/entity/tree/green-tree/green-tree-07.png",
            height = 135,
            shift = { 0.9, -0.3 },
            width = 151
          } },
        selection_box = { { -0.9, -2.2 }, { 0.9, 0.9 } },
        subgroup = "trees",
        type = "tree"
      },
      ["red-thin-tree"] = {
        autoplace = {
          order = "a[tree]-b[forest]",
          peaks = { {
              influence = -0.1
            }, {
              influence = 0.4,
              noise_layer = "trees",
              noise_octaves_difference = -1,
              noise_persistence = 0.5
            }, {
              influence = 0.3,
              min_influence = 0,
              temperature_max_range = 7.5,
              temperature_optimal = 2.5,
              temperature_range = 2.5,
              water_max_range = 0.25,
              water_optimal = 0.35,
              water_range = 0.15
            } },
          sharpness = 0.4
        },
        collision_box = { { -0.4, -0.7 }, { 0.4, 0.9 } },
        drawing_box = { { -0.7, -2.3 }, { 2, 0.9 } },
        emissions_per_tick = -0.0005,
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        icon = "__base__/graphics/icons/red-thin-tree.png",
        max_health = 50,
        minable = {
          count = 5,
          mining_particle = "wooden-particle",
          mining_time = 2,
          result = "raw-wood"
        },
        name = "red-thin-tree",
        order = "a[tree]-a[thin-tree]-c[red]",
        pictures = { {
            filename = "__base__/graphics/entity/tree/red-thin-tree/red-thin-tree-01.png",
            height = 148,
            shift = { 1.7, -0.3 },
            width = 197
          }, {
            filename = "__base__/graphics/entity/tree/red-thin-tree/red-thin-tree-02.png",
            height = 138,
            shift = { 1.6, -0.1 },
            width = 186
          }, {
            filename = "__base__/graphics/entity/tree/red-thin-tree/red-thin-tree-03.png",
            height = 148,
            shift = { 1.3, 0 },
            width = 170
          }, {
            filename = "__base__/graphics/entity/tree/red-thin-tree/red-thin-tree-04.png",
            height = 148,
            shift = { 1.25, -0.35 },
            width = 184
          }, {
            filename = "__base__/graphics/entity/tree/red-thin-tree/red-thin-tree-05.png",
            height = 170,
            shift = { 0.8, -0.3 },
            width = 172
          }, {
            filename = "__base__/graphics/entity/tree/red-thin-tree/red-thin-tree-06.png",
            height = 170,
            shift = { 0.9, -0.6 },
            width = 174
          }, {
            filename = "__base__/graphics/entity/tree/red-thin-tree/red-thin-tree-07.png",
            height = 186,
            shift = { 2, -0.4 },
            width = 238
          }, {
            filename = "__base__/graphics/entity/tree/red-thin-tree/red-thin-tree-08.png",
            height = 162,
            shift = { 0.85, -0.1 },
            width = 185
          } },
        selection_box = { { -0.9, -2.2 }, { 0.9, 0.9 } },
        subgroup = "trees",
        type = "tree"
      },
      ["red-tree"] = {
        autoplace = {
          order = "a[tree]-b[forest]",
          peaks = { {
              influence = -0.1
            }, {
              influence = 0.4,
              noise_layer = "trees",
              noise_octaves_difference = -1,
              noise_persistence = 0.5
            }, {
              influence = 0.3,
              min_influence = 0,
              temperature_max_range = 12.5,
              temperature_optimal = 12.5,
              temperature_range = 7.5,
              water_max_range = 0.2,
              water_optimal = 0.4,
              water_range = 0.1
            } },
          sharpness = 0.4
        },
        collision_box = { { -0.4, -0.7 }, { 0.4, 0.9 } },
        drawing_box = { { -0.7, -2.3 }, { 2, 0.9 } },
        emissions_per_tick = -0.0005,
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        icon = "__base__/graphics/icons/red-tree.png",
        max_health = 50,
        minable = {
          count = 5,
          mining_particle = "wooden-particle",
          mining_time = 2,
          result = "raw-wood"
        },
        name = "red-tree",
        order = "a[tree]-c[red-tree]",
        pictures = { {
            filename = "__base__/graphics/entity/tree/red-tree/red-tree-01.png",
            height = 206,
            shift = { 0.95, -0.2 },
            width = 173
          }, {
            filename = "__base__/graphics/entity/tree/red-tree/red-tree-02.png",
            height = 218,
            shift = { 0.95, -0.25 },
            width = 180
          }, {
            filename = "__base__/graphics/entity/tree/red-tree/red-tree-03.png",
            height = 240,
            shift = { 1.15, -0.5 },
            width = 173
          }, {
            filename = "__base__/graphics/entity/tree/red-tree/red-tree-04.png",
            height = 232,
            shift = { 2.2, -0.15 },
            width = 222
          }, {
            filename = "__base__/graphics/entity/tree/red-tree/red-tree-05.png",
            height = 210,
            shift = { 1.65, -0.35 },
            width = 204
          } },
        selection_box = { { -0.9, -2.2 }, { 0.9, 0.9 } },
        subgroup = "trees",
        type = "tree"
      },
      ["root-tree"] = {
        autoplace = {
          max_probability = 0.2,
          order = "a[tree]-b[forest]",
          peaks = { {
              influence = -0.1
            }, {
              influence = 0.4,
              noise_layer = "trees",
              noise_octaves_difference = -1,
              noise_persistence = 0.5
            }, {
              influence = 0.3,
              min_influence = 0,
              temperature_max_range = 15,
              temperature_optimal = 25,
              temperature_range = 10,
              water_max_range = 0.25,
              water_optimal = 0.85,
              water_range = 0.15
            } },
          sharpness = 0.2
        },
        collision_box = { { -0.4, -0.8 }, { 0.4, 0.2 } },
        drawing_box = { { -0.7, -2.3 }, { 2, 0.9 } },
        emissions_per_tick = -0.0001,
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        icon = "__base__/graphics/icons/root-tree.png",
        max_health = 50,
        minable = {
          count = 5,
          mining_particle = "wooden-particle",
          mining_time = 2,
          result = "raw-wood"
        },
        name = "root-tree",
        order = "a[tree]-e[root-tree]",
        pictures = { {
            filename = "__base__/graphics/entity/tree/root-tree/root-tree-01.png",
            height = 104,
            shift = { 0, -0.5 },
            width = 148
          }, {
            filename = "__base__/graphics/entity/tree/root-tree/root-tree-02.png",
            height = 122,
            shift = { 0.8, -0.5 },
            width = 163
          }, {
            filename = "__base__/graphics/entity/tree/root-tree/root-tree-03.png",
            height = 92,
            shift = { 0.7, -0.5 },
            width = 179
          }, {
            filename = "__base__/graphics/entity/tree/root-tree/root-tree-04.png",
            height = 96,
            shift = { 1, -0.6 },
            width = 139
          }, {
            filename = "__base__/graphics/entity/tree/root-tree/root-tree-05.png",
            height = 110,
            shift = { 0.4, -0.5 },
            width = 175
          }, {
            filename = "__base__/graphics/entity/tree/root-tree/root-tree-06.png",
            height = 100,
            shift = { 0.4, -0.6 },
            width = 133
          }, {
            filename = "__base__/graphics/entity/tree/root-tree/root-tree-07.png",
            height = 99,
            shift = { 1.6, -0.8 },
            width = 174
          }, {
            filename = "__base__/graphics/entity/tree/root-tree/root-tree-08.png",
            height = 111,
            shift = { 1.25, -0.85 },
            width = 143
          }, {
            filename = "__base__/graphics/entity/tree/root-tree/root-tree-09.png",
            height = 103,
            shift = { 1, -0.2 },
            width = 165
          }, {
            filename = "__base__/graphics/entity/tree/root-tree/root-tree-10.png",
            height = 104,
            shift = { 0.8, -0.7 },
            width = 147
          }, {
            filename = "__base__/graphics/entity/tree/root-tree/root-tree-11.png",
            height = 82,
            shift = { 0.8, -0.5 },
            width = 133
          }, {
            filename = "__base__/graphics/entity/tree/root-tree/root-tree-12.png",
            height = 113,
            shift = { 1, -0.9 },
            width = 136
          } },
        selection_box = { { -0.6, -1.5 }, { 0.6, 0.3 } },
        subgroup = "trees",
        type = "tree"
      }
    },
    turret = {
      ["big-worm-turret"] = {
        attack_parameters = {
          ammo_category = "rocket",
          ammo_type = {
            action = {
              action_delivery = {
                projectile = "acid-projectile-purple",
                starting_speed = 0.5,
                type = "projectile"
              },
              type = "direct"
            },
            category = "biological"
          },
          cooldown = 100,
          damage_modifier = 6,
          projectile_creation_distance = 2.1,
          range = 25
        },
        autoplace = {
          control = "enemy-base",
          force = "enemy",
          order = "b[enemy]-a[base]",
          peaks = { {
              influence = -10,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 1,
              starting_area_weight_range = 0
            }, {
              influence = 0.07,
              noise_layer = "enemy-base",
              noise_octaves_difference = -1.8,
              noise_persistence = 0.5
            }, {
              influence = 0.38,
              noise_layer = "enemy-base",
              noise_octaves_difference = -1.8,
              noise_persistence = 0.5,
              tier_from_start_max_range = 20,
              tier_from_start_optimal = 10,
              tier_from_start_top_property_limit = 10
            } },
          sharpness = 0.3
        },
        collision_box = { { -1.4, -1.2 }, { 1.4, 1.2 } },
        corpse = "big-worm-corpse",
        dying_explosion = "blood-explosion-big",
        ending_attack_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 8,
              height = 196,
              run_mode = "backward",
              scale = 1,
              shift = { 0.953125, -0.671875 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-attack-01.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/worm/worm-attack-02.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              width = 248
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 8,
              height = 153,
              run_mode = "backward",
              scale = 1,
              shift = { 0.078125, -1.125 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-attack-mask-01.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity//worm/worm-attack-mask-02.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              tint = <table 20>,
              width = 168
            } }
        },
        ending_attack_speed = 0.03,
        flags = { "placeable-player", "placeable-enemy", "not-repairable", "breaths-air" },
        folded_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-folded.png",
              frame_count = 5,
              height = 104,
              line_length = 5,
              run_mode = "forward-then-backward",
              scale = 1,
              shift = { 0.09375, -0.046875 },
              width = 143
            }, {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-folded-mask.png",
              frame_count = 5,
              height = 51,
              line_length = 5,
              run_mode = "forward-then-backward",
              scale = 1,
              shift = { 0.078125, -0.09375 },
              tint = <table 20>,
              width = 60
            } }
        },
        folded_speed = 0.01,
        folding_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 1,
              frame_count = 26,
              height = 148,
              line_length = 13,
              run_mode = "backward",
              scale = 1,
              shift = { 1.10938, -0.734375 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-preparing-01.png",
                  height_in_frames = 2,
                  width_in_frames = 7
                }, {
                  filename = "__base__/graphics/entity/worm/worm-preparing-02.png",
                  height_in_frames = 2,
                  width_in_frames = 6
                } },
              width = 208
            }, {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-preparing-mask.png",
              frame_count = 26,
              height = 121,
              line_length = 13,
              run_mode = "backward",
              scale = 1,
              shift = { 0.171875, -1.15625 },
              tint = <table 20>,
              width = 98
            } }
        },
        folding_speed = 0.015,
        healing_per_tick = 0.02,
        icon = "__base__/graphics/icons/big-worm.png",
        inventory_size = 2,
        max_health = 500,
        name = "big-worm-turret",
        order = "b-b-f",
        prepare_range = 30,
        prepared_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-prepared.png",
              frame_count = 10,
              height = 156,
              line_length = 10,
              run_mode = "forward-then-backward",
              scale = 1,
              shift = { 0.828125, -0.890625 },
              width = 190
            }, {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-prepared-mask.png",
              frame_count = 10,
              height = 129,
              line_length = 10,
              run_mode = "forward-then-backward",
              scale = 1,
              shift = { 0.078125, -1.28125 },
              tint = <table 20>,
              width = 80
            } }
        },
        prepared_speed = 0.015,
        preparing_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 1,
              frame_count = 26,
              height = 148,
              line_length = 13,
              run_mode = "forward",
              scale = 1,
              shift = { 1.10938, -0.734375 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-preparing-01.png",
                  height_in_frames = 2,
                  width_in_frames = 7
                }, {
                  filename = "__base__/graphics/entity/worm/worm-preparing-02.png",
                  height_in_frames = 2,
                  width_in_frames = 6
                } },
              width = 208
            }, {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-preparing-mask.png",
              frame_count = 26,
              height = 121,
              line_length = 13,
              run_mode = "forward",
              scale = 1,
              shift = { 0.171875, -1.15625 },
              tint = <table 20>,
              width = 98
            } }
        },
        preparing_speed = 0.025,
        resistances = { {
            decrease = 8,
            type = "physical"
          }, {
            decrease = 10,
            percent = 30,
            type = "explosion"
          } },
        rotation_speed = 1,
        selection_box = { { -1.4, -1.2 }, { 1.4, 1.2 } },
        shooting_cursor_size = 4,
        starting_attack_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 8,
              height = 196,
              run_mode = "forward",
              scale = 1,
              shift = { 0.953125, -0.671875 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-attack-01.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/worm/worm-attack-02.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              width = 248
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 8,
              height = 153,
              run_mode = "forward",
              scale = 1,
              shift = { 0.078125, -1.125 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-attack-mask-01.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity//worm/worm-attack-mask-02.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              tint = <table 20>,
              width = 168
            } }
        },
        starting_attack_sound = { {
            filename = "__base__/sound/creatures/worm-roar-long-1.ogg",
            volume = 0.9
          } },
        starting_attack_speed = 0.03,
        subgroup = "enemies",
        type = "turret"
      },
      ["medium-worm-turret"] = {
        attack_parameters = {
          ammo_category = "rocket",
          ammo_type = {
            action = {
              action_delivery = {
                projectile = "acid-projectile-purple",
                starting_speed = 0.5,
                type = "projectile"
              },
              type = "direct"
            },
            category = "biological"
          },
          cooldown = 100,
          damage_modifier = 3,
          projectile_creation_distance = 1.9,
          range = 20
        },
        autoplace = {
          control = "enemy-base",
          force = "enemy",
          order = "b[enemy]-a[base]",
          peaks = { {
              influence = -10,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 1,
              starting_area_weight_range = 0
            }, {
              influence = 0.22,
              noise_layer = "enemy-base",
              noise_octaves_difference = -1.8,
              noise_persistence = 0.5
            }, {
              influence = 0.3,
              noise_layer = "enemy-base",
              noise_octaves_difference = -1.8,
              noise_persistence = 0.5,
              tier_from_start_max_range = 20,
              tier_from_start_optimal = 10,
              tier_from_start_top_property_limit = 10
            } },
          sharpness = 0.3
        },
        collision_box = { { -1.1, -1 }, { 1.1, 1 } },
        corpse = "medium-worm-corpse",
        dying_explosion = "blood-explosion-big",
        ending_attack_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 8,
              height = 196,
              run_mode = "backward",
              scale = 0.83,
              shift = { 0.79109375, -0.55765625 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-attack-01.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/worm/worm-attack-02.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              width = 248
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 8,
              height = 153,
              run_mode = "backward",
              scale = 0.83,
              shift = { 0.06484375, -0.93375 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-attack-mask-01.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity//worm/worm-attack-mask-02.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              tint = <table 25>,
              width = 168
            } }
        },
        ending_attack_speed = 0.03,
        flags = { "placeable-player", "placeable-enemy", "not-repairable", "breaths-air" },
        folded_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-folded.png",
              frame_count = 5,
              height = 104,
              line_length = 5,
              run_mode = "forward-then-backward",
              scale = 0.83,
              shift = { 0.0778125, -0.03890625 },
              width = 143
            }, {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-folded-mask.png",
              frame_count = 5,
              height = 51,
              line_length = 5,
              run_mode = "forward-then-backward",
              scale = 0.83,
              shift = { 0.06484375, -0.0778125 },
              tint = <table 25>,
              width = 60
            } }
        },
        folded_speed = 0.01,
        folding_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 1,
              frame_count = 26,
              height = 148,
              line_length = 13,
              run_mode = "backward",
              scale = 0.83,
              shift = { 0.9207854, -0.60953125 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-preparing-01.png",
                  height_in_frames = 2,
                  width_in_frames = 7
                }, {
                  filename = "__base__/graphics/entity/worm/worm-preparing-02.png",
                  height_in_frames = 2,
                  width_in_frames = 6
                } },
              width = 208
            }, {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-preparing-mask.png",
              frame_count = 26,
              height = 121,
              line_length = 13,
              run_mode = "backward",
              scale = 0.83,
              shift = { 0.14265625, -0.9596875 },
              tint = <table 25>,
              width = 98
            } }
        },
        folding_speed = 0.015,
        healing_per_tick = 0.015,
        icon = "__base__/graphics/icons/medium-worm.png",
        max_health = 350,
        name = "medium-worm-turret",
        order = "b-b-e",
        prepare_range = 30,
        prepared_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-prepared.png",
              frame_count = 10,
              height = 156,
              line_length = 10,
              run_mode = "forward-then-backward",
              scale = 0.83,
              shift = { 0.68734375, -0.73921875 },
              width = 190
            }, {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-prepared-mask.png",
              frame_count = 10,
              height = 129,
              line_length = 10,
              run_mode = "forward-then-backward",
              scale = 0.83,
              shift = { 0.06484375, -1.0634375 },
              tint = <table 25>,
              width = 80
            } }
        },
        prepared_speed = 0.015,
        preparing_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 1,
              frame_count = 26,
              height = 148,
              line_length = 13,
              run_mode = "forward",
              scale = 0.83,
              shift = { 0.9207854, -0.60953125 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-preparing-01.png",
                  height_in_frames = 2,
                  width_in_frames = 7
                }, {
                  filename = "__base__/graphics/entity/worm/worm-preparing-02.png",
                  height_in_frames = 2,
                  width_in_frames = 6
                } },
              width = 208
            }, {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-preparing-mask.png",
              frame_count = 26,
              height = 121,
              line_length = 13,
              run_mode = "forward",
              scale = 0.83,
              shift = { 0.14265625, -0.9596875 },
              tint = <table 25>,
              width = 98
            } }
        },
        preparing_speed = 0.025,
        resistances = { {
            decrease = 4,
            type = "physical"
          }, {
            decrease = 5,
            percent = 15,
            type = "explosion"
          } },
        rotation_speed = 1,
        selection_box = { { -1.1, -1 }, { 1.1, 1 } },
        shooting_cursor_size = 3.5,
        starting_attack_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 8,
              height = 196,
              run_mode = "forward",
              scale = 0.83,
              shift = { 0.79109375, -0.55765625 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-attack-01.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/worm/worm-attack-02.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              width = 248
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 8,
              height = 153,
              run_mode = "forward",
              scale = 0.83,
              shift = { 0.06484375, -0.93375 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-attack-mask-01.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity//worm/worm-attack-mask-02.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              tint = <table 25>,
              width = 168
            } }
        },
        starting_attack_sound = { {
            filename = "__base__/sound/creatures/worm-roar-short-1.ogg",
            volume = 0.85
          }, {
            filename = "__base__/sound/creatures/worm-roar-short-2.ogg",
            volume = 0.85
          }, {
            filename = "__base__/sound/creatures/worm-roar-short-3.ogg",
            volume = 0.85
          } },
        starting_attack_speed = 0.03,
        subgroup = "enemies",
        type = "turret"
      },
      ["small-worm-turret"] = {
        attack_parameters = {
          ammo_category = "bullet",
          ammo_type = {
            action = {
              action_delivery = {
                projectile = "acid-projectile-purple",
                starting_speed = 0.5,
                type = "projectile"
              },
              type = "direct"
            },
            category = "biological"
          },
          cooldown = 15,
          projectile_creation_distance = 1.8,
          range = 17
        },
        autoplace = {
          control = "enemy-base",
          force = "enemy",
          order = "b[enemy]-a[base]",
          peaks = { {
              influence = -10,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 1,
              starting_area_weight_range = 0
            }, {
              influence = 0.31,
              noise_layer = "enemy-base",
              noise_octaves_difference = -1.8,
              noise_persistence = 0.5
            }, {
              influence = 0.1,
              noise_layer = "enemy-base",
              noise_octaves_difference = -1.8,
              noise_persistence = 0.5,
              tier_from_start_max_range = 20,
              tier_from_start_optimal = 10,
              tier_from_start_top_property_limit = 10
            } },
          sharpness = 0.3
        },
        collision_box = { { -0.9, -0.8 }, { 0.9, 0.8 } },
        corpse = "small-worm-corpse",
        dying_explosion = "blood-explosion-big",
        ending_attack_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 8,
              height = 196,
              run_mode = "backward",
              scale = 0.65,
              shift = { 0.61953125, -0.43671875 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-attack-01.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/worm/worm-attack-02.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              width = 248
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 8,
              height = 153,
              run_mode = "backward",
              scale = 0.65,
              shift = { 0.05078125, -0.73125 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-attack-mask-01.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity//worm/worm-attack-mask-02.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              tint = <table 29>,
              width = 168
            } }
        },
        ending_attack_speed = 0.03,
        flags = { "placeable-enemy", "not-repairable", "breaths-air" },
        folded_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-folded.png",
              frame_count = 5,
              height = 104,
              line_length = 5,
              run_mode = "forward-then-backward",
              scale = 0.65,
              shift = { 0.0609375, -0.03046875 },
              width = 143
            }, {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-folded-mask.png",
              frame_count = 5,
              height = 51,
              line_length = 5,
              run_mode = "forward-then-backward",
              scale = 0.65,
              shift = { 0.05078125, -0.0609375 },
              tint = <table 29>,
              width = 60
            } }
        },
        folded_speed = 0.01,
        folding_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 1,
              frame_count = 26,
              height = 148,
              line_length = 13,
              run_mode = "backward",
              scale = 0.65,
              shift = { 0.721097, -0.47734375 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-preparing-01.png",
                  height_in_frames = 2,
                  width_in_frames = 7
                }, {
                  filename = "__base__/graphics/entity/worm/worm-preparing-02.png",
                  height_in_frames = 2,
                  width_in_frames = 6
                } },
              width = 208
            }, {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-preparing-mask.png",
              frame_count = 26,
              height = 121,
              line_length = 13,
              run_mode = "backward",
              scale = 0.65,
              shift = { 0.11171875, -0.7515625 },
              tint = <table 29>,
              width = 98
            } }
        },
        folding_speed = 0.015,
        healing_per_tick = 0.01,
        icon = "__base__/graphics/icons/small-worm.png",
        max_health = 200,
        name = "small-worm-turret",
        order = "b-b-d",
        prepare_range = 25,
        prepared_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-prepared.png",
              frame_count = 10,
              height = 156,
              line_length = 10,
              run_mode = "forward-then-backward",
              scale = 0.65,
              shift = { 0.53828125, -0.57890625 },
              width = 190
            }, {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-prepared-mask.png",
              frame_count = 10,
              height = 129,
              line_length = 10,
              run_mode = "forward-then-backward",
              scale = 0.65,
              shift = { 0.05078125, -0.8328125 },
              tint = <table 29>,
              width = 80
            } }
        },
        prepared_speed = 0.015,
        preparing_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 1,
              frame_count = 26,
              height = 148,
              line_length = 13,
              run_mode = "forward",
              scale = 0.65,
              shift = { 0.721097, -0.47734375 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-preparing-01.png",
                  height_in_frames = 2,
                  width_in_frames = 7
                }, {
                  filename = "__base__/graphics/entity/worm/worm-preparing-02.png",
                  height_in_frames = 2,
                  width_in_frames = 6
                } },
              width = 208
            }, {
              axially_symmetrical = false,
              direction_count = 1,
              filename = "__base__/graphics/entity/worm/worm-preparing-mask.png",
              frame_count = 26,
              height = 121,
              line_length = 13,
              run_mode = "forward",
              scale = 0.65,
              shift = { 0.11171875, -0.7515625 },
              tint = <table 29>,
              width = 98
            } }
        },
        preparing_speed = 0.025,
        selection_box = { { -0.9, -0.8 }, { 0.9, 0.8 } },
        shooting_cursor_size = 3,
        starting_attack_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 8,
              height = 196,
              run_mode = "forward",
              scale = 0.65,
              shift = { 0.61953125, -0.43671875 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-attack-01.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/worm/worm-attack-02.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              width = 248
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 8,
              height = 153,
              run_mode = "forward",
              scale = 0.65,
              shift = { 0.05078125, -0.73125 },
              stripes = { {
                  filename = "__base__/graphics/entity/worm/worm-attack-mask-01.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity//worm/worm-attack-mask-02.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              tint = <table 29>,
              width = 168
            } }
        },
        starting_attack_sound = { {
            filename = "__base__/sound/creatures/worm-roar-short-1.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/worm-roar-short-2.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/worm-roar-short-3.ogg",
            volume = 0.7
          } },
        starting_attack_speed = 0.03,
        subgroup = "enemies",
        type = "turret"
      }
    },
    unit = {
      ["big-biter"] = {
        attack_parameters = {
          ammo_category = "melee",
          ammo_type = {
            action = {
              action_delivery = {
                target_effects = {
                  damage = {
                    amount = 30,
                    type = "physical"
                  },
                  type = "damage"
                },
                type = "instant"
              },
              type = "direct"
            },
            category = "melee",
            target_type = "entity"
          },
          animation = {
            layers = { {
                animation_speed = 0.3,
                axially_symmetrical = false,
                direction_count = 16,
                frame_count = 11,
                height = 184,
                scale = 1,
                shift = { 1.74609, -0.644531 },
                stripes = { {
                    filename = "__base__/graphics/entity/biter/biter-attack-1.png",
                    height_in_frames = 8,
                    width_in_frames = 6
                  }, {
                    filename = "__base__/graphics/entity/biter/biter-attack-2.png",
                    height_in_frames = 8,
                    width_in_frames = 5
                  }, {
                    filename = "__base__/graphics/entity/biter/biter-attack-3.png",
                    height_in_frames = 8,
                    width_in_frames = 6
                  }, {
                    filename = "__base__/graphics/entity/biter/biter-attack-4.png",
                    height_in_frames = 8,
                    width_in_frames = 5
                  } },
                width = 279
              }, {
                axially_symmetrical = false,
                direction_count = 16,
                filename = "__base__/graphics/entity/biter/biter-attack-mask1.png",
                frame_count = 11,
                height = 108,
                scale = 1,
                shift = { 0.117188, -1.11328 },
                tint = <table 17>,
                width = 125
              }, {
                axially_symmetrical = false,
                direction_count = 16,
                filename = "__base__/graphics/entity/biter/biter-attack-mask2.png",
                frame_count = 11,
                height = 100,
                scale = 1,
                shift = { 0.117188, -1.06641 },
                tint = <table 18>,
                width = 114
              } }
          },
          cooldown = 35,
          range = 1.5,
          sound = { {
              filename = "__base__/sound/creatures/biter-roar-long-1.ogg",
              volume = 0.8
            }, {
              filename = "__base__/sound/creatures/biter-roar-long-2.ogg",
              volume = 0.8
            } }
        },
        collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        corpse = "big-biter-corpse",
        distance_per_frame = 0.2,
        distraction_cooldown = 300,
        dying_explosion = "blood-explosion-big",
        dying_sound = { {
            filename = "__base__/sound/creatures/creeper-death-1.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-2.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-3.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-4.ogg",
            volume = 0.7
          } },
        flags = { "placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable" },
        healing_per_tick = 0.02,
        icon = "__base__/graphics/icons/creeper.png",
        max_health = 375,
        movement_speed = 0.17,
        name = "big-biter",
        order = "b-b-c",
        pollution_to_join_attack = 1000,
        resistances = { {
            decrease = 8,
            type = "physical"
          }, {
            percent = 10,
            type = "explosion"
          } },
        run_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 16,
              height = 114,
              scale = 1,
              shift = { 0.714844, -0.246094 },
              stripes = { {
                  filename = "__base__/graphics/entity/biter/biter-run-1.png",
                  height_in_frames = 16,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/biter/biter-run-2.png",
                  height_in_frames = 16,
                  width_in_frames = 8
                } },
              width = 169
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              filename = "__base__/graphics/entity/biter/biter-run-mask1.png",
              frame_count = 16,
              height = 81,
              scale = 1,
              shift = { 0.117188, -0.867188 },
              tint = <table 17>,
              width = 105
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              filename = "__base__/graphics/entity/biter/biter-run-mask2.png",
              frame_count = 16,
              height = 81,
              line_length = 16,
              scale = 1,
              shift = { 0.117188, -0.855469 },
              tint = <table 18>,
              width = 95
            } }
        },
        selection_box = { { -0.7, -1.5 }, { 0.7, 0.3 } },
        sticker_box = { { -0.6, -0.8 }, { 0.6, 0 } },
        subgroup = "enemies",
        type = "unit",
        vision_distance = 30
      },
      ["big-spitter"] = {
        attack_parameters = {
          ammo_category = "rocket",
          ammo_type = {
            action = {
              action_delivery = {
                projectile = "acid-projectile-purple",
                starting_speed = 0.5,
                type = "projectile"
              },
              type = "direct"
            },
            category = "biological"
          },
          animation = {
            layers = { {
                animation_speed = 0.4,
                axially_symmetrical = false,
                direction_count = 16,
                frame_count = 22,
                height = 164,
                scale = 1,
                shift = { 0.765625, 0.0625 },
                stripes = { {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-1.png",
                    height_in_frames = 8,
                    width_in_frames = 8
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-2.png",
                    height_in_frames = 8,
                    width_in_frames = 8
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-3.png",
                    height_in_frames = 8,
                    width_in_frames = 6
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-4.png",
                    height_in_frames = 8,
                    width_in_frames = 8
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-5.png",
                    height_in_frames = 8,
                    width_in_frames = 8
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-6.png",
                    height_in_frames = 8,
                    width_in_frames = 6
                  } },
                width = 199
              }, {
                animation_speed = 0.4,
                axially_symmetrical = false,
                direction_count = 16,
                frame_count = 22,
                height = 90,
                scale = 1,
                shift = { 0, -0.625 },
                stripes = { {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-mask-1.png",
                    height_in_frames = 16,
                    width_in_frames = 11
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-mask-2.png",
                    height_in_frames = 16,
                    width_in_frames = 11
                  } },
                tint = <table 19>,
                width = 108
              } }
          },
          cooldown = 100,
          damage_modifier = 3,
          projectile_creation_distance = 1.9,
          range = 15,
          warmup = 30
        },
        collision_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        corpse = "big-spitter-corpse",
        distance_per_frame = 0.05,
        distraction_cooldown = 300,
        dying_explosion = "blood-explosion-big",
        dying_sound = { {
            filename = "__base__/sound/creatures/creeper-death-1.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-2.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-3.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-4.ogg",
            volume = 0.7
          } },
        flags = { "placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable" },
        healing_per_tick = 0.01,
        icon = "__base__/graphics/icons/creeper.png",
        max_health = 200,
        movement_speed = 0.15,
        name = "big-spitter",
        order = "b-b-f",
        pollution_to_join_attack = 600,
        resistances = { {
            percent = 30,
            type = "explosion"
          } },
        run_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 24,
              height = 164,
              priority = "very-low",
              scale = 1,
              shift = { 1.01562, 0 },
              still_frame = 4,
              stripes = { {
                  filename = "__base__/graphics/entity/spitter/spitter-run-1.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-run-2.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-run-3.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-run-4.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-run-5.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-run-6.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              width = 193
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              filename = "__base__/graphics/entity/spitter/spitter-run-mask.png",
              frame_count = 24,
              height = 90,
              scale = 1,
              shift = { 0.015625, -0.6875 },
              tint = <table 19>,
              width = 81
            } }
        },
        selection_box = { { -0.7, -1 }, { 0.7, 1 } },
        sticker_box = { { -0.3, -0.5 }, { 0.3, 0.1 } },
        subgroup = "enemies",
        type = "unit",
        vision_distance = 30
      },
      ["medium-biter"] = {
        attack_parameters = {
          ammo_category = "melee",
          ammo_type = {
            action = {
              action_delivery = {
                target_effects = {
                  damage = {
                    amount = 15,
                    type = "physical"
                  },
                  type = "damage"
                },
                type = "instant"
              },
              type = "direct"
            },
            category = "melee",
            target_type = "entity"
          },
          animation = {
            layers = { {
                animation_speed = 0.3,
                axially_symmetrical = false,
                direction_count = 16,
                frame_count = 11,
                height = 184,
                scale = 0.7,
                shift = { 1.222263, -0.4511717 },
                stripes = { {
                    filename = "__base__/graphics/entity/biter/biter-attack-1.png",
                    height_in_frames = 8,
                    width_in_frames = 6
                  }, {
                    filename = "__base__/graphics/entity/biter/biter-attack-2.png",
                    height_in_frames = 8,
                    width_in_frames = 5
                  }, {
                    filename = "__base__/graphics/entity/biter/biter-attack-3.png",
                    height_in_frames = 8,
                    width_in_frames = 6
                  }, {
                    filename = "__base__/graphics/entity/biter/biter-attack-4.png",
                    height_in_frames = 8,
                    width_in_frames = 5
                  } },
                width = 279
              }, {
                axially_symmetrical = false,
                direction_count = 16,
                filename = "__base__/graphics/entity/biter/biter-attack-mask1.png",
                frame_count = 11,
                height = 108,
                scale = 0.7,
                shift = { 0.0820316, -0.779296 },
                tint = <table 22>,
                width = 125
              }, {
                axially_symmetrical = false,
                direction_count = 16,
                filename = "__base__/graphics/entity/biter/biter-attack-mask2.png",
                frame_count = 11,
                height = 100,
                scale = 0.7,
                shift = { 0.0820316, -0.746487 },
                tint = <table 23>,
                width = 114
              } }
          },
          cooldown = 35,
          range = 1,
          sound = { {
              filename = "__base__/sound/creatures/biter-roar-medium-1.ogg",
              volume = 0.8
            }, {
              filename = "__base__/sound/creatures/biter-roar-medium-2.ogg",
              volume = 0.8
            } }
        },
        collision_box = { { -0.3, -0.3 }, { 0.3, 0.3 } },
        corpse = "medium-biter-corpse",
        distance_per_frame = 0.15,
        distraction_cooldown = 300,
        dying_explosion = "blood-explosion-small",
        dying_sound = { {
            filename = "__base__/sound/creatures/creeper-death-1.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-2.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-3.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-4.ogg",
            volume = 0.7
          } },
        flags = { "placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable" },
        healing_per_tick = 0.01,
        icon = "__base__/graphics/icons/creeper.png",
        max_health = 75,
        movement_speed = 0.185,
        name = "medium-biter",
        order = "b-b-b",
        pollution_to_join_attack = 1000,
        resistances = { {
            decrease = 4,
            type = "physical"
          }, {
            percent = 10,
            type = "explosion"
          } },
        run_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 16,
              height = 114,
              scale = 0.7,
              shift = { 0.5003908, -0.1722658 },
              stripes = { {
                  filename = "__base__/graphics/entity/biter/biter-run-1.png",
                  height_in_frames = 16,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/biter/biter-run-2.png",
                  height_in_frames = 16,
                  width_in_frames = 8
                } },
              width = 169
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              filename = "__base__/graphics/entity/biter/biter-run-mask1.png",
              frame_count = 16,
              height = 81,
              scale = 0.7,
              shift = { 0.0820316, -0.6070316 },
              tint = <table 22>,
              width = 105
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              filename = "__base__/graphics/entity/biter/biter-run-mask2.png",
              frame_count = 16,
              height = 81,
              line_length = 16,
              scale = 0.7,
              shift = { 0.0820316, -0.5988283 },
              tint = <table 23>,
              width = 95
            } }
        },
        selection_box = { { -0.7, -1.5 }, { 0.7, 0.3 } },
        sticker_box = { { -0.3, -0.5 }, { 0.3, 0.1 } },
        subgroup = "enemies",
        type = "unit",
        vision_distance = 30
      },
      ["medium-spitter"] = {
        attack_parameters = {
          ammo_category = "rocket",
          ammo_type = {
            action = {
              action_delivery = {
                projectile = "acid-projectile-purple",
                starting_speed = 0.5,
                type = "projectile"
              },
              type = "direct"
            },
            category = "biological"
          },
          animation = {
            layers = { {
                animation_speed = 0.4,
                axially_symmetrical = false,
                direction_count = 16,
                frame_count = 22,
                height = 164,
                scale = 0.7,
                shift = { 0.5359375, 0.04375 },
                stripes = { {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-1.png",
                    height_in_frames = 8,
                    width_in_frames = 8
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-2.png",
                    height_in_frames = 8,
                    width_in_frames = 8
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-3.png",
                    height_in_frames = 8,
                    width_in_frames = 6
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-4.png",
                    height_in_frames = 8,
                    width_in_frames = 8
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-5.png",
                    height_in_frames = 8,
                    width_in_frames = 8
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-6.png",
                    height_in_frames = 8,
                    width_in_frames = 6
                  } },
                width = 199
              }, {
                animation_speed = 0.4,
                axially_symmetrical = false,
                direction_count = 16,
                frame_count = 22,
                height = 90,
                scale = 0.7,
                shift = { 0, -0.4375 },
                stripes = { {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-mask-1.png",
                    height_in_frames = 16,
                    width_in_frames = 11
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-mask-2.png",
                    height_in_frames = 16,
                    width_in_frames = 11
                  } },
                tint = <table 24>,
                width = 108
              } }
          },
          cooldown = 100,
          damage_modifier = 2,
          projectile_creation_distance = 1.9,
          range = 15,
          warmup = 30
        },
        collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        corpse = "medium-spitter-corpse",
        distance_per_frame = 0.05,
        distraction_cooldown = 300,
        dying_explosion = "blood-explosion-small",
        dying_sound = { {
            filename = "__base__/sound/creatures/creeper-death-1.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-2.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-3.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-4.ogg",
            volume = 0.7
          } },
        flags = { "placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable" },
        healing_per_tick = 0.01,
        icon = "__base__/graphics/icons/creeper.png",
        max_health = 50,
        movement_speed = 0.165,
        name = "medium-spitter",
        order = "b-b-e",
        pollution_to_join_attack = 600,
        resistances = { {
            percent = 15,
            type = "explosion"
          } },
        run_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 24,
              height = 164,
              priority = "very-low",
              scale = 0.7,
              shift = { 0.710934, 0 },
              still_frame = 4,
              stripes = { {
                  filename = "__base__/graphics/entity/spitter/spitter-run-1.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-run-2.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-run-3.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-run-4.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-run-5.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-run-6.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              width = 193
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              filename = "__base__/graphics/entity/spitter/spitter-run-mask.png",
              frame_count = 24,
              height = 90,
              scale = 0.7,
              shift = { 0.0109375, -0.48125 },
              tint = <table 24>,
              width = 81
            } }
        },
        selection_box = { { -0.5, -0.7 }, { 0.5, 0.7 } },
        sticker_box = { { -0.3, -0.5 }, { 0.3, 0.1 } },
        subgroup = "enemies",
        type = "unit",
        vision_distance = 30
      },
      ["small-biter"] = {
        attack_parameters = {
          ammo_category = "melee",
          ammo_type = {
            action = {
              action_delivery = {
                target_effects = {
                  damage = {
                    amount = 6,
                    type = "physical"
                  },
                  type = "damage"
                },
                type = "instant"
              },
              type = "direct"
            },
            category = "melee",
            target_type = "entity"
          },
          animation = {
            layers = { {
                animation_speed = 0.3,
                axially_symmetrical = false,
                direction_count = 16,
                frame_count = 11,
                height = 184,
                scale = 0.5,
                shift = { 0.873045, -0.3222655 },
                stripes = { {
                    filename = "__base__/graphics/entity/biter/biter-attack-1.png",
                    height_in_frames = 8,
                    width_in_frames = 6
                  }, {
                    filename = "__base__/graphics/entity/biter/biter-attack-2.png",
                    height_in_frames = 8,
                    width_in_frames = 5
                  }, {
                    filename = "__base__/graphics/entity/biter/biter-attack-3.png",
                    height_in_frames = 8,
                    width_in_frames = 6
                  }, {
                    filename = "__base__/graphics/entity/biter/biter-attack-4.png",
                    height_in_frames = 8,
                    width_in_frames = 5
                  } },
                width = 279
              }, {
                axially_symmetrical = false,
                direction_count = 16,
                filename = "__base__/graphics/entity/biter/biter-attack-mask1.png",
                frame_count = 11,
                height = 108,
                scale = 0.5,
                shift = { 0.058594, -0.55664 },
                tint = <table 26>,
                width = 125
              }, {
                axially_symmetrical = false,
                direction_count = 16,
                filename = "__base__/graphics/entity/biter/biter-attack-mask2.png",
                frame_count = 11,
                height = 100,
                scale = 0.5,
                shift = { 0.058594, -0.533205 },
                tint = <table 27>,
                width = 114
              } }
          },
          cooldown = 35,
          range = 0.5,
          sound = { {
              filename = "__base__/sound/creatures/biter-roar-short-1.ogg",
              volume = 0.8
            }, {
              filename = "__base__/sound/creatures/biter-roar-short-2.ogg",
              volume = 0.8
            }, {
              filename = "__base__/sound/creatures/biter-roar-short-3.ogg",
              volume = 0.8
            } }
        },
        collision_box = { { -0.2, -0.2 }, { 0.2, 0.2 } },
        corpse = "small-biter-corpse",
        distance_per_frame = 0.1,
        distraction_cooldown = 300,
        dying_explosion = "blood-explosion-small",
        dying_sound = { {
            filename = "__base__/sound/creatures/creeper-death-1.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-2.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-3.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-4.ogg",
            volume = 0.7
          } },
        flags = { "placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air" },
        healing_per_tick = 0.01,
        icon = "__base__/graphics/icons/creeper.png",
        max_health = 15,
        movement_speed = 0.2,
        name = "small-biter",
        order = "b-b-a",
        pollution_to_join_attack = 200,
        run_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 16,
              height = 114,
              scale = 0.5,
              shift = { 0.357422, -0.123047 },
              stripes = { {
                  filename = "__base__/graphics/entity/biter/biter-run-1.png",
                  height_in_frames = 16,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/biter/biter-run-2.png",
                  height_in_frames = 16,
                  width_in_frames = 8
                } },
              width = 169
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              filename = "__base__/graphics/entity/biter/biter-run-mask1.png",
              frame_count = 16,
              height = 81,
              scale = 0.5,
              shift = { 0.058594, -0.433594 },
              tint = <table 26>,
              width = 105
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              filename = "__base__/graphics/entity/biter/biter-run-mask2.png",
              frame_count = 16,
              height = 81,
              line_length = 16,
              scale = 0.5,
              shift = { 0.058594, -0.4277345 },
              tint = <table 27>,
              width = 95
            } }
        },
        selection_box = { { -0.4, -0.7 }, { 0.7, 0.4 } },
        subgroup = "enemies",
        type = "unit",
        vision_distance = 30
      },
      ["small-spitter"] = {
        attack_parameters = {
          ammo_category = "rocket",
          ammo_type = {
            action = {
              action_delivery = {
                projectile = "acid-projectile-purple",
                starting_speed = 0.5,
                type = "projectile"
              },
              type = "direct"
            },
            category = "biological"
          },
          animation = {
            layers = { {
                animation_speed = 0.4,
                axially_symmetrical = false,
                direction_count = 16,
                frame_count = 22,
                height = 164,
                scale = 0.5,
                shift = { 0.3828125, 0.03125 },
                stripes = { {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-1.png",
                    height_in_frames = 8,
                    width_in_frames = 8
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-2.png",
                    height_in_frames = 8,
                    width_in_frames = 8
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-3.png",
                    height_in_frames = 8,
                    width_in_frames = 6
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-4.png",
                    height_in_frames = 8,
                    width_in_frames = 8
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-5.png",
                    height_in_frames = 8,
                    width_in_frames = 8
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-6.png",
                    height_in_frames = 8,
                    width_in_frames = 6
                  } },
                width = 199
              }, {
                animation_speed = 0.4,
                axially_symmetrical = false,
                direction_count = 16,
                frame_count = 22,
                height = 90,
                scale = 0.5,
                shift = { 0, -0.3125 },
                stripes = { {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-mask-1.png",
                    height_in_frames = 16,
                    width_in_frames = 11
                  }, {
                    filename = "__base__/graphics/entity/spitter/spitter-attack-mask-2.png",
                    height_in_frames = 16,
                    width_in_frames = 11
                  } },
                tint = <table 28>,
                width = 108
              } }
          },
          cooldown = 100,
          damage_modifier = 1,
          projectile_creation_distance = 1.9,
          range = 15,
          warmup = 30
        },
        collision_box = { { -0.3, -0.3 }, { 0.3, 0.3 } },
        corpse = "small-spitter-corpse",
        distance_per_frame = 0.05,
        distraction_cooldown = 300,
        dying_explosion = "blood-explosion-small",
        dying_sound = { {
            filename = "__base__/sound/creatures/creeper-death-1.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-2.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-3.ogg",
            volume = 0.7
          }, {
            filename = "__base__/sound/creatures/creeper-death-4.ogg",
            volume = 0.7
          } },
        flags = { "placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable" },
        healing_per_tick = 0.01,
        icon = "__base__/graphics/icons/creeper.png",
        max_health = 10,
        movement_speed = 0.185,
        name = "small-spitter",
        order = "b-b-d",
        pollution_to_join_attack = 200,
        run_animation = {
          layers = { {
              axially_symmetrical = false,
              direction_count = 16,
              frame_count = 24,
              height = 164,
              priority = "very-low",
              scale = 0.5,
              shift = { 0.50781, 0 },
              still_frame = 4,
              stripes = { {
                  filename = "__base__/graphics/entity/spitter/spitter-run-1.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-run-2.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-run-3.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-run-4.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-run-5.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                }, {
                  filename = "__base__/graphics/entity/spitter/spitter-run-6.png",
                  height_in_frames = 8,
                  width_in_frames = 8
                } },
              width = 193
            }, {
              axially_symmetrical = false,
              direction_count = 16,
              filename = "__base__/graphics/entity/spitter/spitter-run-mask.png",
              frame_count = 24,
              height = 90,
              scale = 0.5,
              shift = { 0.0078125, -0.34375 },
              tint = <table 28>,
              width = 81
            } }
        },
        selection_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        sticker_box = { { -0.3, -0.5 }, { 0.3, 0.1 } },
        subgroup = "enemies",
        type = "unit",
        vision_distance = 30
      }
    },
    ["unit-spawner"] = {
      ["biter-spawner"] = {
        animations = { {
            layers = { {
                animation_speed = 0.18,
                axially_symmetrical = false,
                direction_count = 1,
                filename = "__base__/graphics/entity/spawner/spawner-idle.png",
                frame_count = 8,
                height = 181,
                line_length = 8,
                run_mode = "forward-then-backward",
                shift = { -0.509375, -0.234375 },
                width = 243,
                y = 0
              }, {
                animation_speed = 0.18,
                axially_symmetrical = false,
                filename = "__base__/graphics/entity/spawner/spawner-idle-mask.png",
                frame_count = 8,
                height = 148,
                line_length = 8,
                run_mode = "forward-then-backward",
                shift = { -0.99375, -0.375 },
                tint = <table 21>,
                width = 166,
                y = 0
              } }
          }, {
            layers = { {
                animation_speed = 0.18,
                axially_symmetrical = false,
                direction_count = 1,
                filename = "__base__/graphics/entity/spawner/spawner-idle.png",
                frame_count = 8,
                height = 181,
                line_length = 8,
                run_mode = "forward-then-backward",
                shift = { -0.509375, -0.234375 },
                width = 243,
                y = 181
              }, {
                animation_speed = 0.18,
                axially_symmetrical = false,
                filename = "__base__/graphics/entity/spawner/spawner-idle-mask.png",
                frame_count = 8,
                height = 148,
                line_length = 8,
                run_mode = "forward-then-backward",
                shift = { -0.99375, -0.375 },
                tint = <table 21>,
                width = 166,
                y = 148
              } }
          }, {
            layers = { {
                animation_speed = 0.18,
                axially_symmetrical = false,
                direction_count = 1,
                filename = "__base__/graphics/entity/spawner/spawner-idle.png",
                frame_count = 8,
                height = 181,
                line_length = 8,
                run_mode = "forward-then-backward",
                shift = { -0.509375, -0.234375 },
                width = 243,
                y = 362
              }, {
                animation_speed = 0.18,
                axially_symmetrical = false,
                filename = "__base__/graphics/entity/spawner/spawner-idle-mask.png",
                frame_count = 8,
                height = 148,
                line_length = 8,
                run_mode = "forward-then-backward",
                shift = { -0.99375, -0.375 },
                tint = <table 21>,
                width = 166,
                y = 296
              } }
          }, {
            layers = { {
                animation_speed = 0.18,
                axially_symmetrical = false,
                direction_count = 1,
                filename = "__base__/graphics/entity/spawner/spawner-idle.png",
                frame_count = 8,
                height = 181,
                line_length = 8,
                run_mode = "forward-then-backward",
                shift = { -0.509375, -0.234375 },
                width = 243,
                y = 543
              }, {
                animation_speed = 0.18,
                axially_symmetrical = false,
                filename = "__base__/graphics/entity/spawner/spawner-idle-mask.png",
                frame_count = 8,
                height = 148,
                line_length = 8,
                run_mode = "forward-then-backward",
                shift = { -0.99375, -0.375 },
                tint = <table 21>,
                width = 166,
                y = 444
              } }
          } },
        autoplace = {
          control = "enemy-base",
          force = "enemy",
          order = "b[enemy]-b[biter-spawner]",
          peaks = { {
              influence = 0,
              richness_influence = 100,
              tier_from_start_max_range = 40,
              tier_from_start_optimal = 20,
              tier_from_start_top_property_limit = 20
            }, {
              influence = -10,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 1,
              starting_area_weight_range = 0
            }, {
              influence = 0.425,
              noise_layer = "enemy-base",
              noise_octaves_difference = -1.8,
              noise_persistence = 0.5
            }, {
              influence = 0.5,
              noise_layer = "enemy-base",
              noise_octaves_difference = -1.8,
              noise_persistence = 0.5,
              tier_from_start_max_range = 40,
              tier_from_start_optimal = 20,
              tier_from_start_top_property_limit = 20
            } },
          richness_base = 0,
          richness_multiplier = 1,
          sharpness = 0.4
        },
        collision_box = { { -3.2, -2.2 }, { 2.2, 2.2 } },
        corpse = "biter-spawner-corpse",
        dying_explosion = "blood-explosion-huge",
        flags = { "placeable-player", "placeable-enemy", "not-repairable" },
        healing_per_tick = 0.02,
        icon = "__base__/graphics/icons/biter-spawner.png",
        loot = { {
            count_max = 10,
            count_min = 2,
            item = "alien-artifact",
            probability = 1
          } },
        max_count_of_owned_units = 7,
        max_friends_around_to_spawn = 5,
        max_health = 350,
        max_richness_for_spawn_shift = 100,
        max_spawn_shift = 0,
        name = "biter-spawner",
        order = "b-b-g",
        pollution_cooldown = 10,
        resistances = { {
            decrease = 2,
            type = "physical"
          }, {
            decrease = 5,
            percent = 15,
            type = "explosion"
          } },
        result_units = { {
            spawn_points = { {
                evolution_factor = 0,
                spawn_weight = 0.3
              } },
            unit = "small-biter"
          }, { "medium-biter", { { 0.3, 0 }, { 0.6, 0.3 } } }, { "big-biter", { { 0.6, 0 }, { 1, 0.4 } } } },
        selection_box = { { -3.5, -2.5 }, { 2.5, 2.5 } },
        spawning_cooldown = { 360, 150 },
        spawning_radius = 10,
        spawning_spacing = 3,
        subgroup = "enemies",
        type = "unit-spawner"
      },
      ["spitter-spawner"] = {
        animations = { {
            layers = { {
                animation_speed = 0.18,
                axially_symmetrical = false,
                direction_count = 1,
                filename = "__base__/graphics/entity/spawner/spawner-idle.png",
                frame_count = 8,
                height = 181,
                line_length = 8,
                run_mode = "forward-then-backward",
                shift = { -0.509375, -0.234375 },
                width = 243,
                y = 0
              }, {
                animation_speed = 0.18,
                axially_symmetrical = false,
                filename = "__base__/graphics/entity/spawner/spawner-idle-mask.png",
                frame_count = 8,
                height = 148,
                line_length = 8,
                run_mode = "forward-then-backward",
                shift = { -0.99375, -0.375 },
                tint = <table 30>,
                width = 166,
                y = 0
              } }
          }, {
            layers = { {
                animation_speed = 0.18,
                axially_symmetrical = false,
                direction_count = 1,
                filename = "__base__/graphics/entity/spawner/spawner-idle.png",
                frame_count = 8,
                height = 181,
                line_length = 8,
                run_mode = "forward-then-backward",
                shift = { -0.509375, -0.234375 },
                width = 243,
                y = 181
              }, {
                animation_speed = 0.18,
                axially_symmetrical = false,
                filename = "__base__/graphics/entity/spawner/spawner-idle-mask.png",
                frame_count = 8,
                height = 148,
                line_length = 8,
                run_mode = "forward-then-backward",
                shift = { -0.99375, -0.375 },
                tint = <table 30>,
                width = 166,
                y = 148
              } }
          }, {
            layers = { {
                animation_speed = 0.18,
                axially_symmetrical = false,
                direction_count = 1,
                filename = "__base__/graphics/entity/spawner/spawner-idle.png",
                frame_count = 8,
                height = 181,
                line_length = 8,
                run_mode = "forward-then-backward",
                shift = { -0.509375, -0.234375 },
                width = 243,
                y = 362
              }, {
                animation_speed = 0.18,
                axially_symmetrical = false,
                filename = "__base__/graphics/entity/spawner/spawner-idle-mask.png",
                frame_count = 8,
                height = 148,
                line_length = 8,
                run_mode = "forward-then-backward",
                shift = { -0.99375, -0.375 },
                tint = <table 30>,
                width = 166,
                y = 296
              } }
          }, {
            layers = { {
                animation_speed = 0.18,
                axially_symmetrical = false,
                direction_count = 1,
                filename = "__base__/graphics/entity/spawner/spawner-idle.png",
                frame_count = 8,
                height = 181,
                line_length = 8,
                run_mode = "forward-then-backward",
                shift = { -0.509375, -0.234375 },
                width = 243,
                y = 543
              }, {
                animation_speed = 0.18,
                axially_symmetrical = false,
                filename = "__base__/graphics/entity/spawner/spawner-idle-mask.png",
                frame_count = 8,
                height = 148,
                line_length = 8,
                run_mode = "forward-then-backward",
                shift = { -0.99375, -0.375 },
                tint = <table 30>,
                width = 166,
                y = 444
              } }
          } },
        autoplace = {
          control = "enemy-base",
          force = "enemy",
          order = "b[enemy]-a[spitter-spawner]",
          peaks = { {
              influence = 0,
              richness_influence = 100,
              tier_from_start_max_range = 40,
              tier_from_start_optimal = 20,
              tier_from_start_top_property_limit = 20
            }, {
              influence = -10,
              starting_area_weight_max_range = 2,
              starting_area_weight_optimal = 1,
              starting_area_weight_range = 0
            }, {
              influence = 0.42,
              noise_layer = "enemy-base",
              noise_octaves_difference = -1.8,
              noise_persistence = 0.5
            }, {
              influence = 0.55,
              noise_layer = "enemy-base",
              noise_octaves_difference = -1.8,
              noise_persistence = 0.5,
              tier_from_start_max_range = 40,
              tier_from_start_optimal = 20,
              tier_from_start_top_property_limit = 20
            } },
          richness_base = 0,
          richness_multiplier = 1,
          sharpness = 0.4
        },
        collision_box = { { -3.2, -2.2 }, { 2.2, 2.2 } },
        corpse = "spitter-spawner-corpse",
        dying_explosion = "blood-explosion-huge",
        flags = { "placeable-player", "placeable-enemy", "not-repairable" },
        healing_per_tick = 0.02,
        icon = "__base__/graphics/icons/biter-spawner.png",
        loot = { {
            count_max = 15,
            count_min = 5,
            item = "alien-artifact",
            probability = 1
          } },
        max_count_of_owned_units = 7,
        max_friends_around_to_spawn = 5,
        max_health = 350,
        max_richness_for_spawn_shift = 100,
        max_spawn_shift = 0,
        name = "spitter-spawner",
        order = "b-b-h",
        pollution_cooldown = 10,
        resistances = { {
            decrease = 2,
            type = "physical"
          }, {
            decrease = 5,
            percent = 15,
            type = "explosion"
          } },
        result_units = { {
            spawn_points = { {
                evolution_factor = 0,
                spawn_weight = 0.3
              }, {
                evolution_factor = 0.25,
                spawn_weight = 0
              } },
            unit = "small-biter"
          }, { "small-spitter", { { 0.25, 0.3 } } }, { "medium-spitter", { { 0.5, 0 }, { 0.7, 0.3 } } }, { "big-spitter", { { 0.6, 0 }, { 1, 0.4 } } } },
        selection_box = { { -3.5, -2.5 }, { 2.5, 2.5 } },
        spawning_cooldown = { 360, 150 },
        spawning_radius = 10,
        spawning_spacing = 3,
        subgroup = "enemies",
        type = "unit-spawner"
      }
    },
    wall = {
      ["stone-wall"] = {
        collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
        corpse = "wall-remnants",
        fast_replaceable_group = "wall",
        flags = { "placeable-neutral", "player-creation" },
        icon = "__base__/graphics/icons/stone-wall.png",
        max_health = 350,
        minable = {
          mining_time = 1,
          result = "stone-wall"
        },
        mined_sound = {
          filename = "__base__/sound/deconstruct-bricks.ogg"
        },
        name = "stone-wall",
        pictures = {
          corner_left_down = {
            layers = { {
                filename = "__base__/graphics/entity/stone-wall/wall-corner-left-down.png",
                height = 42,
                priority = "extra-high",
                shift = { -0.078125, -0.15625 },
                width = 27
              }, {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/stone-wall/wall-corner-left-down-shadow.png",
                height = 60,
                priority = "extra-high",
                shift = { 0.328125, 0.640625 },
                width = 53
              } }
          },
          corner_right_down = {
            layers = { {
                filename = "__base__/graphics/entity/stone-wall/wall-corner-right-down.png",
                height = 42,
                priority = "extra-high",
                shift = { 0.078125, -0.15625 },
                width = 27
              }, {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/stone-wall/wall-corner-right-down-shadow.png",
                height = 61,
                priority = "extra-high",
                shift = { 0.484375, 0.640625 },
                width = 53
              } }
          },
          ending_left = {
            layers = { {
                filename = "__base__/graphics/entity/stone-wall/wall-ending-left.png",
                height = 42,
                priority = "extra-high",
                shift = { -0.078125, -0.15625 },
                width = 27
              }, {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/stone-wall/wall-ending-left-shadow.png",
                height = 32,
                priority = "extra-high",
                shift = { 0.328125, 0.5 },
                width = 53
              } }
          },
          ending_right = {
            layers = { {
                filename = "__base__/graphics/entity/stone-wall/wall-ending-right.png",
                height = 42,
                priority = "extra-high",
                shift = { 0.078125, -0.15625 },
                width = 27
              }, {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/stone-wall/wall-ending-right-shadow.png",
                height = 32,
                priority = "extra-high",
                shift = { 0.484375, 0.5 },
                width = 53
              } }
          },
          single = {
            layers = { {
                filename = "__base__/graphics/entity/stone-wall/wall-single.png",
                height = 42,
                priority = "extra-high",
                shift = { 0, -0.15625 },
                width = 22
              }, {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/stone-wall/wall-single-shadow.png",
                height = 32,
                priority = "extra-high",
                shift = { 0.359375, 0.5 },
                width = 47
              } }
          },
          straight_horizontal = { {
              layers = { {
                  filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-1.png",
                  height = 42,
                  priority = "extra-high",
                  shift = { 0, -0.15625 },
                  width = 32
                }, {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-shadow.png",
                  height = 32,
                  priority = "extra-high",
                  shift = { 0.421875, 0.5 },
                  width = 59
                } }
            }, {
              layers = { {
                  filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-2.png",
                  height = 42,
                  priority = "extra-high",
                  shift = { 0, -0.15625 },
                  width = 32
                }, {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-shadow.png",
                  height = 32,
                  priority = "extra-high",
                  shift = { 0.421875, 0.5 },
                  width = 59
                } }
            }, {
              layers = { {
                  filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-3.png",
                  height = 42,
                  priority = "extra-high",
                  shift = { 0, -0.15625 },
                  width = 32
                }, {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-shadow.png",
                  height = 32,
                  priority = "extra-high",
                  shift = { 0.421875, 0.5 },
                  width = 59
                } }
            } },
          straight_vertical = { {
              layers = { {
                  filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-1.png",
                  height = 42,
                  priority = "extra-high",
                  shift = { 0, -0.15625 },
                  width = 22
                }, {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-shadow.png",
                  height = 60,
                  priority = "extra-high",
                  shift = { 0.390625, 0.625 },
                  width = 47
                } }
            }, {
              layers = { {
                  filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-2.png",
                  height = 42,
                  priority = "extra-high",
                  shift = { 0, -0.15625 },
                  width = 22
                }, {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-shadow.png",
                  height = 60,
                  priority = "extra-high",
                  shift = { 0.390625, 0.625 },
                  width = 47
                } }
            }, {
              layers = { {
                  filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-3.png",
                  height = 42,
                  priority = "extra-high",
                  shift = { 0, -0.15625 },
                  width = 22
                }, {
                  draw_as_shadow = true,
                  filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-shadow.png",
                  height = 60,
                  priority = "extra-high",
                  shift = { 0.390625, 0.625 },
                  width = 47
                } }
            } },
          t_up = {
            layers = { {
                filename = "__base__/graphics/entity/stone-wall/wall-t-down.png",
                height = 42,
                priority = "extra-high",
                shift = { 0, -0.15625 },
                width = 32
              }, {
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/stone-wall/wall-t-down-shadow.png",
                height = 61,
                priority = "extra-high",
                shift = { 0.546875, 0.640625 },
                width = 71
              } }
          }
        },
        repair_sound = {
          filename = "__base__/sound/manual-repair-simple.ogg"
        },
        repair_speed_modifier = 2,
        resistances = { {
            decrease = 3,
            percent = 20,
            type = "physical"
          }, {
            decrease = 45,
            percent = 60,
            type = "impact"
          }, {
            decrease = 10,
            percent = 30,
            type = "explosion"
          }, {
            percent = 100,
            type = "fire"
          }, {
            percent = 70,
            type = "laser"
          } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        type = "wall"
      }
    }
  }
}
