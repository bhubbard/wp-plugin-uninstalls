#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'filter_more_posts'
wp option delete 'infinite_post_settings'
wp option delete 'infinite_scroll'
wp option delete 'load_more_posts'
wp option delete 'pagination_more_posts'
wp option delete 'infinite_woo_settings'

# Clear Cron Jobs

