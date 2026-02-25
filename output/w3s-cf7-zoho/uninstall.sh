#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete '_zoho_config'
wp option delete '_zoho_auth_infos'
wp option delete '_zcrm_oauthtokens'
wp option delete '_zoho_auth_token_info'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w3s-cf7-zoho_cf7_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w3s-cf7-zoho_cf7_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w3s-cf7-zoho_cf7_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w3s-cf7-zoho_cf7_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w3s-cf7-zoho_zoho_module'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w3s-cf7-zoho_zoho_module'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w3s-cf7-zoho_zoho_module'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w3s-cf7-zoho_zoho_module'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'integration_enable_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'integration_enable_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'integration_enable_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'integration_enable_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w3s_cf7_fields_repeat_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w3s_cf7_fields_repeat_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w3s_cf7_fields_repeat_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w3s_cf7_fields_repeat_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w3s-cf7-zoho_is_upsert'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w3s-cf7-zoho_is_upsert'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w3s-cf7-zoho_is_upsert'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w3s-cf7-zoho_is_upsert'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w3s-cf7-zoho_enable_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w3s-cf7-zoho_enable_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w3s-cf7-zoho_enable_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w3s-cf7-zoho_enable_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
