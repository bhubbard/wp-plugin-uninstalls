#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thebigcoin_api_status'
wp option delete 'thebigcoin_api_status_show'
wp option delete 'woocommerce_thebigcoin_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thebigcoin_order_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thebigcoin_order_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thebigcoin_order_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thebigcoin_order_key'"
