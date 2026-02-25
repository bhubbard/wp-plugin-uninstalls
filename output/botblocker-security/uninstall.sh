#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbcs_activation_prevent_redirect'
wp option delete 'bbcs_setup_wizard_completed'
wp option delete 'bbcs_initial_version'
wp option delete 'bbcs_wizard_preset'
wp option delete 'bbcs_wizard_ux_mode'
wp option delete 'bbcs_wizard_captcha_mode'
wp option delete 'bbcs_wizard_init_mode'
wp option delete 'bbcs_wizard_cache_type'
wp option delete 'bbcs_setup_wizard_completed_at'
wp option delete 'botblocker_tools_core_settings'
wp option delete 'botblocker_tools_login_settings'
wp option delete 'botblocker_active_addons'
wp option delete 'bbcs_2fa_rules_version'

# Delete Transients
wp transient delete 'bbcs_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bbcs_notice_cloud_api_%' OR option_name LIKE '_site_transient_bbcs_notice_cloud_api_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bbcs_notice_integrations_%' OR option_name LIKE '_site_transient_bbcs_notice_integrations_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bbcs_notice_settings_%' OR option_name LIKE '_site_transient_bbcs_notice_settings_%'"
wp transient delete 'bbcs_just_activated'
wp transient delete 'bbcs_site_health_list'
wp transient delete 'bbcs_site_health'
wp transient delete 'bbcs_cloud_api_expired_alert'
wp transient delete 'bbcs_cloud_api_hits_exhausted_alert'
wp transient delete 'bbcs_cloud_api_status_transient'
wp transient delete 'bbcs_cloud_connection_failed_alert'
wp transient delete 'bbcs_missing_files_alert'
wp transient delete 'bbcs_remaining_days'
wp transient delete 'bbcs_remaining_hits'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bbcs_2fa_attempts_%' OR option_name LIKE '_site_transient_bbcs_2fa_attempts_%'"

# Clear Cron Jobs
wp cron event delete 'bbcs_daily_task'
wp cron event delete 'bbcs_hourly_task'
wp cron event delete 'bbcs_weekly_task'
wp cron event delete 'bbcs_five_days_task'
wp cron event delete 'bbcs_two_hours_task'
wp cron event delete 'bbcs_one_time_task'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_2fa_secret_temp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_2fa_secret_temp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_2fa_secret_temp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_2fa_secret_temp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_2fa_backup_codes_temp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_2fa_backup_codes_temp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_2fa_backup_codes_temp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_2fa_backup_codes_temp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_2fa_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_2fa_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_2fa_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_2fa_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_2fa_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_2fa_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_2fa_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_2fa_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_2fa_setup_pending'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_2fa_setup_pending'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_2fa_setup_pending'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_2fa_setup_pending'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_2fa_pending'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_2fa_pending'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_2fa_pending'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_2fa_pending'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_2fa_backup_codes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_2fa_backup_codes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_2fa_backup_codes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_2fa_backup_codes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_2fa_redirect_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_2fa_redirect_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_2fa_redirect_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_2fa_redirect_to'"
