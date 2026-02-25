#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcpp_rules'
wp option delete 'wpcpp_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcpp_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

