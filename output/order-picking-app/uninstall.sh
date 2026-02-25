#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'orderpickingapp_apikey'
wp option delete 'opa_subscription_id'
wp option delete 'orderpickingapp_order_status'
wp option delete 'packing_order_status_mapping'
wp option delete 'use_barcodescanner'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_postcode'
wp option delete 'orderpickingapp_location_field'
wp option delete 'orderpickingapp_ean_field'
wp option delete 'orderpickingapp_additional_barcode_field'
wp option delete 'orderpickingapp_additional_box_amount_field'
wp option delete 'pickingDate'
wp option delete 'picking_order_status'
wp option delete 'auto_completed_order'
wp option delete 'completed_order_status'
wp option delete 'packing_order_status'
wp option delete 'disable_backorders'
wp option delete 'order_prefix'
wp option delete 'enable_pickup_list'
wp option delete 'pickup_list_method'
wp option delete 'picking_batch'
wp option delete 'manual_order_assigning'
wp option delete 'disable_product_combining'
wp option delete 'woocommerce_custom_orders_table_enabled'

# Delete Transients
wp transient delete 'app_users'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opa_cost_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opa_cost_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opa_cost_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opa_cost_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opa_supplier_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opa_supplier_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opa_supplier_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opa_supplier_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_inventory_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_inventory_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_inventory_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_inventory_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opa_picking_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opa_picking_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opa_picking_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opa_picking_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
