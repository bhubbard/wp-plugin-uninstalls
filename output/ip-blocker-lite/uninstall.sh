#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'faqnurul_ipcbl_activity_logs'
wp option delete 'faqnurul_ipcbl_ip_whitelist'
wp option delete 'faqnurul_ipcbl_cloudflare_secret_key'
wp option delete 'faqnurul_ipcbl_cloudflare_enabled'
wp option delete 'faqnurul_ipcbl_turnstile_login'
wp option delete 'faqnurul_ipcbl_cloudflare_site_key'
wp option delete 'faqnurul_ipcbl_captcha_enabled'
wp option delete 'faqnurul_ipcbl_turnstile_register'
wp option delete 'faqnurul_ipcbl_turnstile_comments'
wp option delete 'faqnurul_ipcbl_turnstile_lost_password'
wp option delete 'faqnurul_ipcbl_turnstile_woocommerce'
wp option delete 'faqnurul_ipcbl_captcha_secret_key'
wp option delete 'faqnurul_ipcbl_captcha_version'
wp option delete 'faqnurul_ipcbl_captcha_login'
wp option delete 'faqnurul_ipcbl_captcha_site_key'
wp option delete 'faqnurul_ipcbl_captcha_register'
wp option delete 'faqnurul_ipcbl_captcha_comments'
wp option delete 'faqnurul_ipcbl_captcha_lost_password'
wp option delete 'faqnurul_ipcbl_captcha_woocommerce'
wp option delete 'faqnurul_ipcbl_admin_lockout_enabled'
wp option delete 'faqnurul_ipcbl_lockout_max_attempts'
wp option delete 'faqnurul_ipcbl_lockout_duration'
wp option delete 'faqnurul_ipcbl_2fa_enabled'
wp option delete 'faqnurul_ipcbl_ip_blocked_list'
wp option delete 'faqnurul_ipcbl_country_blocked_list'
wp option delete 'faqnurul_ipcbl_custom_error_text'
wp option delete 'faqnurul_ipcbl_2fa_method'
wp option delete 'faqnurul_ipcbl_2fa_email'
wp option delete 'faqnurul_ipcbl_show_optin_notice'
wp option delete 'faqnurul_ipcbl_blocked_page_template'
wp option delete 'faqnurul_ipcbl_data_collection_optin'
wp option delete 'faqnurul_ipcbl_last_decline_time'
wp option delete 'faqnurul_ipcbl_last_active_track'
wp option delete 'faqnurul_ipcbl_installation_id'
wp option delete 'ipcbl_recaptcha_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_faqnurul_2fa_email_code_%' OR option_name LIKE '_site_transient_faqnurul_2fa_email_code_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_faqnurul_2fa_%' OR option_name LIKE '_site_transient_faqnurul_2fa_%'"
wp transient delete 'faqnurul_ipcbl_recovery_hash'
wp transient delete 'faqnurul_ipcbl_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faqnurul_ipcbl_2fa_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faqnurul_ipcbl_2fa_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faqnurul_ipcbl_2fa_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faqnurul_ipcbl_2fa_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_verification_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faqnurul_ipcbl_2fa_verification_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_verification_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_verification_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_recovery_codes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faqnurul_ipcbl_2fa_recovery_codes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_recovery_codes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_recovery_codes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faqnurul_ipcbl_2fa_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faqnurul_ipcbl_2fa_email'"
