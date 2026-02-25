#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_smartpoints-lockers-acs-plugin_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-points' OR option_name LIKE '_site_transient_%-points'"

# Clear Cron Jobs

