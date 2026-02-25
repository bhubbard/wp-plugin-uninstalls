#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linxo_woo_smart_threshold'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'linxo_woo_%'"

# Clear Cron Jobs

