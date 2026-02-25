#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_updater.lock'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_site_transient_%'"
wp option delete 'bad_behavior_whitelist'

# Delete Transients
wp transient delete 'update_core'

