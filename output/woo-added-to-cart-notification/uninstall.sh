#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooac_settings'
wp option delete 'wooac_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wooac_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

