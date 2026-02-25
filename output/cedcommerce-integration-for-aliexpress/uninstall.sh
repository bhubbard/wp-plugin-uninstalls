#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ced_aliexpress_shipping_carriers'
wp option delete 'ced_aliexpress_woo_connection_data'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shipping_carriers'"
wp option delete 'woocommerce_currency'
wp option delete 'ced_woo_aliexpress_connection_data'

# Delete Transients
wp transient delete 'ced-connector-admin-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ced_connector_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ced_connector_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ced_connector_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ced_connector_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ced_connector_ean'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ced_connector_ean'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ced_connector_ean'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ced_connector_ean'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trackingCompany'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trackingCompany'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trackingCompany'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trackingCompany'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trackingNumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trackingNumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trackingNumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trackingNumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tracking_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tracking_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tracking_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tracking_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone'"
