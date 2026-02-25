#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'authica_version'
wp option delete 'authica_license_plan'
wp option delete 'authica_whitelabel'
wp option delete 'authica_license_customer'
wp option delete 'authica_preview_page_id'
wp option delete 'authica_redirect_respect_param'
wp option delete 'authica_redirect_fallback'
wp option delete 'authica_redirect_roles'
wp option delete 'authica_redirect_logout'
wp option delete 'authica_is_pro'
wp option delete 'authica_demo_cleanup_done'
wp option delete 'authica_brute_deny_meta'
wp option delete 'authica_stealth_404_meta'
wp option delete 'authica_ip_deny_list'
wp option delete 'authica_brute_last_cleanup'
wp option delete 'authica_ip_restriction_enabled'
wp option delete 'authica_ip_apply_login'
wp option delete 'authica_turnstile_secret_key'
wp option delete 'authica_email_verification_subject'
wp option delete 'authica_email_verification_message'
wp option delete 'authica_email_verification_enabled'
wp option delete 'authica_bot_protection_enabled'
wp option delete 'authica_ip_allow_list'
wp option delete 'authica_ip_allow_meta'
wp option delete 'authica_ip_allow_last_cleanup'
wp option delete 'authica_wp_login_block_mode'
wp option delete 'authica_redirect_rules'
wp option delete 'authica_public_login_slug'
wp option delete 'authica_login_slug'
wp option delete 'authica_housekeeping_last'
wp option delete 'authica_brute_retention_days'
wp option delete 'authica_stealth_404_enabled'
wp option delete 'authica_stealth_404_duration'
wp option delete 'authica_brute_total_blocked'
wp option delete 'authica_turnstile_enabled'
wp option delete 'authica_turnstile_sitekey'
wp option delete 'authica_turnstile_secret'
wp option delete 'authica_hide_login_enabled'
wp option delete 'authica_block_page_id'
wp option delete 'authica_ip_default_policy'
wp option delete 'authica_brute_enabled'
wp option delete 'authica_brute_threshold'
wp option delete 'authica_brute_window'
wp option delete 'authica_stealth_404_threshold'
wp option delete 'authica_logging_enabled'
wp option delete 'authica_alerts_enabled'
wp option delete 'authica_logging_retention_days'
wp option delete 'authica_logging_max_rows'
wp option delete 'authica_emergency_lockout'
wp option delete 'authica_email_verification_expiry'
wp option delete 'authica_email_verification_resend_cooldown'
wp option delete 'authica_turnstile_analytics_enabled'
wp option delete 'authica_2fa_enforcement'
wp option delete 'authica_2fa_scope'
wp option delete 'authica_social_login_enabled'
wp option delete 'authica_social_login_providers'
wp option delete 'authica_turnstile_analytics_api_token'
wp option delete 'authica_turnstile_analytics_account_id'
wp option delete 'authica_turnstile_analytics_range_days'
wp option delete 'authica_ip_apply_admin'
wp option delete 'authica_ip_apply_xmlrpc'
wp option delete 'authica_ip_apply_rest'
wp option delete 'authica_ip_generic_message'
wp option delete 'authica_turnstile_mode'
wp option delete 'authica_2fa_remember_enabled'
wp option delete 'authica_2fa_remember_days'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_authica_stealth_404_%' OR option_name LIKE '_site_transient_authica_stealth_404_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_authica_stealth_hits_%' OR option_name LIKE '_site_transient_authica_stealth_hits_%'"
wp transient delete 'authica_turnstile_fail_open_active'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'authica_ts_analytics_cron'
wp cron event delete 'authica_brute_cleanup_event'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'authica_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'authica_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'authica_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'authica_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'authica_verification_last_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'authica_verification_last_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'authica_verification_last_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'authica_verification_last_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'authica_email_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'authica_email_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'authica_email_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'authica_email_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'authica_email_verification_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'authica_email_verification_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'authica_email_verification_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'authica_email_verification_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'authica_email_verification_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'authica_email_verification_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'authica_email_verification_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'authica_email_verification_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'authica_verification_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'authica_verification_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'authica_verification_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'authica_verification_sent'"
