#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wallet_up_lc_options'
wp option delete 'wallet_up_lc_last_sync'
wp option delete 'wallet_up_lc_sync_queue'
wp option delete 'wallet_up_lc_version'
wp option delete 'wallet_up_lc_security_options'
wp option delete 'wallet_up_lc_security_logs'
wp option delete 'wallet_up_lc_security_digest'
wp option delete 'wallet_up_lc_security_digest_enabled'
wp option delete 'wallet_up_lc_blocked_ips'
wp option delete 'wallet_up_lc_settings'
wp option delete 'wallet_up_lc_logo_settings'
wp option delete 'wallet_up_options'
wp option delete 'wallet_up_lc_2fa_enforce_all'
wp option delete 'wallet_up_lc_2fa_enforced_roles'
wp option delete 'wallet_up_lc_2fa_encryption_key'
wp option delete 'wallet_up_lc_2fa_grace_period_hours'
wp option delete 'wallet_up_lc_2fa_max_grace_logins'
wp option delete 'wallet_up_lc_2fa_setup_max_attempts'
wp option delete 'wallet_up_lc_2fa_setup_lockout_time'
wp option delete 'wallet_up_lc_2fa_max_attempts'
wp option delete 'wallet_up_lc_2fa_lockout_time'
wp option delete 'wallet_up_lc_2fa_trust_duration'
wp option delete 'wallet_up_lc_email_batch_size'
wp option delete 'wallet_up_lc_email_interval'
wp option delete 'wallet_up_lc_email_rate'
wp option delete 'wallet_up_lc_2fa_grace_period'
wp option delete 'wallet_up_lc_db_version'
wp option delete 'wallet_up_lc_files_installed'
wp option delete 'wallet_up_lc_2fa_email_enabled'
wp option delete 'wallet_up_lc_2fa_reminder_schedule'
wp option delete 'wallet_up_lc_2fa_email_batch_size'
wp option delete 'wallet_up_lc_2fa_email_rate'
wp option delete 'wallet_up_lc_network_settings'
wp option delete 'wallet_up_lc_network_security'
wp option delete 'wallet_up_lc_security_notifications'
wp option delete 'wallet_up_lc_security_email'
wp option delete 'wallet_up_lc_digest_frequency'
wp option delete 'wallet_up_lc_rate_limit_enabled'
wp option delete 'wallet_up_lc_rate_limit_attempts'
wp option delete 'wallet_up_lc_rate_limit_window'
wp option delete 'wallet_up_lc_ip_whitelist'
wp option delete 'wallet_up_lc_ip_blacklist'
wp option delete 'wallet_up_lc_files_last_sync'
wp option delete 'wallet_up_lc_sync_log'
wp option delete 'wallet_up_lc_security_log_level'
wp option delete 'wallet_up_lc_log_retention_days'
wp option delete 'wallet_up_lc_enable_siem_export'
wp option delete 'wallet_up_lc_siem_endpoint'
wp option delete 'wallet_up_lc_enable_webhook_alerts'
wp option delete 'wallet_up_lc_webhook_url'
wp option delete 'wallet_up_lc_session_timeout'

# Delete Transients
wp transient delete 'wallet_up_lc_config'
wp transient delete 'wallet_up_lc_custom_css'
wp transient delete 'wallet_up_lc_custom_js'
wp transient delete 'wallet_up_lc_security_config'
wp transient delete 'wallet_up_lc_security_reinit'
wp transient delete 'wallet_up_lc_compiled_css'
wp transient delete 'wallet_up_lc_regenerate_styles'
wp transient delete 'wallet_up_lc_upgraded'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wallet_up_lc_user_%' OR option_name LIKE '_site_transient_wallet_up_lc_user_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wallet_up_lc_rate_limit_%' OR option_name LIKE '_site_transient_wallet_up_lc_rate_limit_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wallet_up_lc_failed_login_%' OR option_name LIKE '_site_transient_wallet_up_lc_failed_login_%'"
wp transient delete 'wallet_up_lc_show_setup_wizard'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wallet_up_lc_redirect_%' OR option_name LIKE '_site_transient_wallet_up_lc_redirect_%'"
wp transient delete 'wallet_up_lc_wallet_up_lc_not_available'
wp transient delete 'wallet_up_lc_not_available'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rate_limit_%' OR option_name LIKE '_site_transient_rate_limit_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wallet_up_lc_alert_%' OR option_name LIKE '_site_transient_wallet_up_lc_alert_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wallet_up_lc_redirect_2fa_%' OR option_name LIKE '_site_transient_wallet_up_lc_redirect_2fa_%'"
wp transient delete 'wallet_up_lc_conflicts'
wp transient delete 'wallet_up_lc_files_auto_updated'

# Clear Cron Jobs
wp cron event delete 'wallet_up_lc_sync_check'
wp cron event delete 'wallet_up_lc_send_security_digest'
wp cron event delete 'wallet_up_lc_cleanup_expired_blocks'
wp cron event delete 'wallet_up_lc_cleanup_rate_limits'
wp cron event delete 'wallet_up_lc_cleanup_security_logs'
wp cron event delete 'wallet_up_lc_process_security_alerts'
wp cron event delete 'wallet_up_lc_process_email_queue'
wp cron event delete 'wallet_up_lc_check_2fa_enforcement'
wp cron event delete 'wallet_up_lc_retry_failed_emails'
wp cron event delete 'wallet_up_lc_cleanup_email_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_up_lc_pending_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_up_lc_pending_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_up_lc_pending_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_up_lc_pending_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_up_lc_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_up_lc_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_up_lc_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_up_lc_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_up_lc_2fa_temp_secret_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_up_lc_2fa_temp_secret_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_up_lc_2fa_temp_secret_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_up_lc_2fa_temp_secret_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_up_lc_2fa_setup_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_up_lc_2fa_setup_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_up_lc_2fa_setup_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_up_lc_2fa_setup_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_up_lc_2fa_grace_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_up_lc_2fa_grace_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_up_lc_2fa_grace_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_up_lc_2fa_grace_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_up_lc_2fa_grace_logins'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_up_lc_2fa_grace_logins'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_up_lc_2fa_grace_logins'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_up_lc_2fa_grace_logins'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_up_lc_2fa_enforcement_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_up_lc_2fa_enforcement_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_up_lc_2fa_enforcement_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_up_lc_2fa_enforcement_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_up_lc_2fa_temp_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_up_lc_2fa_temp_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_up_lc_2fa_temp_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_up_lc_2fa_temp_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_up_lc_2fa_temp_secret_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_up_lc_2fa_temp_secret_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_up_lc_2fa_temp_secret_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_up_lc_2fa_temp_secret_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_up_lc_2fa_temp_secret_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_up_lc_2fa_temp_secret_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_up_lc_2fa_temp_secret_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_up_lc_2fa_temp_secret_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_up_lc_2fa_enforced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_up_lc_2fa_enforced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_up_lc_2fa_enforced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_up_lc_2fa_enforced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_up_lc_last_2fa_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_up_lc_last_2fa_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_up_lc_last_2fa_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_up_lc_last_2fa_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_up_lc_2fa_success_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_up_lc_2fa_success_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_up_lc_2fa_success_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_up_lc_2fa_success_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_up_lc_2fa_deadline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_up_lc_2fa_deadline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_up_lc_2fa_deadline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_up_lc_2fa_deadline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_up_lc_last_login_reminder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_up_lc_last_login_reminder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_up_lc_last_login_reminder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_up_lc_last_login_reminder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_up_lc_dismissed_language_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_up_lc_dismissed_language_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_up_lc_dismissed_language_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_up_lc_dismissed_language_notices'"
