-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_polako_settings', 'woocommerce_tax_based_on', 'wc-gateway-polako-admin-notice-transient');

