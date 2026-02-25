#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'APBD_pv_%'"
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_tax_display_shop'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apbd_wmc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apbd_wmc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apbd_wmc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apbd_wmc'"
