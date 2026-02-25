-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('orderpickingapp_apikey', 'opa_subscription_id', 'orderpickingapp_order_status', 'packing_order_status_mapping', 'use_barcodescanner', 'woocommerce_default_country', 'woocommerce_store_city', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_postcode', 'orderpickingapp_location_field', 'orderpickingapp_ean_field', 'orderpickingapp_additional_barcode_field', 'orderpickingapp_additional_box_amount_field', 'pickingDate', 'picking_order_status', 'auto_completed_order', 'completed_order_status', 'packing_order_status', 'disable_backorders', 'order_prefix', 'enable_pickup_list', 'pickup_list_method', 'picking_batch', 'manual_order_assigning', 'disable_product_combining', 'woocommerce_custom_orders_table_enabled', 'app_users');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('opa_cost_price', 'opa_supplier_sku', 'last_inventory_date', '_product_type', 'opa_picking_location', 'delivery_date', '_delivery_date', 'billing_company', 'billing_email', 'billing_first_name', '_yoast_wpseo_primary_product_cat', '_sku', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('opa_cost_price', 'opa_supplier_sku', 'last_inventory_date', '_product_type', 'opa_picking_location', 'delivery_date', '_delivery_date', 'billing_company', 'billing_email', 'billing_first_name', '_yoast_wpseo_primary_product_cat', '_sku', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('opa_cost_price', 'opa_supplier_sku', 'last_inventory_date', '_product_type', 'opa_picking_location', 'delivery_date', '_delivery_date', 'billing_company', 'billing_email', 'billing_first_name', '_yoast_wpseo_primary_product_cat', '_sku', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('opa_cost_price', 'opa_supplier_sku', 'last_inventory_date', '_product_type', 'opa_picking_location', 'delivery_date', '_delivery_date', 'billing_company', 'billing_email', 'billing_first_name', '_yoast_wpseo_primary_product_cat', '_sku', '_price');

