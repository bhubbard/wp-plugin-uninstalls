#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zaun_notified'
wp option delete 'update_plugins'
wp option delete 'update_core'

# Clear Cron Jobs
wp cron event delete 'zaun_cron_event'
wp cron event delete 'zaun_test'

