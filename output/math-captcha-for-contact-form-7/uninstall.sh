#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7_math_captcha_enable'
wp option delete 'cf7_math_captcha_hide_for_logged_in'
wp option delete 'cf7_math_captcha_difficulty'
wp option delete 'cf7_math_captcha_operator'
wp option delete 'cf7_math_captcha_max_attempts'
wp option delete 'cf7_math_captcha_lockout_time'
wp option delete 'cf7_math_captcha_message'
wp option delete 'cf7_math_captcha_login_protection'
wp option delete 'cf7_math_captcha_woo_login'
wp option delete 'cf7_math_captcha_woo_register'
wp option delete 'cf7_math_captcha_tutor_login'
wp option delete 'cf7_math_captcha_tutor_register'
wp option delete 'cf7_math_captcha_title'

