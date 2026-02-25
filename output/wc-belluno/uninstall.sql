-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_belluno_bankslip_settings', 'woocommerce_belluno_card_settings', 'woocommerce_belluno_settings', 'woocommerce_belluno_pix_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_belluno_transaction_id', '_belluno_method', '_belluno_billet_url', '_belluno_status', '_billing_client_cpf', 'billing_neighborhood', '_billing_number', '_shipping_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('_belluno_transaction_id', '_belluno_method', '_belluno_billet_url', '_belluno_status', '_billing_client_cpf', 'billing_neighborhood', '_billing_number', '_shipping_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('_belluno_transaction_id', '_belluno_method', '_belluno_billet_url', '_belluno_status', '_billing_client_cpf', 'billing_neighborhood', '_billing_number', '_shipping_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_belluno_transaction_id', '_belluno_method', '_belluno_billet_url', '_belluno_status', '_billing_client_cpf', 'billing_neighborhood', '_billing_number', '_shipping_number');

