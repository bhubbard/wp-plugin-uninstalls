#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin-security-scanner'

# Clear Cron Jobs
wp cron event delete 'plugin_security_scanner_daily_event_hook'

