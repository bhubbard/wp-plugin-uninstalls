#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stlsr_redirect_to_settings'
wp option delete 'stlsr_google_recaptcha_v2'
wp option delete 'stlsr_google_recaptcha_v3'
wp option delete 'stlsr_cf_turnstile'
wp option delete 'stlsr_login_captcha'
wp option delete 'stlsr_lostpassword_captcha'
wp option delete 'stlsr_register_captcha'
wp option delete 'stlsr_comment_captcha'
wp option delete 'stlsr_error_logs'
wp option delete 'stlsr_misc'

