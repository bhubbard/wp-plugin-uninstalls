-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_woocommerce_openpix_boleto_settings', 'woocommerce_woocommerce_openpix_pix_settings', 'woocommerce_woocommerce_openpix_pix_crediary_settings', 'woocommerce_woocommerce_openpix_pix_parcelado_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

