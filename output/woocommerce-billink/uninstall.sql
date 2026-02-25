-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_billink_settings', 'woocommerce_billink_gateway_description_version', 'woocommerce_tax_based_on');

