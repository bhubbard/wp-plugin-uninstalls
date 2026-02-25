#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_woocommerce_grow_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

