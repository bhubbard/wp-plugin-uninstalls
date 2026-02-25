#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aru_readmorelogin_textfading_option'
wp option delete 'aru_readmorelogin_searchengines_option'
wp option delete 'aru_readmorelogin_debuglog_option'
wp option delete 'aru_readmorelogin_linking_option'
wp option delete 'aru_readmorelogin_redirect_option'
wp option delete 'aru_readmorelogin_email_verification_option'
wp option delete 'aru_readmorelogin_email_reset_password_option'
wp option delete 'aru_readmorelogin_email_register_notification_option'
wp option delete 'aru_readmorelogin_text_fade_option'

# Clear Cron Jobs
wp cron event delete 'rml_hourly_event'

