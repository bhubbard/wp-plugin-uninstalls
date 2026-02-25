#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pushpress_subscribers'

# Clear Cron Jobs
wp cron event delete 'pushpress_scheduled_ping'

