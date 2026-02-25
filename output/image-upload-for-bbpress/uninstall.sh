#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_bbp_allow_anonymous'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_activate'"
wp option delete 'hm_bbpui_rd_notice_hidden'
wp option delete 'hm_bbpui_first_activate'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rd_notice_hidden'"

# Clear Cron Jobs
wp cron event delete 'hm_bbpui_clean_temp_dir'

