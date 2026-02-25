-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_checkout_login_reminder', 'woocommerce_tax_total_display', 'wsccp_options');

