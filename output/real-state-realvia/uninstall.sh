#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'realvia_realvia_domena'
wp option delete 'realvia_realvia_key'

# Clear Cron Jobs
wp cron event delete 'realvia_load_data_event'

