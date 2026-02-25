#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpccr_settings'
wp option delete 'wpccr_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpccr_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

