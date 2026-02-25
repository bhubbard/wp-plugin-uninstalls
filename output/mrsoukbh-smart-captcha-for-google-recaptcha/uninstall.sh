#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mrsoukbh_smart_captcha_for_google_recaptcha_settings'
wp option delete 'mrsoukbh_smart_captcha_for_google_recaptcha_file_hashes'

# Clear Cron Jobs
wp cron event delete 'mrsoukbh_smart_captcha_for_google_recaptcha_daily_check'

