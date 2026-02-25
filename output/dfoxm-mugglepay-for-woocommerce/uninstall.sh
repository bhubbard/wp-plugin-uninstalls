#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'test message'
wp option delete '$raw_response'

# Clear Cron Jobs
wp cron event delete 'mpwp_check_orders'

