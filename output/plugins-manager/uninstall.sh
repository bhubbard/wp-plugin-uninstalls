#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%update_changelog'"
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'update_plugins'

