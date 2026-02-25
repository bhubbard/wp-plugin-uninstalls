-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mono_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mono_client_callback', 'mono_client_comments', 'mono_deliveryAddressInfo', 'mono_order_id', 'mono_order_state', '_monocheckout_payment_method', '_monocheckout_shipping_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('mono_client_callback', 'mono_client_comments', 'mono_deliveryAddressInfo', 'mono_order_id', 'mono_order_state', '_monocheckout_payment_method', '_monocheckout_shipping_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('mono_client_callback', 'mono_client_comments', 'mono_deliveryAddressInfo', 'mono_order_id', 'mono_order_state', '_monocheckout_payment_method', '_monocheckout_shipping_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mono_client_callback', 'mono_client_comments', 'mono_deliveryAddressInfo', 'mono_order_id', 'mono_order_state', '_monocheckout_payment_method', '_monocheckout_shipping_method');

