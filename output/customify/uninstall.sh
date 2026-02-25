#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pixcustomify_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_final'"
wp option delete 'sm_coloration_level'
wp option delete 'sm_color_diversity'
wp option delete 'sm_shuffle_colors'
wp option delete 'sm_color_palette'
wp option delete 'sm_color_palette_variation'
wp option delete 'sm_is_custom_color_palette'
wp option delete 'sm_font_palette'
wp option delete 'sm_font_palette_variation'
wp option delete 'sm_is_custom_font_palette'
wp option delete 'style_manager_user_feedback_provided'
wp option delete 'customify_dbversion'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_timestamp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%'"
wp option delete 'sm_dark_mode_advanced'
wp option delete 'sm_dark_mode'
wp option delete 'sm_dark_primary_final'
wp option delete 'sm_dark_secondary_final'
wp option delete 'sm_dark_tertiary_final'
wp option delete 'sm_light_primary_final'
wp option delete 'sm_light_secondary_final'
wp option delete 'sm_light_tertiary_final'

