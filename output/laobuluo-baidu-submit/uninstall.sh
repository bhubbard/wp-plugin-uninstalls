#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'laobuluo_bs_options'

# Clear Cron Jobs
wp cron event delete 'laobuluo_bs_event'

