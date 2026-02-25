#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adcontrol_settings'
wp option delete 'adcontrol_advanced_settings'

# Clear Cron Jobs
wp cron event delete 'adcontrol_cron_status'

