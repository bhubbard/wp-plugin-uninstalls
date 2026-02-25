#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'covid19livestats_settings'

# Clear Cron Jobs
wp cron event delete 'covid19livestats_update'

