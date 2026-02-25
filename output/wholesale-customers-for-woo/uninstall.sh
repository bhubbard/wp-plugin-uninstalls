#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcs_global_discount'
wp option delete 'wcs_min_cart_amount'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcs_wholesale_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcs_wholesale_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcs_wholesale_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcs_wholesale_customer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wholesale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wholesale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wholesale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wholesale_price'"
