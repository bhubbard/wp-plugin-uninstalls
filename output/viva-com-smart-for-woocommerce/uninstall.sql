-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_vivacom_smart_settings', 'viva_com_smart_wc_admin_notice');

