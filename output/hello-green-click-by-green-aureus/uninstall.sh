#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'co2_section_api_key'
wp option delete 'co2_section_bg_color'
wp option delete 'co2_section_percentage_key'
wp option delete 'co2_section_option_title_color'
wp option delete 'co2_section_option_text_color'
wp option delete 'co2_section_border_radius_round'
wp option delete 'co2_section_border_radius'
wp option delete 'co2_section_active_bg_color'
wp option delete 'co2_section_inactive_bg_color'
wp option delete 'co2_section_option_active_text_color'
wp option delete 'co2_section_option_inactive_text_color'
wp option delete 'co2_section_border_width'
wp option delete 'co2_section_border_color'
wp option delete 'co2_section_loader'
wp option delete 'co2_section_function2_key'
wp option delete 'co2_section_function1_key'
wp option delete 'default_settings_key'
wp option delete 'co2_weight'
wp option delete 'co2_section_weight_bg_color'
wp option delete 'co2_weight_font'
wp option delete 'co2_section_language'
wp option delete 'co2_section1_weight_font_size'
wp option delete 'co2_section_weight_font_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'totalweight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'totalweight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'totalweight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'totalweight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'totalcustomerweight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'totalcustomerweight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'totalcustomerweight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'totalcustomerweight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'green_shop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'green_shop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'green_shop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'green_shop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roundOff'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roundOff'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roundOff'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roundOff'"
