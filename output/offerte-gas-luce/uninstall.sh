#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'offerte_gas_luce_data'

# Clear Cron Jobs
wp cron event delete 'offerte_gas_luce_cron_hook'

