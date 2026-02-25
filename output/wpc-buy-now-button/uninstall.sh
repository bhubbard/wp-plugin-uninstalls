#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcbn_settings'
wp option delete 'wpcbn_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcbn_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

