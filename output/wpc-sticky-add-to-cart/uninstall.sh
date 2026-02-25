#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcsb_settings'
wp option delete 'wpcsb_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcsb_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

