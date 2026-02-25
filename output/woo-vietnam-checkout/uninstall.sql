-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_custom_orders_table_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_state', 'shipping_state');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_state', 'shipping_state');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_state', 'shipping_state');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_state', 'shipping_state');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_city';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address_2';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address_2';

