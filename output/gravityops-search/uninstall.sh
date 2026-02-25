#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rating_asked'"

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'gops_error'
wp transient delete 'gops_notice'

# Clear Cron Jobs

