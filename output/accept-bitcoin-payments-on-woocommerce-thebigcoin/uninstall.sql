-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thebigcoin_api_status', 'thebigcoin_api_status_show', 'woocommerce_thebigcoin_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thebigcoin_order_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('thebigcoin_order_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('thebigcoin_order_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thebigcoin_order_key');

