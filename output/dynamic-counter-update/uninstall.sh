#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fhdcu_counter_value'

# Clear Cron Jobs
wp cron event delete 'fhdcu_minute_increment'

