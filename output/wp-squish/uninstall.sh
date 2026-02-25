#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pp_wpsq_api_stats_%'"
wp option delete 'pp_wpsq_api_run'
wp option delete 'pp_wpsq_api_stats_jpeg'
wp option delete 'pp_wpsq_api_stats_png'
wp option delete 'pp_wpsq_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

# Clear Cron Jobs
wp cron event delete 'pp_wpsq_api_run'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pp-wpsq-processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pp-wpsq-processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pp-wpsq-processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pp-wpsq-processed'"
