#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smnwcrpl_options'

# Clear Cron Jobs
wp cron event delete 'smnwcrpl_regenerate_product_lookup_table'

