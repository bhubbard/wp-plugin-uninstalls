-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_wc_mp_plus_gateway_bricks_settings', 'wc-mpp_options');
DELETE FROM wp_options WHERE option_name LIKE 'wc-mercadopago-plus-%';
DELETE FROM wp_options WHERE option_name LIKE '%-notices';

