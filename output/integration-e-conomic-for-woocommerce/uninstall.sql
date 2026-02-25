-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_based_on', 'e_conomic_default_payment_terms', 'woocommerce_default_country', 'e_conomic_default_customer_group_dk', 'e_conomic_default_customer_group_eu', 'e_conomic_default_customer_group_world', 'e_conomic_payment_terms', 'e_conomic_product_groups', 'e_conomic_customer_groups', 'e_conomic_layouts', 'e_conomic_units', 'e_conomic_order_layout', 'e_conomic_order_sync_settings', 'e_conomic_auto_generate_sku', 'e_conomic_sync_master_product', 'e_conomic_sync_existing_product', 'e_conomic_default_unit', 'e_conomic_fee_product_number', 'e_conomic_shipping_sku', 'e_conomic_individual_product_group', 'e_conomic_default_product_group', 'e_conomic_skip_product_variations', 'e_conomic_do_not_sync_price', 'e_conomic_api_key', 'e_conomic_customer_settings_are_valid', 'e_conomic_product_settings_are_valid', 'e_conomic_order_general_settings_are_valid', 'e_conomic_order_sync_settings_are_valid', 'e_conomic_invoice_layout', 'e_conomic_sync_orders', 'e_conomic_order_number_prefix', 'e_conomic_needs_login', 'e_conomic_auto_sync_products', 'e_conomic_auto_sync_orders', 'e_conomic_agreement_grant_token', 'e_conomic_debug_log', 'e_conomic_credit_voucher_on_refund');
DELETE FROM wp_options WHERE option_name LIKE 'e_conomic_customer_%';
DELETE FROM wp_options WHERE option_name LIKE 'e_conomic_shipping_%';
DELETE FROM wp_options WHERE option_name LIKE 'wetail_woocommerce_economic_wwo-updated-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ean_number', '_cvr_number', '_is_synced_to_e_conomic', 'integration-e-conomic-for-woocommerce_product_group_id', '_regular_price', '_sale_price', '_price', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ean_number', '_cvr_number', '_is_synced_to_e_conomic', 'integration-e-conomic-for-woocommerce_product_group_id', '_regular_price', '_sale_price', '_price', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ean_number', '_cvr_number', '_is_synced_to_e_conomic', 'integration-e-conomic-for-woocommerce_product_group_id', '_regular_price', '_sale_price', '_price', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ean_number', '_cvr_number', '_is_synced_to_e_conomic', 'integration-e-conomic-for-woocommerce_product_group_id', '_regular_price', '_sale_price', '_price', '_sku');

