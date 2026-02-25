#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_totalweb_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tws_storecard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tws_storecard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tws_storecard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tws_storecard'"
