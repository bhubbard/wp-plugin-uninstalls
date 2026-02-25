#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sitelock_2fa_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'sitelock_2fa_grace_period'
wp option delete 'wpslp_options'
wp option delete 'sitelock_account_sites'
wp option delete 'sitelock_account_scaninfo'
wp option delete 'sitelock_malware_get_scan'
wp option delete 'sitelock_word_quick'
wp option delete 'sitelock_license_key'
wp option delete 'sitelock_login_logger_roles'
wp option delete 'sitelock_login_logger_retention'
wp option delete 'sitelock_password_strength_enabled'
wp option delete 'sitelock_password_strength_user_roles'
wp option delete 'sitelock_force_logout_enabled'
wp option delete 'sitelock_force_logout_duration'
wp option delete 'sitelock_force_logout_excluded_roles'
wp option delete 'sitelock_badge_location'
wp option delete 'sitelock_badge_color'
wp option delete 'sitelock_badge_size'
wp option delete 'sitelock_badge_type'
wp option delete 'sitelock_site_id'
wp option delete 'sitelock_badge_link'
wp option delete 'sitelock_badge_img'
wp option delete 'sitelock_security_settings'
wp option delete 'sitelock_login_lockout_enabled'
wp option delete 'sitelock_login_lockout_max_attempts'
wp option delete 'sitelock_login_lockout_duration'
wp option delete 'sitelock_login_lockout_reset_time'
wp option delete 'sitelock_blocked_directories'
wp option delete 'sitelock_meta_tag'
wp option delete 'sitelock_refresh_api'
wp option delete 'sitelock_secret'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sitelock_2fa_setup_notice_%' OR option_name LIKE '_site_transient_sitelock_2fa_setup_notice_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sitelock_2fa_verified_%' OR option_name LIKE '_site_transient_sitelock_2fa_verified_%'"
wp transient delete 'sitelock_auth_error'
wp transient delete 'sitelock_permission_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sitelock_pending_2fa_%' OR option_name LIKE '_site_transient_sitelock_pending_2fa_%'"
wp transient delete 'sitelock_auth_success'
wp transient delete 'slwp-plugin-activation-notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sitelock_admin_notice_%' OR option_name LIKE '_site_transient_sitelock_admin_notice_%'"

# Clear Cron Jobs
wp cron event delete 'sitelock_check_admins_cron'
wp cron event delete 'sitelock_login_log_cleanup_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sitelock_2fa_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sitelock_2fa_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sitelock_2fa_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sitelock_2fa_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sitelock_2fa_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sitelock_2fa_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sitelock_2fa_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sitelock_2fa_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sitelock_2fa_backup_codes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sitelock_2fa_backup_codes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sitelock_2fa_backup_codes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sitelock_2fa_backup_codes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sitelock_2fa_failed_attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sitelock_2fa_failed_attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sitelock_2fa_failed_attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sitelock_2fa_failed_attempts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sitelock_2fa_recovery_codes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sitelock_2fa_recovery_codes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sitelock_2fa_recovery_codes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sitelock_2fa_recovery_codes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_protect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_protect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_protect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_protect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sitelock_dismissed_admin_warning'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sitelock_dismissed_admin_warning'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sitelock_dismissed_admin_warning'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sitelock_dismissed_admin_warning'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sitelock_force_logout_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sitelock_force_logout_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sitelock_force_logout_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sitelock_force_logout_time'"
