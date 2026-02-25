#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'default_%'"

# Delete Transients
wp transient delete 'doing_cron'
wp transient delete 'scotty_debug_sizes'

