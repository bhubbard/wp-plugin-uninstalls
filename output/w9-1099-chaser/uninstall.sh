#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'w91099ch_w9_page_id'
wp option delete 'w91099ch_manual_plugins'
wp option delete 'w91099ch_hidden_plugins'
wp option delete 'w91099ch_profile_last_sync'
wp option delete 'w91099ch_plugin_last_sync'
wp option delete 'w91099ch_affiliates_last_sync'
wp option delete 'w91099ch_affiliates_count'
wp option delete 'w91099ch_user_email'
wp option delete 'w91099ch_admin_consent'
wp option delete 'w91099ch_credentials_valid'
wp option delete 'w91099ch_site_url'
wp option delete 'w91099ch_connected_at'
wp option delete 'w91099ch_last_checked'
wp option delete 'w91099ch_team_last_sync'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_currency'
wp option delete 'w91099ch_debug_logging'
wp option delete 'w91099ch_excluded_affiliate_ids'
wp option delete 'w91099ch_active_plugins_snapshot'
wp option delete 'w91099ch_plugins_last_sync'
wp option delete 'w91099ch_credentials'
wp option delete 'w91099ch_connected'
wp option delete 'w91099ch_client_id'
wp option delete 'w91099ch_client_secret'
wp option delete 'w91099ch_access_token'
wp option delete 'w91099ch_refresh_token'
wp option delete 'w91099ch_db_version'
wp option delete 'w91099ch_encryption_key'
wp option delete 'w91099ch_workspace'
wp option delete 'w91099ch_excluded_forms'

# Delete Transients
wp transient delete 'w91099ch_activated'
wp transient delete 'w91099ch_connection_error'
wp transient delete 'w91099ch_connection_success'
wp transient delete 'w91099ch_handshake_active'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_w91099ch_pending_credentials_%' OR option_name LIKE '_site_transient_w91099ch_pending_credentials_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_w91099ch_private_key_%' OR option_name LIKE '_site_transient_w91099ch_private_key_%'"
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'w91099ch_sync_affiliates_cron'
wp cron event delete 'w91099ch_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_store_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_store_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_store_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_store_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_store_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_store_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_store_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_store_name'"
