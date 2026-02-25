#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'racart_adminemail'
wp option delete 'racart_setcron_email'
wp option delete 'email_hour'
wp option delete 'racart_onehr_email_subject'
wp option delete 'racart_onehr_email_message'
wp option delete 'enable_exitintent'
wp option delete 'racart_popup_title'
wp option delete 'racart_popup_content'
wp option delete 'attachment_idpath'

# Clear Cron Jobs
wp cron event delete 'racart_your_three_minute_action_hook'

