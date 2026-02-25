#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_modular_connection_client_id'
wp option delete '_modular_connection_client_secret'
wp option delete '_modular_connection_access_token'
wp option delete '_modular_connection_refresh_token'
wp option delete '_modular_connection_expires_in'
wp option delete '_modular_connection_connected_at'
wp option delete '_modular_connection_used_at'
wp option delete 'vhp_varnish_ip'
wp option delete '_modular_linking_registered'
wp option delete '_modular_connector_database_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reserved_at'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_attempts'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_available_at'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_created_at'"

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'doing_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%enforcement_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%enforcement_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%enforcement_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%enforcement_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%grace_period_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%grace_period_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%grace_period_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%grace_period_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aiowps_last_login_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aiowps_last_login_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aiowps_last_login_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aiowps_last_login_time'"
