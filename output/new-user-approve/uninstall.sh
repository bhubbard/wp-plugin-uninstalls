#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'nua_free_invitation'
wp option delete 'nua_app_tokens'
wp option delete 'nua_app_auth_token'
wp option delete 'nua_api_key'
wp option delete 'new_user_approve_options'
wp option delete 'new_user_approve_user_statuses_count'
wp option delete 'nua_zapier_db_version'
wp option delete 'nua_zapier_option_status'
wp option delete 'nua_users_count'
wp option delete 'nua_notification_email_message_as_html'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'nua_plugin_status_cache'
wp transient delete 'inv_code_exists'
wp transient delete 'new_user_approve_user_statuses'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pw_new_user_approve_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pw_new_user_approve_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pw_new_user_approve_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pw_new_user_approve_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pw_user_approve_password_reset'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pw_user_approve_password_reset'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pw_user_approve_password_reset'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pw_user_approve_password_reset'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nua_request_new_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nua_request_new_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nua_request_new_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nua_request_new_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pw_user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pw_user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pw_user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pw_user_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pw_user_status_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pw_user_status_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pw_user_status_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pw_user_status_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mepr_nua_approval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mepr_nua_approval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mepr_nua_approval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mepr_nua_approval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nua_invcode_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nua_invcode_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nua_invcode_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nua_invcode_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nua_wl_domain_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nua_wl_domain_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nua_wl_domain_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nua_wl_domain_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nua_user_role_based_approved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nua_user_role_based_approved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nua_user_role_based_approved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nua_user_role_based_approved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pw_new_user_approve_has_signed_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pw_new_user_approve_has_signed_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pw_new_user_approve_has_signed_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pw_new_user_approve_has_signed_in'"
