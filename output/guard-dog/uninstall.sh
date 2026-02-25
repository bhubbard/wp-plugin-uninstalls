#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'guard_dog_captcha_use_enterprise'
wp option delete 'guard_dog_debug_enabled'
wp option delete 'guard_dog_debug_level'
wp option delete 'guard_dog_sessions_enabled'
wp option delete 'guard_dog_sessions_max_per_user'
wp option delete 'guard_dog_sessions_timeout_minutes'
wp option delete 'guard_dog_sessions_detect_ip_shift'
wp option delete 'guard_dog_sessions_detect_geo_anomaly'
wp option delete 'guard_dog_sessions_notify_user'
wp option delete 'guard_dog_ip_reputation_login_enabled'
wp option delete 'guard_dog_ip_reputation_login_threshold'
wp option delete 'guard_dog_ip_reputation_session_enabled'
wp option delete 'guard_dog_ip_reputation_session_threshold'
wp option delete 'guard_dog_ipinfo_token'
wp option delete 'guard_dog_ip_reputation_disable_geo'
wp option delete 'guard_dog_ip_detection_method'
wp option delete 'guard_dog_trusted_proxy_ips'
wp option delete 'guard_dog_site_wide_blocking'
wp option delete 'guard_dog_ip_blacklist'
wp option delete 'guard_dog_ip_whitelist'
wp option delete 'guard_dog_user_blacklist'
wp option delete 'guard_dog_user_whitelist'
wp option delete 'guard_dog_country_blacklist'
wp option delete 'guard_dog_log_retention_days'
wp option delete 'guard_dog_max_log_entries'
wp option delete 'guard_dog_log_ip_addresses'
wp option delete 'guard_dog_log_user_agents'
wp option delete 'guard_dog_activity_log_settings'
wp option delete 'guard_dog_captcha_provider'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_site_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret_key'"
wp option delete 'guard_dog_recaptcha_v2_theme'
wp option delete 'guard_dog_recaptcha_v2_size'
wp option delete 'guard_dog_recaptcha_v3_threshold'
wp option delete 'guard_dog_login_slug'
wp option delete 'guard_dog_lla_enabled'
wp option delete 'guard_dog_lla_max_retries'
wp option delete 'guard_dog_lla_lockout_duration'
wp option delete 'guard_dog_two_factor_enabled'
wp option delete 'guard_dog_two_factor_enforced'
wp option delete 'guard_dog_two_factor_grace_period'
wp option delete 'guard_dog_two_factor_enforcement_date'
wp option delete 'guard_dog_email_2fa_enabled'
wp option delete 'guard_dog_passkeys_enabled'
wp option delete 'guard_dog_passkeys_bypass_2fa'
wp option delete 'guard_dog_passkeys_require_user_verification'
wp option delete 'guard_dog_email_provider_settings'
wp option delete 'guard_dog_email_provider'
wp option delete 'guard_dog_enum_enabled'
wp option delete 'guard_dog_enum_bypass_roles'
wp option delete 'guard_dog_enum_auto_block_enabled'
wp option delete 'guard_dog_enum_auto_block_threshold'
wp option delete 'guard_dog_enum_auto_block_window'
wp option delete 'guard_dog_enum_auto_block_duration'
wp option delete 'guard_dog_enum_alert_immediate_enabled'
wp option delete 'guard_dog_enum_alert_immediate_threshold'
wp option delete 'guard_dog_enum_alert_immediate_window'
wp option delete 'guard_dog_enum_alert_immediate_email'
wp option delete 'guard_dog_enum_alert_immediate_cooldown'
wp option delete 'guard_dog_enum_alert_digest_enabled'
wp option delete 'guard_dog_enum_alert_digest_frequency'
wp option delete 'guard_dog_enum_alert_digest_threshold'
wp option delete 'guard_dog_enum_alert_digest_email'
wp option delete 'guard_dog_social_login_enabled'
wp option delete 'guard_dog_social_google_enabled'
wp option delete 'guard_dog_social_google_client_id'
wp option delete 'guard_dog_social_google_client_secret'
wp option delete 'guard_dog_social_microsoft_enabled'
wp option delete 'guard_dog_social_microsoft_client_id'
wp option delete 'guard_dog_social_microsoft_client_secret'
wp option delete 'guard_dog_social_apple_enabled'
wp option delete 'guard_dog_social_apple_client_id'
wp option delete 'guard_dog_social_apple_team_id'
wp option delete 'guard_dog_social_apple_key_id'
wp option delete 'guard_dog_social_apple_key_file'
wp option delete 'guard_dog_social_auto_link_email'
wp option delete 'guard_dog_social_auto_create_users'
wp option delete 'guard_dog_social_new_user_role'
wp option delete 'guard_dog_social_bypass_2fa'
wp option delete 'guard_dog_enum_rest_api_block'
wp option delete 'guard_dog_enum_author_archives_block'
wp option delete 'guard_dog_enum_login_errors_block'
wp option delete 'guard_dog_enum_password_reset_block'
wp option delete 'guard_dog_enum_xmlrpc_block'
wp option delete 'guard_dog_enum_oembed_block'
wp option delete 'guard_dog_enum_registration_block'
wp option delete 'guard_dog_email_provider_global_override'
wp option delete 'guard_dog_login_attempts_enabled'
wp option delete 'guard_dog_temp_access_default_role'
wp option delete 'guard_dog_temp_access_default_expiry'
wp option delete 'guard_dog_temp_access_max_logins'
wp option delete 'guard_dog_password_min_length'
wp option delete 'guard_dog_password_require_uppercase'
wp option delete 'guard_dog_password_require_lowercase'
wp option delete 'guard_dog_password_require_numbers'
wp option delete 'guard_dog_password_require_special'
wp option delete 'guard_dog_password_block_common'
wp option delete 'guard_dog_password_block_username'
wp option delete 'guard_dog_password_block_email'
wp option delete 'guard_dog_password_reuse_limit'
wp option delete 'guard_dog_password_policy_exempt_roles'
wp option delete 'guard_dog_password_expiration_enabled'
wp option delete 'guard_dog_password_expiration_days'
wp option delete 'guard_dog_password_expiration_warning_days'
wp option delete 'guard_dog_password_expiration_email_enabled'
wp option delete 'guard_dog_password_expiration_exempt_roles'
wp option delete 'guard_dog_logged_event_types'
wp option delete 'guard_dog_temp_access_tokens'
wp option delete 'guard_dog_generic_login_error'
wp option delete 'guard_dog_access_mode'
wp option delete 'guard_dog_access_denied_message'
wp option delete 'guard_dog_wp_version_before_update'
wp option delete 'guard_dog_captcha_error_message'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_guard_dog_last_email_test_%' OR option_name LIKE '_site_transient_guard_dog_last_email_test_%'"
wp transient delete 'guard_dog_health_report'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_guard_dog_password_reset_pending_%' OR option_name LIKE '_site_transient_guard_dog_password_reset_pending_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_guard_dog_password_reset_success_%' OR option_name LIKE '_site_transient_guard_dog_password_reset_success_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__guard_dog_show_recovery_codes_%' OR option_name LIKE '_site_transient__guard_dog_show_recovery_codes_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_guard_dog_2fa_grace_warning_%' OR option_name LIKE '_site_transient_guard_dog_2fa_grace_warning_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_guard_dog_2fa_config_error_%' OR option_name LIKE '_site_transient_guard_dog_2fa_config_error_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_guard_dog_show_recovery_codes_%' OR option_name LIKE '_site_transient_guard_dog_show_recovery_codes_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_guard_dog_login_state_%' OR option_name LIKE '_site_transient_guard_dog_login_state_%'"

# Clear Cron Jobs
wp cron event delete 'guard_dog_cleanup_expired_blacklist'
wp cron event delete 'guard_dog_cleanup_sessions'
wp cron event delete 'guard_dog_enum_digest_email'
wp cron event delete 'guard_dog_cleanup_activity_logs'
wp cron event delete 'guard_dog_check_password_expirations'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guard_dog_social_avatar_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guard_dog_social_avatar_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guard_dog_social_avatar_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guard_dog_social_avatar_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_guard_dog_2fa_temp_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_guard_dog_2fa_temp_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_guard_dog_2fa_temp_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_guard_dog_2fa_temp_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_guard_dog_2fa_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_guard_dog_2fa_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_guard_dog_2fa_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_guard_dog_2fa_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_guard_dog_2fa_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_guard_dog_2fa_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_guard_dog_2fa_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_guard_dog_2fa_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_guard_dog_2fa_backup_codes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_guard_dog_2fa_backup_codes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_guard_dog_2fa_backup_codes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_guard_dog_2fa_backup_codes'"
