#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hub_ract_options'
wp option delete 'hub_ract_api'
wp option delete 'hub_ract_data'
wp option delete 'hub_ract_log'
wp option delete 'hub_ract_blink'

# Clear Cron Jobs
wp cron event delete 'ract_cron_hook'

