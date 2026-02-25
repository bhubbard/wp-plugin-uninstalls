#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtc-settings'
wp option delete 'rtc-version'

# Clear Cron Jobs
wp cron event delete 'realtimecommentscleanup'

