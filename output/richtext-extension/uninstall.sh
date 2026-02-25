#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rtex_highlighter_active_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rtex_highlighter_thickness_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rtex_highlighter_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rtex_highlighter_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rtex_highlighter_opacity_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rtex_font_size_active_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rtex_font_size_size_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rtex_highlighter_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rtex_font_size_title_%'"
wp option delete 'rtex_underline_active'
wp option delete 'rtex_clear_format_active'

