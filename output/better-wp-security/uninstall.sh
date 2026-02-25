#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'itsec-storage'
wp option delete 'itsec_dismissed_notices'
wp option delete 'itsec_remind_me_notices'
wp option delete 'itsec_temp_whitelist_ip'
wp option delete 'itsec_backup'
wp option delete 'itsec_ban_users'
wp option delete 'itsec_brute_force'
wp option delete 'itsec-enable-encryption-failed'
wp option delete 'itsec_file_change_latest'
wp option delete 'itsec_file_change'
wp option delete 'itsec_local_file_list'
wp option delete 'itsec_local_file_list_0'
wp option delete 'itsec_local_file_list_1'
wp option delete 'itsec_local_file_list_2'
wp option delete 'itsec_local_file_list_3'
wp option delete 'itsec_local_file_list_4'
wp option delete 'itsec_local_file_list_5'
wp option delete 'itsec_local_file_list_6'
wp option delete 'itsec_file_change_warning'
wp option delete 'itsec_file_list'
wp option delete 'itsec_file_change_scan_progress'
wp option delete 'itsec_global'
wp option delete 'itsec_message_queue'
wp option delete 'itsec_hide_backend_new_slug'
wp option delete 'itsec_hide_backend'
wp option delete 'itsec_malware_scheduling'
wp option delete 'itsec_malware_scheduling_report_queue'
wp option delete 'itsec_malware_scheduling_last_scan'
wp option delete 'itsec_ipcheck'
wp option delete 'itsec_salts'
wp option delete 'itsec_ssl'
wp option delete 'itsec_strong_passwords'
wp option delete 'itsec_active_modules'
wp option delete 'ms_files_rewriting'
wp option delete 'itsec_tweaks'
wp option delete 'itsec_two_factor'
wp option delete 'itsec_data'
wp option delete 'bit51_bwps'
wp option delete 'itsec_pro_just_activated'
wp option delete 'itsec_free_just_activated'
wp option delete 'itsec-enable-grade-report'
wp option delete 'bwps_intrusion_warning'
wp option delete 'bit51_bwps_data'
wp option delete 'bwps_file_log'
wp option delete 'bwps_awaymode'
wp option delete 'bwps_filecheck'
wp option delete 'BWPS_Login_Slug'
wp option delete 'BWPS_options'
wp option delete 'BWPS_versions'
wp option delete 'itsec_api_nag'
wp option delete 'itsec_initials'
wp option delete 'itsec_flush_old_rewrites'
wp option delete 'itsec_manual_update'
wp option delete 'itsec_rewrites_changed'
wp option delete 'itsec_config_changed'
wp option delete 'itsec_had_other_version'
wp option delete 'itsec_no_file_lock_release'
wp option delete 'itsec_clear_login'
wp option delete 'itsec_jquery_version'
wp option delete 'stellarwp_telemetry'
wp option delete 'stellarwp_telemetry_last_send'

# Delete Transients
wp transient delete 'itsec_wp_upload_dir'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'doing_cron'
wp transient delete 'ithemes-security-news'
wp transient delete 'ITSEC_SHOW_HIDE_BACKEND_TOOLTIP'
wp transient delete 'itsec_notification_running'
wp transient delete 'bit51_bwps_backup'
wp transient delete 'bwps_away'
wp transient delete 'ITSEC_SHOW_WRITE_FILES_TOOLTIP'
wp transient delete 'itsec_upload_dir'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'itsec_cron_test'
wp cron event delete 'itsec_execute_backup_cron'
wp cron event delete 'itsec_file_check'
wp cron event delete 'itsec_execute_file_check_cron'
wp cron event delete 'itsec_malware_scheduled_scan'
wp cron event delete 'itsec-send-scheduled-notifications'
wp cron event delete 'itsec_digest_email'
wp cron event delete 'itsec_purge_lockouts'
wp cron event delete 'itsec_clear_locks'
wp cron event delete 'bwps_backup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_solid_user_action_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_solid_user_action_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_solid_user_action_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_solid_user_action_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_itsec_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_itsec_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_itsec_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_itsec_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itsec_password_change_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itsec_password_change_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itsec_password_change_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itsec_password_change_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itsec_last_password_change'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itsec_last_password_change'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itsec_last_password_change'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itsec_last_password_change'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itsec-password-updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itsec-password-updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itsec-password-updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itsec-password-updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itsec_user_activity_last_seen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itsec_user_activity_last_seen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itsec_user_activity_last_seen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itsec_user_activity_last_seen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itsec_user_activity_last_seen_notification_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itsec_user_activity_last_seen_notification_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itsec_user_activity_last_seen_notification_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itsec_user_activity_last_seen_notification_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_itsec_has_logged_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_itsec_has_logged_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_itsec_has_logged_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_itsec_has_logged_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itsec_enable_ssl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itsec_enable_ssl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itsec_enable_ssl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itsec_enable_ssl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bwps_enable_ssl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bwps_enable_ssl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bwps_enable_ssl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bwps_enable_ssl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_solid_password_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_solid_password_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_solid_password_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_solid_password_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_solid_2fa_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_solid_2fa_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_solid_2fa_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_solid_2fa_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itsec_two_factor_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itsec_two_factor_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itsec_two_factor_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itsec_two_factor_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itsec_two_factor_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itsec_two_factor_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itsec_two_factor_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itsec_two_factor_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itsec_two_factor_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itsec_two_factor_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itsec_two_factor_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itsec_two_factor_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itsec_two_factor_use_app'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itsec_two_factor_use_app'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itsec_two_factor_use_app'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itsec_two_factor_use_app'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itsec_two_factor_app_pass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itsec_two_factor_app_pass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itsec_two_factor_app_pass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itsec_two_factor_app_pass'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itsec_two_factor_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itsec_two_factor_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itsec_two_factor_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itsec_two_factor_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itsec_two_factor_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itsec_two_factor_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itsec_two_factor_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itsec_two_factor_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itsec_two_factor_override_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itsec_two_factor_override_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itsec_two_factor_override_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itsec_two_factor_override_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_two_factor_enabled_providers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_two_factor_enabled_providers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_two_factor_enabled_providers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_two_factor_enabled_providers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_two_factor_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_two_factor_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_two_factor_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_two_factor_provider'"
