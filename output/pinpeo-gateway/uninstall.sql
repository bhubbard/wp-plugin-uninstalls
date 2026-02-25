-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_mtg_gateway_settings');
DELETE FROM wp_options WHERE option_name LIKE 'pinpeo_gateway_public_key_%';

