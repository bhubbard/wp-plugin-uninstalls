#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lana_security_encrypt_version'
wp option delete 'lana_security_insecure_files'
wp option delete 'lana_security_login_captcha'
wp option delete 'lana_security_register_captcha'
wp option delete 'lana_security_lostpassword_captcha'
wp option delete 'lana_security_logs'
wp option delete 'lana_security_logs_cleanup_by_amount'
wp option delete 'lana_security_logs_cleanup_amount'
wp option delete 'lana_security_logs_cleanup_by_time'
wp option delete 'lana_security_logs_cleanup_time'
wp option delete 'lana_security_login_logs'
wp option delete 'lana_security_login_logs_cleanup_by_amount'
wp option delete 'lana_security_login_logs_cleanup_amount'
wp option delete 'lana_security_login_logs_cleanup_by_time'
wp option delete 'lana_security_login_logs_cleanup_time'

# Clear Cron Jobs
wp cron event delete 'lana_security_logs_cleanup_by_amount'
wp cron event delete 'lana_security_logs_cleanup_by_time'
wp cron event delete 'lana_security_login_logs_cleanup_by_amount'
wp cron event delete 'lana_security_login_logs_cleanup_by_time'

