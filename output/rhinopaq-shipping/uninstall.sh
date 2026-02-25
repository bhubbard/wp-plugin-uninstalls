#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rhinopaq-enabled'
wp option delete 'rhinopaq-shipping-product-id'
wp option delete 'rhinopaq-standard-shipping'
wp option delete 'woocommerce_placeholder_image'
wp option delete 'rhinopaq-plugin-id'
wp option delete 'rhinopaq-smart-enabled'
wp option delete 'rhinopaq-shipping-rhino-b-35x20x5-id'
wp option delete 'rhinopaq-shipping-rhino-b-25x25x10-id'
wp option delete 'rhinopaq-1-enabled'
wp option delete 'rhinopaq-4-enabled'
wp option delete 'rhinopaq-clearance'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-id'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
