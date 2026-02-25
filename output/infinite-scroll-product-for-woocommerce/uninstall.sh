#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'infinite_sp_woo_inf_basics'
wp option delete 'infinite_sp_woo_inf_color'
wp option delete 'infinite_sp_blog_section'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

