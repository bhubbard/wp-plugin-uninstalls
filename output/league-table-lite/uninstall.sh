#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tables_menu_capability'"
wp option delete 'daextletal_options_version'
wp option delete 'daextletal_database_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tools_menu_capability'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_maintenance_menu_capability'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_items_per_page_tables_menu'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_link_cell_property'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_image_left_cell_property'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_image_right_cell_property'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_widget_text_shortcode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_load_google_font_1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_load_google_font_2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_general_stylesheet_file_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tablesorter_library_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_general_javascript_file_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_limit_shortcode_parsing'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_verify_single_shortcode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_max_execution_time'"
wp option delete 'daextletal_dismissible_notice_a'

