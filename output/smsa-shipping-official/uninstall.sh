#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_smsa-express-integration_settings'
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rts_smsa_awb_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rts_smsa_awb_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rts_smsa_awb_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rts_smsa_awb_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smsa_awb_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smsa_awb_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smsa_awb_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smsa_awb_no'"
