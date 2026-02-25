#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'DCAPL_products_disable_coupons'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'DCAPL_disable_coupons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'DCAPL_disable_coupons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'DCAPL_disable_coupons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'DCAPL_disable_coupons'"
