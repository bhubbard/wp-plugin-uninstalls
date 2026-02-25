#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcbf_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcbf_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

