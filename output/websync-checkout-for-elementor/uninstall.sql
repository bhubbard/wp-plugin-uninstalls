-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('websync_checkout_version', 'websync_checkout_activated_at', 'woocommerce_enable_shipping_calc', 'woocommerce_tax_total_display');

