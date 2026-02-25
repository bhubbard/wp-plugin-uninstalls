#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rucurrency_chart_data'

# Clear Cron Jobs
wp cron event delete 'rucurrency_chart_cron_hook'

