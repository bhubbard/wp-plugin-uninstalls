-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_payflex_settings', 'payflex_settings_last_saved', 'payflex_access_token', 'payflex_access_token_date', 'payflex_configuration_response');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payflex_token', '_partpay_token', '_payflex_order_token', '_partpay_order_token', '_payflex_order_id', '_partpay_order_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payflex_token', '_partpay_token', '_payflex_order_token', '_partpay_order_token', '_payflex_order_id', '_partpay_order_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payflex_token', '_partpay_token', '_payflex_order_token', '_partpay_order_token', '_payflex_order_id', '_partpay_order_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payflex_token', '_partpay_token', '_payflex_order_token', '_partpay_order_token', '_payflex_order_id', '_partpay_order_id');

