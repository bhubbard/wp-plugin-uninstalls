#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'exad_blocks_notice_hide'
wp option delete 'exad_save_settings'
wp option delete 'exad_google_map_api_option'
wp option delete 'exad_save_mailchimp_api'
wp option delete 'exad_primary_color_option'
wp option delete 'exad_secondary_color_option'
wp option delete 'exad_do_update_redirect'
wp option delete 'elementor_viewport_lg'
wp option delete 'elementor_viewport_md'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

