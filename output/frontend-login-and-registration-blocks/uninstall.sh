#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flr_blocks_limit_login_max_attempts'
wp option delete 'flr_blocks_limit_login_lockout_duration'
wp option delete 'flr_blocks_enable_mails'
wp option delete 'flr_blocks_enable_recaptcha'
wp option delete 'flr_blocks_enable_limit_login'
wp option delete 'flr_blocks_has_activation'
wp option delete 'flr_blocks_redirect_after_login'
wp option delete 'flr_blocks_redirect_from_wp_login_admin'
wp option delete 'flr_blocks_login_page'
wp option delete 'flr_blocks_enable_limit_reset_request_attempts'
wp option delete 'flr_blocks_lost_password_page'
wp option delete 'flr_blocks_enable_password_strength'
wp option delete 'flr_blocks_register_page'
wp option delete 'flr_blocks_activation_page'
wp option delete 'flr_blocks_user_settings_page'
wp option delete 'flr_blocks_terms_and_conditions_page'
wp option delete 'flr_blocks_privacy_policy_page'
wp option delete 'flr_blocks_has_user_dashboard'
wp option delete 'flr_blocks_register_mail_to_user'
wp option delete 'flr_blocks_register_mail_to_user_with_activation'
wp option delete 'flr_blocks_register_mail_to_admin'
wp option delete 'flr_blocks_reset_request_mail_to_user'
wp option delete 'flr_blocks_reset_password_mail_to_user'
wp option delete 'flr_blocks_enable_username_validation'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_login_attempts_%' OR option_name LIKE '_site_transient_login_attempts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_user_activation_%' OR option_name LIKE '_site_transient_user_activation_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_reset_attempts_%' OR option_name LIKE '_site_transient_reset_attempts_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flr_blocks_user_activation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flr_blocks_user_activation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flr_blocks_user_activation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flr_blocks_user_activation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flr_blocks_user_activation_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flr_blocks_user_activation_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flr_blocks_user_activation_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flr_blocks_user_activation_code'"
