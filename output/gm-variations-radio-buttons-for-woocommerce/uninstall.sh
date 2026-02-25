#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmrbw_enable'
wp option delete 'gmrbw_layout'
wp option delete 'gmrbw_stock_availability'
wp option delete 'gmrbw_price'
wp option delete 'gmrbw_product_title'
wp option delete 'gmrbw_showimg'
wp option delete 'gmrbw_showdesc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gmrbw_variation_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gmrbw_variation_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gmrbw_variation_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gmrbw_variation_name'"
