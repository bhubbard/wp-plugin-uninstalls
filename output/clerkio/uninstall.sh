#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'clerk_options_%'"
wp option delete 'clerk_options'
wp option delete 'plugin_options'
wp option delete 'woocommerce_currency'

# Delete Transients
wp transient delete 'clerk_api_contents'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_price_calculator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_price_calculator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_price_calculator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_price_calculator'"
