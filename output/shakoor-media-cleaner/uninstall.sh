#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shmc_automation_enabled'
wp option delete 'shmc_automation_interval'
wp option delete 'shmc_automation_start_time'
wp option delete 'shmc_automation_delay_h'
wp option delete 'shmc_automation_delay_m'
wp option delete 'shmc_automation_delay_s'

# Clear Cron Jobs
wp cron event delete 'shmc_automatic_clean_cron'

