#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_http_s'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_saved_search_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_grid_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_header_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_header_text_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_agenda_register_btn_bg'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_agenda_register_btn_txt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_agenda_date_bg'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_agenda_date_txt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_view_mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activate_links'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_organization_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_css_file'"

