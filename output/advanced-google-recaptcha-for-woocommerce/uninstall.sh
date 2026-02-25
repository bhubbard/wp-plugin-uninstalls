#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_recaptcha_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_recaptcha_site_key_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_recaptcha_secret_key_%'"
wp option delete 'wc_recaptcha_language'
wp option delete 'wc_recaptcha_theme'
wp option delete 'wc_recaptcha_size'
wp option delete 'wc_enable_login_recaptcha'
wp option delete 'wc_enable_register_recaptcha'
wp option delete 'wc_enable_password_reset_recaptcha'
wp option delete 'wc_enable_checkout_recaptcha'

