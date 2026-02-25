#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auth_settings_advanced_admin_notice'
wp option delete 'auth_settings'
wp option delete 'auth_settings_access_users_approved'
wp option delete 'auth_settings_access_users_pending'
wp option delete 'auth_settings_access_users_blocked'
wp option delete 'auth_settings_advanced_lockouts_time_last_failed'
wp option delete 'auth_settings_advanced_lockouts_failed_attempts'
wp option delete 'auth_settings_advanced_login_error'
wp option delete 'auth_settings_advanced_public_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'auth_settings_%'"
wp option delete 'auth_settings_recently_sent_emails'
wp option delete 'auth_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auth_blocked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auth_blocked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auth_blocked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auth_blocked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auth_settings_advanced_lockouts_time_last_failed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auth_settings_advanced_lockouts_time_last_failed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auth_settings_advanced_lockouts_time_last_failed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auth_settings_advanced_lockouts_time_last_failed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auth_settings_advanced_lockouts_failed_attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auth_settings_advanced_lockouts_failed_attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auth_settings_advanced_lockouts_failed_attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auth_settings_advanced_lockouts_failed_attempts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oidc_server_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oidc_server_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oidc_server_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oidc_server_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oidc_id_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oidc_id_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oidc_id_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oidc_id_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'authenticated_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'authenticated_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'authenticated_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'authenticated_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rule'"
