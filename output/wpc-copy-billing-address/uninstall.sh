#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpccb_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpccb_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

