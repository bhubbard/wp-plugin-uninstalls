#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yop_poll_old_version'
wp option delete 'yop_poll_version'
wp option delete 'yop_poll_settings'
wp option delete 'yop_poll_options'
wp option delete 'yop_poll_pro'
wp option delete 'external_updates-yop-poll'
wp option delete 'yop_poll_ajax_importer'

# Clear Cron Jobs
wp cron event delete 'yop_poll_hourly_event'

