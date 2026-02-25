#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shift8_gravitysap_settings'
wp option delete 'shift8_gravitysap_item_codes_data'

# Clear Cron Jobs
wp cron event delete 'shift8_gravitysap_cleanup_logs'

