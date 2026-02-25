#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_checkout_phone_field'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pop_basic_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pop_basic_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pop_basic_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pop_basic_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pop_product_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pop_product_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pop_product_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pop_product_info'"
