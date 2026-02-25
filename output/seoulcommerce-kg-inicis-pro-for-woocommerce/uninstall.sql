-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_inicis_pro_settings', 'woocommerce_inicis_std_settings', 'seoulcommerce_kg_inicis_pro_admin_notice');
DELETE FROM wp_options WHERE option_name LIKE 'inicis_std_return_%';
DELETE FROM wp_options WHERE option_name LIKE 'inicis_std_oid_%';

