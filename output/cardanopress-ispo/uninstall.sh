#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_lock' OR option_name LIKE '_site_transient_%_lock'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%activating' OR option_name LIKE '_site_transient_%activating'"

# Clear Cron Jobs

