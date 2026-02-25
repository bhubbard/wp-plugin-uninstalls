#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_frotel_shipping_settings'
wp option delete 'frotel_chose_bank_title'
wp option delete 'frotel_chose_bank_name'
wp option delete 'frotel_chose_bank_page_id'
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'packing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'packing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'packing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'packing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_frotel_factor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_frotel_factor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_frotel_factor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_frotel_factor'"
