#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcvd_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcvd_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

