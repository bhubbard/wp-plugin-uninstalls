#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecommerce_frauds_check_trial_status'

# Clear Cron Jobs
wp cron event delete 'ecommerce_frauds_check_schedule_event'

