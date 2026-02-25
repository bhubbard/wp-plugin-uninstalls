#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpsm_status'
wp option delete 'bpsm_options'

# Clear Cron Jobs
wp cron event delete 'bpsm_build_cron'
wp cron event delete 'bpsm_wp_cron'

