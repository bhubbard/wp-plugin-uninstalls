#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fwer_main_mail_settings'

# Clear Cron Jobs
wp cron event delete 'fwer_email_cron_monthly'

