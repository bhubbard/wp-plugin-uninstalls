#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'exchange_rates_force_data_update_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rates'"

