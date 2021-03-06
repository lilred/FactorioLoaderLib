return {
    alert_type = {
      custom = 6,
      entity_destroyed = 0,
      entity_under_attack = 1,
      no_material_for_construction = 3,
      no_storage = 7,
      not_enough_construction_robots = 2,
      not_enough_repair_packs = 4,
      turret_fire = 5
    },
    chain_signal_state = {
      all_open = 1,
      none = 0,
      none_open = 3,
      partially_open = 2
    },
    chunk_generated_status = {
      basic_tiles = 20,
      corrected_tiles = 30,
      custom_tiles = 10,
      entities = 50,
      nothing = 0,
      tiles = 40
    },
    circuit_condition_index = {
      arithmetic_combinator = 1,
      constant_combinator = 1,
      decider_combinator = 1,
      inserter_circuit = 1,
      inserter_logistic = 2,
      lamp = 1,
      offshore_pump = 1,
      pump = 1
    },
    circuit_connector_id = {
      accumulator = 1,
      combinator_input = 1,
      combinator_output = 2,
      constant_combinator = 1,
      container = 1,
      electric_pole = 1,
      inserter = 1,
      lamp = 1,
      offshore_pump = 1,
      programmable_speaker = 1,
      pump = 1,
      rail_signal = 1,
      roboport = 1,
      storage_tank = 1,
      wall = 1
    },
    command = {
      attack = 1,
      attack_area = 5,
      build_base = 7,
      compound = 3,
      go_to_location = 2,
      group = 4,
      wander = 6
    },
    compound_command = {
      logical_and = 0,
      logical_or = 1,
      return_last = 2
    },
    control_behavior = {
      inserter = {
        circuit_mode_of_operation = {
          enable_disable = 0,
          none = 3,
          read_hand_contents = 2,
          set_filters = 1,
          set_stack_size = 4
        },
        hand_read_mode = {
          hold = 1,
          pulse = 0
        }
      },
      lamp = {
        circuit_mode_of_operation = {
          use_colors = 0
        }
      },
      logistic_container = {
        circuit_mode_of_operation = {
          send_contents = 0,
          set_requests = 1
        }
      },
      mining_drill = {
        resource_read_mode = {
          entire_patch = 1,
          this_miner = 0
        }
      },
      roboport = {
        circuit_mode_of_operation = {
          read_logistics = 0,
          read_robot_stats = 1
        }
      },
      train_stop = {
        circuit_mode_of_operation = {
          enable_disable = 0,
          read_from_train = 2,
          read_stopped_train = 3,
          send_to_train = 1
        }
      },
      transport_belt = {
        content_read_mode = {
          hold = 1,
          pulse = 0
        }
      },
      type = {
        accumulator = 13,
        arithmetic_combinator = 10,
        constant_combinator = 11,
        container = 1,
        decider_combinator = 9,
        generic_on_off = 2,
        inserter = 3,
        lamp = 4,
        logistic_container = 5,
        mining_drill = 16,
        programmable_speaker = 17,
        rail_signal = 14,
        roboport = 6,
        storage_tank = 7,
        train_stop = 8,
        transport_belt = 12,
        wall = 15
      }
    },
    controllers = {
      character = 1,
      ghost = 0,
      god = 2
    },
    deconstruction_item = {
      entity_filter_mode = {
        blacklist = 1,
        whitelist = 0
      },
      tile_filter_mode = {
        blacklist = 1,
        whitelist = 0
      },
      tile_selection_mode = {
        always = 1,
        never = 2,
        normal = 0,
        only = 3
      }
    },
    difficulty = {
      easy = 0,
      hard = 2,
      normal = 1
    },
    difficulty_settings = {
      recipe_difficulty = {
        expensive = 1,
        normal = 0
      },
      technology_difficulty = {
        expensive = 1,
        normal = 0
      }
    },
    direction = {
      east = 2,
      north = 0,
      northeast = 1,
      northwest = 7,
      south = 4,
      southeast = 3,
      southwest = 5,
      west = 6
    },
    distraction = {
      by_anything = 3,
      by_damage = 4,
      by_enemy = 1,
      none = 0
    },
    events = {
      on_biter_base_built = 55,
      on_built_entity = 6,
      on_canceled_deconstruction = 21,
      on_chunk_generated = 12,
      on_console_chat = 71,
      on_console_command = 72,
      on_difficulty_settings_changed = 60,
      on_entity_died = 4,
      on_entity_renamed = 57,
      on_entity_settings_pasted = 31,
      on_force_created = 27,
      on_forces_merging = 28,
      on_gui_checked_state_changed = 3,
      on_gui_click = 1,
      on_gui_elem_changed = 67,
      on_gui_selection_state_changed = 58,
      on_gui_text_changed = 2,
      on_marked_for_deconstruction = 20,
      on_market_item_purchased = 53,
      on_picked_up_item = 5,
      on_player_alt_selected_area = 50,
      on_player_ammo_inventory_changed = 36,
      on_player_armor_inventory_changed = 35,
      on_player_built_tile = 45,
      on_player_changed_force = 56,
      on_player_changed_surface = 51,
      on_player_configured_blueprint = 70,
      on_player_crafted_item = 13,
      on_player_created = 24,
      on_player_cursor_stack_changed = 29,
      on_player_deconstructed_area = 69,
      on_player_died = 41,
      on_player_driving_changed_state = 26,
      on_player_dropped_item = 54,
      on_player_gun_inventory_changed = 37,
      on_player_joined_game = 43,
      on_player_left_game = 44,
      on_player_main_inventory_changed = 32,
      on_player_mined_entity = 65,
      on_player_mined_item = 8,
      on_player_mined_tile = 46,
      on_player_placed_equipment = 38,
      on_player_quickbar_inventory_changed = 33,
      on_player_removed = 73,
      on_player_removed_equipment = 39,
      on_player_respawned = 42,
      on_player_rotated_entity = 19,
      on_player_selected_area = 49,
      on_player_setup_blueprint = 68,
      on_player_tool_inventory_changed = 34,
      on_pre_entity_settings_pasted = 30,
      on_pre_player_died = 40,
      on_pre_surface_deleted = 63,
      on_preplayer_mined_item = 11,
      on_put_item = 9,
      on_research_finished = 18,
      on_research_started = 17,
      on_resource_depleted = 25,
      on_robot_built_entity = 14,
      on_robot_built_tile = 47,
      on_robot_mined = 16,
      on_robot_mined_entity = 64,
      on_robot_mined_tile = 48,
      on_robot_pre_mined = 15,
      on_rocket_launched = 10,
      on_runtime_mod_setting_changed = 59,
      on_sector_scanned = 7,
      on_selected_entity_changed = 52,
      on_surface_created = 61,
      on_surface_deleted = 62,
      on_tick = 0,
      on_train_changed_state = 23,
      on_train_created = 66,
      on_trigger_created_entity = 22,
      script_raised_built = 74,
      script_raised_destroy = 75,
      script_raised_revive = 76
    },
    group_state = {
      attacking_distraction = 2,
      attacking_target = 3,
      finished = 4,
      gathering = 0,
      moving = 1
    },
    gui_type = {
      achievement = 8,
      blueprint_library = 9,
      bonus = 6,
      controller = 3,
      entity = 1,
      equipment = 10,
      item = 5,
      kills = 13,
      logistic = 11,
      none = 0,
      other_player = 12,
      permissions = 14,
      production = 4,
      research = 2,
      trains = 7,
      tutorials = 15
    },
    input_action = {
      add_permission_group = 170,
      alt_select_area = 145,
      alt_select_blueprint_entities = 90,
      begin_mining = 6,
      begin_mining_terrain = 7,
      build_item = 3,
      build_rail = 135,
      build_terrain = 129,
      cancel_craft = 44,
      cancel_deconstruct = 120,
      cancel_new_blueprint = 93,
      cancel_research = 142,
      change_active_item_group_for_crafting = 69,
      change_active_item_group_for_filters = 84,
      change_active_quick_bar = 79,
      change_arithmetic_combinator_parameters = 123,
      change_blueprint_book_record_label = 109,
      change_decider_combinator_parameters = 124,
      change_item_label = 134,
      change_picking_state = 1,
      change_programmable_speaker_alert_parameters = 126,
      change_programmable_speaker_circuit_parameters = 127,
      change_programmable_speaker_parameters = 125,
      change_riding_state = 12,
      change_shooting_state = 27,
      change_single_blueprint_record_label = 100,
      change_train_stop_station = 68,
      change_train_wait_condition = 131,
      change_train_wait_condition_data = 132,
      clean_cursor_stack = 37,
      clear_blueprint = 113,
      clear_selected_blueprint = 148,
      clear_selected_deconstruction_item = 149,
      connect_rolling_stock = 25,
      copy_entity_settings = 110,
      craft = 23,
      craft_blueprint_record = 99,
      create_blueprint_like = 104,
      cursor_split = 19,
      cursor_transfer = 18,
      custom_input = 133,
      cycle_blueprint_book_backwards = 151,
      cycle_blueprint_book_forwards = 150,
      deconstruct = 88,
      delete_blueprint_record = 103,
      delete_custom_tag = 166,
      delete_permission_group = 171,
      destroy_opened_item = 114,
      disconnect_rolling_stock = 26,
      drop_blueprint_record = 102,
      drop_item = 2,
      drop_to_blueprint_book = 164,
      edit_custom_tag = 165,
      edit_permission_group = 172,
      edit_train_schedule = 66,
      export_blueprint = 115,
      fast_entity_split = 62,
      fast_entity_transfer = 61,
      grab_blueprint_record = 101,
      gui_checked_state_changed = 73,
      gui_click = 63,
      gui_elem_selected = 174,
      gui_selection_state_changed = 74,
      gui_text_changed = 72,
      import_blueprint = 116,
      import_blueprint_string = 173,
      inventory_split = 43,
      inventory_transfer = 21,
      launch_rocket = 52,
      market_offer = 65,
      mod_settings_changed = 162,
      open_achievements_gui = 140,
      open_blueprint_library_gui = 80,
      open_blueprint_record = 96,
      open_bonus_gui = 138,
      open_character_gui = 17,
      open_equipment = 15,
      open_gui = 13,
      open_item = 14,
      open_kills_gui = 82,
      open_logistic_gui = 161,
      open_production_gui = 81,
      open_technology_gui = 48,
      open_train_gui = 136,
      open_train_station_gui = 143,
      open_trains_gui = 139,
      open_tutorials_gui = 141,
      paste_entity_settings = 111,
      place_equipment = 75,
      remove_cables = 112,
      reset_assembling_machine = 40,
      reverse_rotate_entity = 10,
      rotate_entity = 9,
      select_area = 144,
      select_blueprint_entities = 89,
      select_entity_slot = 155,
      select_gun = 41,
      select_item = 39,
      select_tile_slot = 156,
      set_auto_launch_rocket = 53,
      set_autosort_inventory = 46,
      set_behavior_mode = 60,
      set_blueprint_icon = 92,
      set_circuit_condition = 49,
      set_circuit_mode_of_operation = 59,
      set_deconstruction_item_tile_selection_mode = 160,
      set_deconstruction_item_trees_and_rocks_only = 159,
      set_entity_color = 147,
      set_entity_energy_property = 163,
      set_filter = 45,
      set_inserter_max_stack_size = 128,
      set_inventory_bar = 83,
      set_logistic_filter_item = 54,
      set_logistic_filter_signal = 55,
      set_logistic_trash_filter_item = 152,
      set_research_finished_stops_game = 122,
      set_signal = 50,
      set_single_blueprint_record_icon = 95,
      set_train_stopped = 67,
      set_use_item_groups = 70,
      setup_assembling_machine = 29,
      setup_blueprint = 91,
      setup_single_blueprint_record = 94,
      shortcut_quick_bar_transfer = 36,
      smart_pipette = 38,
      stack_split = 42,
      stack_transfer = 20,
      start_repair = 86,
      start_research = 51,
      start_walking = 4,
      switch_connect_to_logistic_network = 58,
      switch_constant_combinator_state = 56,
      switch_power_switch_state = 57,
      switch_to_rename_stop_gui = 137,
      take_equipment = 76,
      toggle_connect_center_back_tank = 168,
      toggle_connect_front_center_tank = 167,
      toggle_deconstruction_item_entity_filter_mode = 157,
      toggle_deconstruction_item_tile_filter_mode = 158,
      toggle_driving = 11,
      toggle_enable_vehicle_logistics_while_moving = 154,
      toggle_entity_on_off_state = 28,
      toggle_show_entity_info = 117,
      use_ability = 77,
      use_item = 78,
      wire_dragging = 24,
      write_to_console = 64
    },
    inventory = {
      assembling_machine_input = 2,
      assembling_machine_modules = 4,
      assembling_machine_output = 3,
      beacon_modules = 1,
      burnt_result = 6,
      car_ammo = 3,
      car_trunk = 2,
      cargo_wagon = 1,
      chest = 1,
      fuel = 1,
      furnace_modules = 4,
      furnace_result = 3,
      furnace_source = 2,
      god_main = 2,
      god_quickbar = 1,
      item_main = 1,
      lab_input = 2,
      lab_modules = 3,
      mining_drill_modules = 2,
      player_ammo = 4,
      player_armor = 5,
      player_guns = 3,
      player_main = 1,
      player_quickbar = 2,
      player_tools = 6,
      player_trash = 8,
      player_vehicle = 7,
      roboport_material = 2,
      roboport_robot = 1,
      robot_cargo = 1,
      robot_repair = 2,
      rocket_silo_result = 6,
      rocket_silo_rocket = 5,
      turret_ammo = 1
    },
    logistic_member_index = {
      character_provider = 2,
      character_requester = 0,
      character_storage = 1,
      generic_on_off_behavior = 0,
      logistic_container = 0,
      vehicle_storage = 1
    },
    logistic_mode = {
      active_provider = 1,
      none = 0,
      passive_provider = 4,
      requester = 3,
      storage = 2
    },
    mouse_button_type = {
      left = 2,
      middle = 8,
      none = 1,
      right = 4
    },
    rail_connection_direction = {
      left = 0,
      none = 3,
      right = 2,
      straight = 1
    },
    rail_direction = {
      back = 1,
      front = 0
    },
    riding = {
      acceleration = {
        accelerating = 1,
        braking = 2,
        nothing = 0,
        reversing = 3
      },
      direction = {
        left = 0,
        right = 2,
        straight = 1
      }
    },
    shooting = {
      not_shooting = 0,
      shooting_enemies = 1,
      shooting_selected = 2
    },
    signal_state = {
      closed = 1,
      open = 0,
      reserved = 2,
      reserved_by_circuit_network = 3
    },
    train_state = {
      arrive_signal = 4,
      arrive_station = 6,
      manual_control = 9,
      manual_control_stop = 8,
      no_path = 3,
      no_schedule = 2,
      on_the_path = 0,
      path_lost = 1,
      stop_for_auto_control = 10,
      wait_signal = 5,
      wait_station = 7
    },
    transport_line = {
      left_line = 1,
      left_split_line = 5,
      left_underground_line = 3,
      right_line = 2,
      right_split_line = 6,
      right_underground_line = 4,
      secondary_left_line = 3,
      secondary_left_split_line = 7,
      secondary_right_line = 4,
      secondary_right_split_line = 8
    },
    wire_connection_id = {
      electric_pole = 0,
      power_switch_left = 0,
      power_switch_right = 1
    },
    wire_type = {
      copper = 1,
      green = 3,
      red = 2
    }
  }