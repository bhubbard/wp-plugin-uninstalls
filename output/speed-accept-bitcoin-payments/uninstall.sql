-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_speed_payment_gateway_settings', 'redirect_post_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sabp_order_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('sabp_order_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('sabp_order_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sabp_order_id');

