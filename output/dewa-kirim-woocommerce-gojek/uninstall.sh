#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_gojek_settings'
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_gojek_from_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_gojek_from_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_gojek_from_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_gojek_from_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_gojek_from_lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_gojek_from_lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_gojek_from_lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_gojek_from_lng'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_gojek_from_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_gojek_from_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_gojek_from_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_gojek_from_address'"
