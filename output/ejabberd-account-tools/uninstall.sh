#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ejabat_captcha_type'
wp option delete 'ejabat_recaptcha_version'
wp option delete 'ejabat_recaptcha_site_key'
wp option delete 'ejabat_recaptcha_secret_key'
wp option delete 'ejabat_recaptcha_theme'
wp option delete 'ejabat_recaptcha_v2_size'
wp option delete 'ejabat_recaptcha_v2_badge'
wp option delete 'ejabat_recaptcha_v3_threshold'
wp option delete 'ejabat_phpcaptcha_length'
wp option delete 'ejabat_phpcaptcha_width'
wp option delete 'ejabat_phpcaptcha_height'
wp option delete 'ejabat_phpcaptcha_quality'
wp option delete 'ejabat_phpcaptcha_position'
wp option delete 'ejabat_captcha_loggedin_hide'
wp option delete 'ejabat_show_hints'
wp option delete 'ejabat_username_hint'
wp option delete 'ejabat_password_hint'
wp option delete 'ejabat_email_hint'
wp option delete 'ejabat_password_strength'
wp option delete 'ejabat_validator_pizza'
wp option delete 'ejabat_loader'
wp option delete 'ejabat_rest_url'
wp option delete 'ejabat_login'
wp option delete 'ejabat_password'
wp option delete 'ejabat_oauth_token'
wp option delete 'ejabat_debug'
wp option delete 'ejabat_registration_hosts'
wp option delete 'ejabat_allowed_username_regexp'
wp option delete 'ejabat_blocked_username_regexp'
wp option delete 'ejabat_welcome_msg'
wp option delete 'ejabat_welcome_msg_subject'
wp option delete 'ejabat_welcome_msg_body'
wp option delete 'ejabat_watcher'
wp option delete 'ejabat_watch_registration'
wp option delete 'ejabat_watch_activation'
wp option delete 'ejabat_registration_timeout'
wp option delete 'ejabat_two_step_registration'
wp option delete 'ejabat_activation_timeout'
wp option delete 'ejabat_disable_registration'
wp option delete 'ejabat_change_email_timeout'
wp option delete 'ejabat_watch_email_changes'
wp option delete 'ejabat_disable_change_email'
wp option delete 'ejabat_reset_pass_timeout'
wp option delete 'ejabat_reset_pass_limit_count'
wp option delete 'ejabat_reset_pass_limit_timeout'
wp option delete 'ejabat_watch_reset_pass'
wp option delete 'ejabat_disable_reset_pass'
wp option delete 'ejabat_delete_account_timeout'
wp option delete 'ejabat_watch_delete_account'
wp option delete 'ejabat_disable_delete_account'
wp option delete 'ejabat_webpresence_url'
wp option delete 'ejabat_disable_webpresence'
wp option delete 'ejabat_hostname'
wp option delete 'ejabat_login_hint'
wp option delete 'ejabat_rest_timeout'
wp option delete 'ejabat_rest_retry'
wp option delete 'ejabat_allowed_login_regexp'
wp option delete 'ejabat_blocked_login_regexp'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ejabat_email_%' OR option_name LIKE '_site_transient_ejabat_email_%'"
wp transient delete 'ejabat_registered_vhosts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ejabat_unreg_%' OR option_name LIKE '_site_transient_ejabat_unreg_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ejabat_pass_%' OR option_name LIKE '_site_transient_ejabat_pass_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ejabat_usercheck_com_%' OR option_name LIKE '_site_transient_ejabat_usercheck_com_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ejabat_session_%' OR option_name LIKE '_site_transient_ejabat_session_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ejabat_register_%' OR option_name LIKE '_site_transient_ejabat_register_%'"

# Clear Cron Jobs
wp cron event delete 'ejabat_cron'

