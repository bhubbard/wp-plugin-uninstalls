#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rs_christmas_trees_display_set'
wp option delete 'rs_christmas_trees_hide_click_activation'
wp option delete 'rs_christmas_trees_active_tree'
wp option delete 'rs_christmas_trees_display_type'
wp option delete 'rs_christmas_trees_display_type_footer'
wp option delete 'rs_christmas_trees_display_location'
wp option delete 'rs_christmas_trees_sticky'
wp option delete 'rs_display_snow'
wp option delete 'rs_display_norma_snow_or_3d'
wp option delete 'rs_maximum_fall_speed'
wp option delete 'rs_flake_minimum_size'
wp option delete 'rs_flake_maximum_size'
wp option delete 'rs_show_on_page'
wp option delete 'rs_show_flake_type'
wp option delete 'rs_show_z_index'
wp option delete 'rs_show_color'
wp option delete 'christmas_schedule_before_date'
wp option delete 'christmas_schedule_active'

