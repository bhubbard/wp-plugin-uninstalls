#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'login_nocaptcha_key'
wp option delete 'login_nocaptcha_secret'
wp option delete 'login_nocaptcha_whitelist'
wp option delete 'login_nocaptcha_ip_detection_method'
wp option delete 'login_nocaptcha_disable_css'
wp option delete 'login_nocaptcha_v3_key'
wp option delete 'login_nocaptcha_v3_secret'
wp option delete 'login_nocaptcha_notice'
wp option delete 'login_nocaptcha_working'
wp option delete 'login_nocaptcha_message_type'
wp option delete 'login_nocaptcha_error'
wp option delete 'login_nocaptcha_google_error'

