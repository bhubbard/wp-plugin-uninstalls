#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'email_setting_field'
wp option delete 'aet_log'
wp option delete 'aet_mail_error'

# Clear Cron Jobs
wp cron event delete 'aet_cron'

