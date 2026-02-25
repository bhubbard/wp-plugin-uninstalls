#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_multiple_environments'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%plugin_owner'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%is_review_notification_must_shown'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%redirect_to'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_x509_certificate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%login_button_styles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%selected_provider'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_org_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_org_display_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_org_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_technical_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_technical_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_support_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_support_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_enable_signing'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_enable_encryption'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%is_7days_leave_review_notification_shown'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%latest_action'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%plugin_activation_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_entity_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%is_plugin_activated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%admin_environment'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%active_editable_environment'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_acs_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_slo_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_name_id_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_metadata_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_metadata_download_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_x509_cert_download_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sp_x509_private_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%current_environment'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%last_error'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%count_logins'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%buttons_as_widget'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%buttons_on_login_page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%buttons_as_short_code'"
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar'"
