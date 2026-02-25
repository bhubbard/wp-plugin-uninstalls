-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_heleket-crypto-gateway-for-woocommerce_settings', 'heleket_method_image');

