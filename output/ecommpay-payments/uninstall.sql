-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', '_wc_ecp_admin_notices', '_wc_ecp_admin_runtime_errors');

