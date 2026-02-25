#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%'"
wp option delete 'dismissed-tcg_disclaimer'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed'"
wp option delete 'active_sitewide_plugins'
wp option delete 'tcg_username'
wp option delete 'tcg_password'
wp option delete 'woocommerce_calc_taxes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_single_parcel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_single_parcel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_single_parcel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_single_parcel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_prohibit_tcg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_prohibit_tcg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_prohibit_tcg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_prohibit_tcg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_free_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_free_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_free_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_free_shipping'"
