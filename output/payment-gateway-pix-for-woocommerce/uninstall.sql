-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_lkn_pix_for_woocommerce_settings', 'woocommerce_lkn_pix_for_woocommerce_c6_settings', 'woocommerce_lkn_cielo_pix_for_woocommerce_settings', 'woocommerce_lkn_pix_for_woocommerce_paghiper_settings', 'woocommerce_lkn_rede_pix_for_woocommerce_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

