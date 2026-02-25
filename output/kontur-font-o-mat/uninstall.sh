#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kntrfnt_kntrfntmt_active_'
wp option delete 'kntrfnt_load_fonts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_kntrfntmt_active_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_kntrfntmt_fontfamily_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_kntrfntmt_class_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_font_size_active_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_font_size_size_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_font_weight_active_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_font_weight_size_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_kntrfntmt_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_font_size_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kntrfnt_font_weight_title_%'"
wp option delete 'kntrfnt_load_fonts_active'
wp option delete 'kntrfnt_clear_format_active'
wp option delete 'kntrfnt_underline_active'

