#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aftersalesprogr_api_token'
wp option delete 'woocommerce_version'
wp option delete 'woocommerce_Aftersalespro_ShippingMethod_settings'
wp option delete 'aftersalesprogr_trackingwidget_status'
wp option delete 'aftersalesprogr_trackingwidget_uuid'
wp option delete 'aftersalesprogr_order_data_mapper'
wp option delete 'aftersalesprogr_product_mapper'
wp option delete 'woocommerce_custom_orders_table_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acs_pp_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acs_pp_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acs_pp_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acs_pp_point'"
