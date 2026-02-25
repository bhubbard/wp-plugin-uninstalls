#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_auto_update' OR option_name LIKE '_site_transient_%_auto_update'"

