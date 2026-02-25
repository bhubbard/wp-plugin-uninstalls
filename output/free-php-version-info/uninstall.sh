#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'my_plugin_consent'
wp option delete 'admin_login_consent'
wp option delete 'my_plugin_api_key'
wp option delete 'wplc_ocu_core_token'
wp option delete 'wplc_ocu_plugins_token'
wp option delete 'wplc_ocu_themes_token'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'oss_security_results'
wp transient delete 'update_core'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'send_daily_data_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login_link_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login_link_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login_link_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login_link_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'one_time_login_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'one_time_login_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'one_time_login_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'one_time_login_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'one_time_login_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'one_time_login_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'one_time_login_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'one_time_login_expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'one_time_login_usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'one_time_login_usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'one_time_login_usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'one_time_login_usage_count'"
