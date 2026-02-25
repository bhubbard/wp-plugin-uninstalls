#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcot_tips'
wp option delete 'wpcot_settings'
wp option delete 'wpcot_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcot_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

