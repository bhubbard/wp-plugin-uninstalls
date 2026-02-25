-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fatt-24-API-key', 'fatt-24-woo-rating', 'fatt-24-log-enable', 'fatt-24-toggle-billing-fields', 'fatt-24-inv-object', 'fatt-24-ord-status-select', 'fatt-24-add-product-variation', 'fatt-24-inv-pdc-shipping', 'fatt-24-inv-pdc-fees', 'fatt-24-inv-create', 'fatt-24-plugin-version', 'fatt_24_assets_version', 'fatt-24-ord-enable-create', 'woocommerce_custom_orders_table_enabled', 'fatt-24-ord-zero-tot-enable', 'numerator_list_1', 'numerator_list_3', 'numerator_list_11', 'pdc_list', 'template_list_order', 'template_list_invoice', 'fatt-24-add-vat-field', 'fatt-24-abk-fiscode-req', 'woocommerce_checkout_page_id', 'fatt-24-inv-zero-tot-enable', 'woocommerce_bacs_accounts', 'fatt-24-inv-pdc', 'fatt-24-bollo-virtuale-fe', 'woocommerce_dimension_unit', 'woocommerce_weight_unit', 'fatt-24-inv-create-when-paid', 'active_sitewide_plugins', 'fatt-24-ord-enable-pdf-download', 'fatt-24-inv-enable-pdf-download', 'woocommerce_calc_taxes', 'woocommerce_ship_to_countries', 'woocommerce_version', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'fatt_24_payment_type_%';
DELETE FROM wp_options WHERE option_name LIKE 'numerator_list_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_fiscalcode', 'billing_vatcode', 'billing_recipientcode', 'billing_pecaddress', 'pdc');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_fiscalcode', 'billing_vatcode', 'billing_recipientcode', 'billing_pecaddress', 'pdc');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_fiscalcode', 'billing_vatcode', 'billing_recipientcode', 'billing_pecaddress', 'pdc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_fiscalcode', 'billing_vatcode', 'billing_recipientcode', 'billing_pecaddress', 'pdc');

