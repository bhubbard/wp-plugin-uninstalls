#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbiztool_messaging_settings'
wp option delete 'woocommerce_store_phone'
wp option delete 'wbiztool_messaging_version'
wp option delete 'wbiztool_messaging_network_settings'
wp option delete 'wbiztool_test_setting'

# Delete Transients
wp transient delete 'wbiztool_messaging_connection_test'
wp transient delete 'wbiztool_messaging_api_status'
wp transient delete 'wbiztool_messaging_cache'

# Clear Cron Jobs
wp cron event delete 'wbiztool_messaging_send_delayed_message'
wp cron event delete 'wbiztool_messaging_cleanup_logs'
wp cron event delete 'wbiztool_messaging_send_queued_messages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbiztool_messaging_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbiztool_messaging_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbiztool_messaging_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbiztool_messaging_preferences'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbiztool_messaging_last_test'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbiztool_messaging_last_test'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbiztool_messaging_last_test'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbiztool_messaging_last_test'"
