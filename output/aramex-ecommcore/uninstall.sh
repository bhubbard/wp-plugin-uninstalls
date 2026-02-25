#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aramex_post_login_redirect_url'
wp option delete 'arxec_enable_plugin_rate_calculator'
wp option delete 'arxec_enable_rate_calculator_on_checkout'
wp option delete 'arxec_enable_rate_calculator_on_product_detail'
wp option delete 'arxec_enable_rate_calculator_on_cart'
wp option delete 'aramex_unified_jwt_token'
wp option delete 'aramex_unified_identifier'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_phone'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aramex_last_update_api'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aramex_last_update_api'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aramex_last_update_api'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aramex_last_update_api'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aramex_unified_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aramex_unified_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aramex_unified_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aramex_unified_synced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aramex_awb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aramex_awb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aramex_awb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aramex_awb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aramex_shipment_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aramex_shipment_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aramex_shipment_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aramex_shipment_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aramex_shipment_cancelled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aramex_shipment_cancelled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aramex_shipment_cancelled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aramex_shipment_cancelled'"
