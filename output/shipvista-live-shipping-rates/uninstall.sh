#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shipvista_user_name'
wp option delete 'enabled'
wp option delete 'shipvista_user_email'
wp option delete 'shipvista_user_pass'
wp option delete 'shipvista_user_token'
wp option delete 'shipvista_user_avatar'
wp option delete 'shipvista_user_balance'
wp option delete 'shipvista_user_currency'
wp option delete 'shipvista_refresh_token'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_enable_shipping_calc'

# Delete Transients
wp transient delete 'shipvista_updated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipvista_shipment_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipvista_shipment_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipvista_shipment_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipvista_shipment_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipvista_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipvista_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipvista_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipvista_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipvista_carrier_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipvista_carrier_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipvista_carrier_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipvista_carrier_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipvista_shipment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipvista_shipment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipvista_shipment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipvista_shipment_id'"
