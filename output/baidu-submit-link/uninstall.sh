#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wb_bsl_ver'
wp option delete 'bsl_version'
wp option delete 'wb_bsl_promote'
wp option delete 'wb_idx_data_updated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ver'"
wp option delete 'wb_bsl_check_all'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wb_bsl_cnf_%'"
wp option delete 'bsl_yandex_token'
wp option delete 'bsl_yandex_error'
wp option delete 'bsl_bing_updateCrawlStats'
wp option delete 'wb_bsl_db_ver'
wp option delete 'bsl_google_jwt_token'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'bsl_check_all_404_url'
wp cron event delete 'baidu_push_url_cron_action_v3'
wp cron event delete 'bsl_single_push_url'
wp cron event delete 'baidu_push_url_cron_action_v4'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_bsl_daily_push'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_bsl_daily_push'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_bsl_daily_push'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_bsl_daily_push'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'url_in_baidu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'url_in_baidu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'url_in_baidu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'url_in_baidu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'url_in_baidu_ymd'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'url_in_baidu_ymd'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'url_in_baidu_ymd'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'url_in_baidu_ymd'"
