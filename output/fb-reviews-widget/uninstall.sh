#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_msg'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rate_us'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activation_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rev_notice_hide'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rev_notice_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_multisite'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_auth_code'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_revupd_cron'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_debug_mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_demand_assets'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_inlinecss_off'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_widget'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_error'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_minified_assets'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_yelp_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_do_activation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_revupd_cron_timeout'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feed_ids'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_revupd_cron_log'"
wp option delete 'grw_save_log'
wp option delete 'grw_last_error'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_reviews' OR option_name LIKE '_site_transient_%_reviews'"

# Clear Cron Jobs

