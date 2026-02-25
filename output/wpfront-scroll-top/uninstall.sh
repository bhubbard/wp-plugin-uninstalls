#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfront-scroll-top-options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_activated' OR option_name LIKE '_site_transient_%_activated'"

