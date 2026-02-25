#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qcaptcha_wp_login'
wp option delete 'qcaptcha_wp_register'
wp option delete 'qcaptcha_wp_lostpassword'
wp option delete 'qcaptcha_wp_comment'
wp option delete 'qcaptcha_support_cf7'
wp option delete 'qcaptcha_support_wp_forms'
wp option delete 'qcaptcha_support_ff'
wp option delete 'qcaptcha_support_mc'
wp option delete 'qcaptcha_disable_for_admins'
wp option delete 'qcaptcha_disable_for_logged_in_users'
wp option delete 'qcaptcha_support_bp'

# Clear Cron Jobs
wp cron event delete 'qcaptcha_clean_db'

