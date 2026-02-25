#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ship_to_destination'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api'"

