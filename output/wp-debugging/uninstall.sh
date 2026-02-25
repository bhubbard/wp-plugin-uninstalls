#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_debugging'
wp option delete 'wp_debugging_restore'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpdi-%' OR option_name LIKE '_site_transient_wpdi-%'"

