#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'safercheckout'

# Clear Cron Jobs
wp cron event delete 'safercheckout_lite_scheduler'

