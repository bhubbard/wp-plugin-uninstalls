-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onebip_vat_detail', 'woocommerce_onebip_settings');

