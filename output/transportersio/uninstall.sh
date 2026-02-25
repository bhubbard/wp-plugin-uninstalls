#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ts_tab_options_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'transporters_display_mode_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'transporters_url_site_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ts_delayformload_%'"
wp option delete 'transporters_map_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ts_ampm_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ts_fixed_route_custom_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ts_viastops_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'transporters_custom_css_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'transporters_custom_js_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ts_custom_background_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ts_custom_text_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ts_custom_title_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ts_custom_border_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ts_custom_button_color_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ts_vehicle_groups_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'transporters_return_journey_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'transporters_profile_id_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ts_show_notes_%'"
wp option delete 'transporters_url_site_1'
wp option delete 'transporters_url_site_2'
wp option delete 'transporters_url_site_3'
wp option delete 'transporters_url_site_4'
wp option delete 'transporters_url_site_5'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'transporters_custom_js_after1_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'transporters_custom_js_after2_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'transporters_custom_js_back_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ts_fixed_route_%'"

