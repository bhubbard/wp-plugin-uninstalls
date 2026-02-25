#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'visitorlog_run_quick_setup'
wp option delete 'visitorlog_err_tables'
wp option delete 'visitorlog_error_options'
wp option delete 'visitorlog_copy_images'
wp option delete 'visitorlog_copy_lang'
wp option delete 'visitorlog_count_options'
wp option delete 'visitorlog_count_tables'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_visitorlog_captcha_string_info_%' OR option_name LIKE '_site_transient_visitorlog_captcha_string_info_%'"

# Clear Cron Jobs
wp cron event delete 'visitorlog_cron_backups'
wp cron event delete 'visitorlog_login_captcha'
wp cron event delete 'visitorlog_check_system'
wp cron event delete 'visitorlog_activity_test'
wp cron event delete 'visitorlog_cron_backups_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login_time'"
