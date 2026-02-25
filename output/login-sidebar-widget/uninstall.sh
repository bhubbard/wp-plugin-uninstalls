#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lap_invalid_username'
wp option delete 'lap_invalid_email'
wp option delete 'lap_invalid_password'
wp option delete 'forgot_password_link_mail_subject'
wp option delete 'forgot_password_link_mail_body'
wp option delete 'new_password_mail_subject'
wp option delete 'new_password_mail_body'
wp option delete 'login_ap_rem'
wp option delete 'login_ap_forgot_pass_link'
wp option delete 'login_ap_forgot_pass_page_url'
wp option delete 'login_ap_register_link'
wp option delete 'login_ap_register_page_url'
wp option delete 'redirect_page'
wp option delete 'redirect_page_url'
wp option delete 'nonce_check_on_login'
wp option delete 'logout_redirect_page'
wp option delete 'link_in_username'
wp option delete 'custom_style_ap'
wp option delete 'captcha_on_admin_login'
wp option delete 'captcha_on_user_login'
wp option delete 'lsw_google_recaptcha_public_key'
wp option delete 'lsw_google_recaptcha_private_key'
wp option delete 'captcha_type_in_lsw'
wp option delete 'login_sidebar_widget_from_email'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aiowps_captcha_string_info_%' OR option_name LIKE '_site_transient_aiowps_captcha_string_info_%'"

