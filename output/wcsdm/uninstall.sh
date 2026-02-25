#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcsdm_data_version_%'"
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_shipping_debug_mode'

