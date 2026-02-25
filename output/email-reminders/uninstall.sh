#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oper_version_num'

# Clear Cron Jobs
wp cron event delete 'opera_cron_hook__rule_reset'
wp cron event delete 'opera_cron_hook__rule_run'
wp cron event delete 'opera_cron_hook__reminders_send'

