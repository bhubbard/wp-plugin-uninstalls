#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_internal_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_external_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_display_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_close'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_close_expiry'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_display_page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_message_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_message_title_header_size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_message_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_message_alignment'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_link_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_link_target'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_foreground_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_container_css'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_container_css_mobile'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_job_run_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_data_frequency'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

