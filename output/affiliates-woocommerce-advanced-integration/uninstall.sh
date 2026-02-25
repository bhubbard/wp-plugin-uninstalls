#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_aff_2nd_tier_commission_level'
wp option delete 'wp_aff_use_fixed_commission'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aff_woo_product_specific_commission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aff_woo_product_specific_commission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aff_woo_product_specific_commission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aff_woo_product_specific_commission'"
