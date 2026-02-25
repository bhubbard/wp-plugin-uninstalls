#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'user_verification_settings'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'user_verification_notices'
wp option delete 'user_verification_stats_count'
wp option delete 'user_verification_verification_page'
wp option delete 'user_verification_redirect_verified'
wp option delete 'user_verification_login_automatically'
wp option delete 'uv_exclude_user_roles'
wp option delete 'uv_wc_disable_auto_login'
wp option delete 'uv_wc_message_after_registration'
wp option delete 'uv_wc_redirect_after_payment'
wp option delete 'uv_um_disable_auto_login'
wp option delete 'uv_um_message_before_header'
wp option delete 'uv_pmpro_disable_auto_login'
wp option delete 'uv_pmpro_message_checkout_page'
wp option delete 'uv_pmpro_redirect_timout'
wp option delete 'uv_pmpro_redirect_after_checkout_page_id'
wp option delete 'user_verification_enable_block_domain'
wp option delete 'uv_settings_blocked_domain'
wp option delete 'uv_settings_allowed_domain'
wp option delete 'user_verification_enable_block_username'
wp option delete 'uv_settings_blocked_username'
wp option delete 'uv_message_invalid_key'
wp option delete 'uv_message_activation_sent'
wp option delete 'uv_message_verify_email'
wp option delete 'user_verification_registered_message'
wp option delete 'uv_message_verification_success'
wp option delete 'uv_message_captcha_error'
wp option delete 'uv_recaptcha_sitekey'
wp option delete 'uv_recaptcha_login_page'
wp option delete 'uv_recaptcha_register_page'
wp option delete 'uv_recaptcha_lostpassword_page'
wp option delete 'uv_recaptcha_comment_form'
wp option delete 'uv_recaptcha_wc_login_form'
wp option delete 'uv_recaptcha_wc_register_form'
wp option delete 'uv_recaptcha_wc_lostpassword_form'
wp option delete 'uv_email_templates_data'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_login_attempts_%' OR option_name LIKE '_site_transient_login_attempts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_uv_otp_count_%' OR option_name LIKE '_site_transient_uv_otp_count_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_activation_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_activation_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_activation_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_activation_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_activation_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_activation_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_activation_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_activation_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uv_otp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uv_otp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uv_otp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uv_otp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'magic_login_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'magic_login_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'magic_login_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'magic_login_key'"
