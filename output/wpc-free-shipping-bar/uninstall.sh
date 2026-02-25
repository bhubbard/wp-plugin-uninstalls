#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcfb_settings'
wp option delete 'wpcfb_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcfb_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

