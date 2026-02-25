#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom_css'
wp option delete 'currency'
wp option delete 'max_products'
wp option delete 'products_order'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gbspc_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gbspc_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gbspc_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gbspc_price'"
