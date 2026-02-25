-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcmp_payment_bitcoin_gateway_settings_name', 'WCMp_Bitcoin_Gateway_installed', 'wcmp_payment_settings_name', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('transaction_mode', '_vendor_payment_mode', '_vendor_bitoin_address', '_commission_order_id', 'dc_pv_shipped');
DELETE FROM wp_usermeta WHERE meta_key IN ('transaction_mode', '_vendor_payment_mode', '_vendor_bitoin_address', '_commission_order_id', 'dc_pv_shipped');
DELETE FROM wp_termmeta WHERE meta_key IN ('transaction_mode', '_vendor_payment_mode', '_vendor_bitoin_address', '_commission_order_id', 'dc_pv_shipped');
DELETE FROM wp_commentmeta WHERE meta_key IN ('transaction_mode', '_vendor_payment_mode', '_vendor_bitoin_address', '_commission_order_id', 'dc_pv_shipped');

