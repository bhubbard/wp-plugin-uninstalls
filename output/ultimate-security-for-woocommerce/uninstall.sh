#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_db_version'
wp option delete 'ultimate_security_for_woocommerce_do_activation_redirect'
wp option delete 'ultimate_security_for_woocommerce_options'
wp option delete 'ultimate_security_for_woocommerce_recent_search'
wp option delete 'ultimate_security_for_woocommerce_rewrite_wp_config_keys_last_date'
wp option delete 'usfw-enable-encryption-database-keys'
wp option delete 'auto_update_plugins'
wp option delete 'auto_update_themes'
wp option delete 'ultimate_security_for_woocommerce_installed'
wp option delete 'usfw_disable_recaptcha_script'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'usfw_2fa_user_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_usfw_%' OR option_name LIKE '_site_transient_usfw_%'"
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'

# Clear Cron Jobs
wp cron event delete 'usfw_change_salt_keys'
wp cron event delete 'daily_9am_task'
wp cron event delete 'wp_update_plugins'
wp cron event delete 'wp_update_themes'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usfw_user_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usfw_user_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usfw_user_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usfw_user_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usfw_login_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usfw_login_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usfw_login_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usfw_login_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usfw_user_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usfw_user_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usfw_user_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usfw_user_expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usfw_user_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usfw_user_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usfw_user_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usfw_user_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_password_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_password_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_password_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_password_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usfw_2fa_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usfw_2fa_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usfw_2fa_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usfw_2fa_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usfw_enable_email_authentication'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usfw_enable_email_authentication'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usfw_enable_email_authentication'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usfw_enable_email_authentication'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usfw_user_last_logged_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usfw_user_last_logged_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usfw_user_last_logged_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usfw_user_last_logged_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usfw_user_logged_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usfw_user_logged_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usfw_user_logged_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usfw_user_logged_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usfw-2fa-provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usfw-2fa-provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usfw-2fa-provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usfw-2fa-provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usfw_2fa_pending'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usfw_2fa_pending'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usfw_2fa_pending'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usfw_2fa_pending'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usfw_2fa_hotp_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usfw_2fa_hotp_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usfw_2fa_hotp_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usfw_2fa_hotp_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usfw_2fa_hotp_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usfw_2fa_hotp_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usfw_2fa_hotp_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usfw_2fa_hotp_counter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usfw_2fa_totp_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usfw_2fa_totp_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usfw_2fa_totp_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usfw_2fa_totp_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_logout_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_logout_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_logout_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_logout_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allow_other_users_passwords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allow_other_users_passwords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allow_other_users_passwords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allow_other_users_passwords'"
