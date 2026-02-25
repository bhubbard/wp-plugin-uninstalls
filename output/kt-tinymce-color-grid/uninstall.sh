#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kt_color_grid_sets'
wp option delete 'kt_color_grid_custom'
wp option delete 'kt_color_grid_visual'
wp option delete 'kt_color_grid_palette'
wp option delete 'kt_color_grid_oceanwp_alpha'
wp option delete 'kt_color_grid_gp_alpha'
wp option delete 'kt_color_grid_type'
wp option delete 'kt_color_grid_mce_reset'
wp option delete 'kt_color_grid_astra_theme'
wp option delete 'kt_color_grid_gp'

