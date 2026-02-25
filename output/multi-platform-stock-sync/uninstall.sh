#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mpss_cron_last_call'
wp option delete 'mpss_cronjob_settings'
wp option delete 'mpss_platforms'
wp option delete 'mpss_log_settings'

# Clear Cron Jobs
wp cron event delete 'mpss_cron_hook'

